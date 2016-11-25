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

//-------------------------- sl_column.hh -------------------------------//
//-------------------------- sl_column.hh -------------------------------//
//-------------------------- sl_column.hh -------------------------------//

//               header file for the SLColumn class
//               derived from the SLRowColumn class
//                        subdirectory sl

#ifndef _SL_COLUMN_HH_
#define _SL_COLUMN_HH_

#include "sl/sl_row_column.hh"


class SLColumn : public SLRowColumn
{

//----------------------- data ------------------------------//
//----------------------- data ------------------------------//
//----------------------- data ------------------------------//

private:      // no data

//--------------------- functions ---------------------------//
//--------------------- functions ---------------------------//
//--------------------- functions ---------------------------//

public:

  SLColumn(  SLDelay *slparent,
             char    *name,
             HelpCtx  hctx        = NULL,
             Boolean  doframe     = FALSE,
             Boolean  make_if_can = TRUE,
             Boolean  manage_now  = TRUE  );

  SLColumn(  Widget   wparent,
             char    *name,
             HelpCtx  hctx       = NULL,
             Boolean  doframe    = FALSE,
             Boolean  make_now   = TRUE,
             Boolean  manage_now = TRUE  );

  SLColumn(  Widget   w,
             HelpCtx  hctx       = NULL,
             Boolean  make_now   = TRUE,
             Boolean  manage_now = TRUE  );

  virtual ~SLColumn();

//----------------------- end of functions -----------------------//
//----------------------- end of functions -----------------------//
//----------------------- end of functions -----------------------//

} ;

#endif

//---------------------------- end -------------------------------//
//---------------------------- end -------------------------------//
//---------------------------- end -------------------------------//
