/*<license>
 -------------------------------------------------------------------------------
  Copyright (c) 2007 ConocoPhillips Company
 
  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:
 
  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.
 
  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
 -------------------------------------------------------------------------------
 </license>*/


//------------------------- dfp_toggle.hh -------------------------------//
//------------------------- dfp_toggle.hh -------------------------------//
//------------------------- dfp_toggle.hh -------------------------------//

//              header file for the DFpToggle class
//                derived from the DFpBase class
//                      subdirectory sl

#ifndef _DF_TOGGLE_HH_
#define _DF_TOGGLE_HH_

#include "sl/dfp_base.hh"


class DFpToggle : public DFpBase
{

//---------------------- data -------------------------//
//---------------------- data -------------------------//
//---------------------- data -------------------------//

//// no data

//--------------------- functions -------------------------//
//--------------------- functions -------------------------//
//--------------------- functions -------------------------//

public:

  DFpToggle (SLDatabox *databox, char *name, long ident,
                          long irow = 0, long icol = 0);

  virtual ~DFpToggle (void);
  
//--------------------- end of functions ------------------------//
//--------------------- end of functions ------------------------//
//--------------------- end of functions ------------------------//

} ;

#endif

//---------------------------- end --------------------------------------//
//---------------------------- end --------------------------------------//
//---------------------------- end --------------------------------------//
