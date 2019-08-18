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

//---------------------Theta------------------------------------------------//
//                                                                          //
// Class Theta, also known as the heavyside step function.  The derivative  //
// is zero.  Everywhere, except at the origin.  However QatGenericFuctions  //
// cannot handle the delta-function, so in this implementation the          //
// derivative is zero, everywhere.                                          //
//--------------------------------------------------------------------------//
#ifndef Theta_h
#define Theta_h 1
#include "QatGenericFunctions/AbsFunction.h"
namespace Genfun {

  class Theta : public AbsFunction  {

    FUNCTION_OBJECT_DEF(Theta)

      public:

    // Constructor
    Theta();

    // Destructor
    virtual ~Theta();
  
    // Copy constructor
    Theta(const Theta &right);
  
    // Retreive function value
    virtual double operator ()(double argument) const;
    virtual double operator ()(const Argument & a) const {return operator() (a[0]);}

    // Derivative.  
    Derivative partial (unsigned int) const;

    // Does this function have an analytic derivative?
    virtual bool hasAnalyticDerivative() const {return true;}
  
  
  private:

    // It is illegal to assign a Theta
    const Theta & operator=(const Theta &right);

  };
} // namespace Genfun

#endif
