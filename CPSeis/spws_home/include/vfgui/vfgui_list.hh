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

//---------------------- vfgui_list.hh ---------------------------//
//---------------------- vfgui_list.hh ---------------------------//
//---------------------- vfgui_list.hh ---------------------------//

//               header file for the VfguiList class
//               derived from the SLSmartForm class
//                       subdirectory vfgui



#ifndef _VFGUI_LIST_HH_
#define _VFGUI_LIST_HH_

#include "sl/sl_smart_form.hh"


class VfguiList : public SLSmartForm
{

//----------------------- data ------------------------------//
//----------------------- data ------------------------------//
//----------------------- data ------------------------------//

private:

  class VfManager     *_manager;
  class VfguiRegulate *_regulate;

//--------------------- functions ---------------------------//
//--------------------- functions ---------------------------//
//--------------------- functions ---------------------------//

public:

           VfguiList (SLDelay *slparent, char *name, class VfManager *manager);
  virtual ~VfguiList ();

  VfManager *manager        ()  const     { return _manager; }

private:

  void         oneEditableDataset();
  void         severalEditableDatasets();
  SLSmartForm *summaryForm(SLDelay *parent);

//----------------------- end of functions -----------------------//
//----------------------- end of functions -----------------------//
//----------------------- end of functions -----------------------//

} ;

#endif

//---------------------------- end -------------------------------//
//---------------------------- end -------------------------------//
//---------------------------- end -------------------------------//
