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

//---------------------- tp_gen_file_gui.hh ---------------------------//
//---------------------- tp_gen_file_gui.hh ---------------------------//
//---------------------- tp_gen_file_gui.hh ---------------------------//

//               header file for the TpGenFileGui class
//                 derived from the SLSmartForm class
//                         subdirectory pick

#ifndef _TP_GEN_FILE_GUI_HH_
#define _TP_GEN_FILE_GUI_HH_

#include "sl/sl_smart_form.hh"


class TpGenFileGui : public SLSmartForm
{

//----------------------- data ------------------------------//
//----------------------- data ------------------------------//
//----------------------- data ------------------------------//

private:   // no data

//--------------------- functions ---------------------------//
//--------------------- functions ---------------------------//
//--------------------- functions ---------------------------//

public:

  TpGenFileGui(SLDelay *slparent, class TpStatfilePair *pair,
                                  const char * const filetype);

  virtual ~TpGenFileGui();

//----------------------- end of functions -----------------------//
//----------------------- end of functions -----------------------//
//----------------------- end of functions -----------------------//

} ;

#endif

//---------------------------- end -------------------------------//
//---------------------------- end -------------------------------//
//---------------------------- end -------------------------------//
