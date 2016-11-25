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

//---------------------- statpop_values.cc --------------------------//
//---------------------- statpop_values.cc --------------------------//
//---------------------- statpop_values.cc --------------------------//

//         implementation file for the StatpopValues class
//                 derived from the SLDialog class
//                      subdirectory statgui


#include "statgui/statpop_values.hh"
#include "statgui/statgui_active.hh"
#include "statgui/statgui_status.hh"
#include "statgui/statgui_reference.hh"
#include "statgui/statgui_values.hh"
#include "statgui/statbox_values.hh"
#include "stat/static_dataset.hh"
#include "sl/sl_smart_form.hh"
#include "sl/slp_push.hh"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>



//--------------------- constructor ------------------------//
//--------------------- constructor ------------------------//
//--------------------- constructor ------------------------//


StatpopValues::StatpopValues(SLDelay *slparent, char *name,
                                 StaticManager    *manager,
                                 ContainerList    *clist)
         : SLDialog(slparent, name, NULL, FALSE)
{
  assert(manager);
  SLSmartForm  *work  = workArea();

  StatguiStatus    *status = new StatguiStatus    (work, manager, clist);
  StatguiActive    *act    = new StatguiActive    (work, manager);
  StatguiReference *ref    = new StatguiReference (work, manager);
  StatguiValues    *gui    = new StatguiValues    (work, manager);
  StatboxValues    *table  = new StatboxValues    (work, manager);

  gui  ->setStatboxValues     (table);
  table->setStatguiValues     (gui);

           /////       LEFT  RIGHT  TOP   BOTTOM

  work->attach(status, work, work, work  , NULL, 20, 20,  0);
  work->attach(act   , work, work, status, NULL,  0,  0, 10);
  work->attach(ref   , work, work, act   , NULL, 20, 20, 10);
  work->attach(gui   , work, work, ref   , NULL,  0,  0, 10);
  work->attach(table , work, work, gui   , work,  0,  0, 10);

  addBottomRemove();
  addBottomKeyhelp();
  addBottomHelp("STATIC_VALUES");

  update();
}



//------------------------- destructor -------------------------//
//------------------------- destructor -------------------------//
//------------------------- destructor -------------------------//


StatpopValues::~StatpopValues()
{
}



//-------------------------- end -------------------------------//
//-------------------------- end -------------------------------//
//-------------------------- end -------------------------------//
