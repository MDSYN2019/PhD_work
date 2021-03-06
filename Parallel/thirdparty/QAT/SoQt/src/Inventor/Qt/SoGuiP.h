#ifndef SOGUIP_H
#define SOGUIP_H

// src/Inventor/Qt/SoGuiP.h.  Generated from SoGuiP.h.in by configure.

/**************************************************************************\
 *
 *  This file is part of the Coin 3D visualization library.
 *  Copyright (C) by Kongsberg Oil & Gas Technologies.
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU General Public License
 *  ("GPL") version 2 as published by the Free Software Foundation.
 *  See the file LICENSE.GPL at the root directory of this source
 *  distribution for additional information about the GNU GPL.
 *
 *  For using Coin with software that can not be combined with the GNU
 *  GPL, and for taking advantage of the additional benefits of our
 *  support services, please contact Kongsberg Oil & Gas Technologies
 *  about acquiring a Coin Professional Edition License.
 *
 *  See http://www.coin3d.org/ for more information.
 *
 *  Kongsberg Oil & Gas Technologies, Bygdoy Alle 5, 0257 Oslo, NORWAY.
 *  http://www.sim.no/  sales@sim.no  coin-support@coin3d.org
 *
\**************************************************************************/

#ifndef SOQT_INTERNAL
#error this is a private header file
#endif /* !SOQT_INTERNAL */

// ************************************************************************

#include <Inventor/C/threads/mutex.h>

// ************************************************************************

// This class contains private data and methods used within the
// SoQt class.

class SoGuiP
{
public:
  static void commonInit(void);
  static void commonCleanup(void);

  enum ABIError {
    LINKTIME_MISMATCH, LINKSTYLE_MISMATCH, RUNTIME_MISMATCH
  };
  static void abort(SoGuiP::ABIError error);

  static void sensorQueueChanged(void * cbdata);

  static cc_mutex * gllockmutex;
};

// ************************************************************************

#endif // ! SOGUIP_H
