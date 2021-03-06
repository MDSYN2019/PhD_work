//---------------------------------------------------------------------------//
// !!                                                                     !! //
//                                                                           //
//  Copyright (C) 2016 Joe Boudreau                                          //
//                                                                           //
//  This file is part of the QAT Toolkit for computational science           //
//                                                                           //
//  QAT is free software: you can redistribute it and/or modify              //
//  it under the terms of the GNU Lesser General Public License as           //
//  published by the Free Software Foundation, either version 3 of           //
//  the License, or (at your option) any later version.                      //
//                                                                           //
//  QAT is distributed in the hope that it will be useful,                   //
//  but WITHOUT ANY WARRANTY; without even the implied warranty of           //
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            //
//  GNU Lesser General Public License for more details.                      //
//                                                                           //
//  You should have received a copy of the GNU Lesser General Public         //
//  License along with QAT.  If not, see <http://www.gnu.org/licenses/>.     //
//                                                                           //
//---------------------------------------------------------------------------//

#include "QatGenericFunctions/InterpolatingFunction.h"
#include "gsl/gsl_spline.h"
#include <cmath>
#include <cfloat>
#include <stdexcept>

namespace Genfun {
  FUNCTION_OBJECT_IMP_INLINE(InterpolatingFunction)
  
  class InterpolatingFunction::Clockwork {
  public:    
    inline Clockwork():
      nPointsEval(0),
      natural(false),
      periodic(false),
      xmin(0),xmax(0),ymin(0),ymax(0),
      derivPlus(0),
      derivMinus(0),
      acc(NULL),
      spline(NULL)
    {}

    inline ~Clockwork(){
      // Do nothing all is done in 
      // the parent destructor:
    }

    std::vector<double> xPoints;
    std::vector<double> yPoints;
    unsigned int        nPointsEval;
    InterpolationType   type;
    bool                natural;
    bool                periodic;    
    double              xmin, xmax, ymin, ymax;
    double              derivPlus;
    double              derivMinus;

    // Interpolators:
    gsl_interp_accel    *acc;
    gsl_spline          *spline;
  private:
    // Make this illegal:
    Clockwork(const Clockwork & right);
  };

  inline InterpolatingFunction::InterpolatingFunction(InterpolationType type)
    :Genfun::AbsFunction(),c(new Clockwork())
  {
    c->type=type;
  }
  
  inline InterpolatingFunction::InterpolatingFunction(const InterpolatingFunction & right)
    :Genfun::AbsFunction(),c(new Clockwork())
  {
    c->xPoints=right.c->xPoints;
    c->yPoints=right.c->yPoints;
    c->nPointsEval=0;
    c->type=right.c->type;
    c->acc   =NULL;
    c->spline=NULL;
  }
  
  inline InterpolatingFunction::~InterpolatingFunction() {
    if (c->spline) gsl_spline_free(c->spline);
    if (c->acc) gsl_interp_accel_free(c->acc);
    delete c;
  }
  
  inline double InterpolatingFunction::operator() (double x) const {

    // Initialize, if required:
    double y=0;
    if (c->nPointsEval!=c->xPoints.size()) {

      c->nPointsEval=c->xPoints.size();
      if (c->nPointsEval==0) throw std::runtime_error("Interpolating Function:  empty dataset");

      // Free Previous, if required:
      if (c->spline) gsl_spline_free(c->spline);
      if (c->acc) gsl_interp_accel_free(c->acc);

      c->acc = gsl_interp_accel_alloc ();

      // Obtain the limits for certain calculations:
      getExtreme(c->xmin, c->xmax, c->ymin, c->ymax);

      // Do a translation:
      const gsl_interp_type *type = NULL;
      if (c->type==LINEAR) {
	type=gsl_interp_linear;
	c->natural=true;
	c->periodic=false;
      }
      else if(c->type==POLYNOMIAL) {
	type=gsl_interp_polynomial;
	c->natural=false;
	c->periodic=false;
      }
      else if(c->type==CUBIC_SPLINE) {
	type=gsl_interp_cspline;
	c->natural=true;
      }
      else if(c->type==CUBIC_SPLINE_PERIODIC) {
	type=gsl_interp_cspline_periodic;
	c->natural=false;
	c->periodic=true;
      }
      else if(c->type==AKIMA_SPLINE) {
	type=gsl_interp_akima;
	c->natural=true;
      }
      else if(c->type==AKIMA_SPLINE_PERIODIC) {
	type=gsl_interp_akima_periodic;
	c->natural=false;
	c->periodic=true;
      }     
      
      c->spline    = gsl_spline_alloc (type, c->nPointsEval);
      
      gsl_spline_init (c->spline, &c->xPoints[0], &c->yPoints[0], c->nPointsEval);
      if (c->natural) {
	c->spline->interp->type->eval_deriv (c->spline->interp->state, c->spline->x, c->spline->y, c->spline->interp->size, c->xmin, c->acc, &c->derivMinus);
	c->spline->interp->type->eval_deriv (c->spline->interp->state, c->spline->x, c->spline->y, c->spline->interp->size, c->xmax, c->acc, &c->derivPlus);
      }	
    }


    if (c->natural && x<c->xmin) {
      return c->ymin+c->derivMinus*(x-c->xmin);
    }
    else if (c->natural && x>c->xmax) {
      return c->ymax+c->derivPlus*(x-c->xmax);
    }
    else if (c->periodic&& (x>c->xmax|| x<c->xmin) ) {
      double dx=c->xmax-c->xmin;
      double ddx=x-c->xmin;
      double dd = (ddx-floor(ddx/dx)*dx)+c->xmin;
      c->spline->interp->type->eval (c->spline->interp->state, c->spline->x, c->spline->y, c->spline->interp->size, dd, c->acc, &y);
      double dy=c->ymax-c->ymin;
      y+= floor(ddx/dx)*dy;
      return y;
    }
    else {
      c->spline->interp->type->eval (c->spline->interp->state, c->spline->x, c->spline->y, c->spline->interp->size, x, c->acc, &y);
      return y;
    }

    // We had to go deeper, beyond this piece of "user" code, in 
    // order that our functions extrapolate properly. 
    //
    // return gsl_spline_eval(c->spline, x, c->acc);
    //
  }
  
  inline void InterpolatingFunction::addPoint( double x, double y) {
    c->xPoints.push_back(x);
    c->yPoints.push_back(y);
  }

  inline void InterpolatingFunction::getRange( double & min, double & max) const {
    min=DBL_MAX, max=-DBL_MAX;
    for (unsigned int i=0;i<c->xPoints.size();i++) {
      min = std::min(min,c->xPoints[i]);
      max = std::max(max,c->xPoints[i]);
    }
  }
  inline void InterpolatingFunction::getExtreme( double & xmin, double & xmax, double &ymin, double &ymax) const {
    xmin=DBL_MAX, xmax=-DBL_MAX,ymin=0,ymax=0;
    for (unsigned int i=0;i<c->xPoints.size();i++) {
      double x=c->xPoints[i], y=c->yPoints[i];
      if (x<xmin) {
	xmin=x;
	ymin=y;
      }
      if (x>xmax) {
	xmax=x;
	ymax=y;
      }

    }
  }
} // namespace Genfun
