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

//-------------------------- vf_horizonio.cc ---------------------------//
//-------------------------- vf_horizonio.cc ---------------------------//
//-------------------------- vf_horizonio.cc ---------------------------//

//           implementation file for the VfHorizonio class
//                derived from the FloatioWrapper class
//                          subdirectory vf


#include "vf/vf_horizonio.hh"
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>


static const int   nfields  = 5;
static const char *fields[] =
                       { "xcoord", "ycoord", "pick", "shotpoint", "line" };

static const int   nrequired  = 3;
static const char *required[] = { "xcoord", "ycoord", "pick" };


//------------------ constructor and destructor -----------------------//
//------------------ constructor and destructor -----------------------//
//------------------ constructor and destructor -----------------------//


VfHorizonio::VfHorizonio(int io)
           : FloatioWrapper
                    (io, "horizon", fields, nfields, required, nrequired),
             PjarFileSupport
                    (io, "horizon", fields, nfields, required, nrequired)
{
}


VfHorizonio::~VfHorizonio()
{
}



//---------------------------------- end ----------------------------------//
//---------------------------------- end ----------------------------------//
//---------------------------------- end ----------------------------------//

