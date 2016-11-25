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
#ifndef SLFORM_H
#define SLFORM_H
 
#include "sl/sl_delay.hh"
#include <Xm/Form.h>

static String  _formdefres[]= {
    ".shadowThickness: 0",
    NULL };


class SLForm : public SLDelay {

   private:
       Boolean _manage_now;
   public:
       SLForm(  Widget  p,
                char    *name,
                HelpCtx hctx     =NULL,
                Boolean doframe  =False,
                Boolean make_now =True,
                Boolean manage_now =True) :
                             SLDelay(p, name, hctx, doframe),
                             _manage_now(manage_now)
                             {supportUnmadeDefaults(p); 
                              if (make_now) make(p);
                             }
                               

       SLForm(  SLDelay *contain,
                char    *name,
                HelpCtx hctx        =NULL,
                Boolean doframe     =False,
                Boolean make_if_can =True,
                Boolean manage_now =True) :
                             SLDelay(contain,name, hctx, doframe),
                             _manage_now(manage_now)
                 { supportUnmadeDefaults(contain); 
                   if ((contain->made())&&(make_if_can)) 
                         make(contain->topWidget());
                 }

       SLForm(  PsuedoWidget  *pw,
                char          *name,
                HelpCtx       hctx   =NULL,
                Boolean       doframe=False,
                Boolean       manage_now =True) : 
                         SLDelay(name, hctx, doframe),
                         _manage_now(manage_now)
                        { supportUnmadeDefaults(pw); }

       SLForm(  Widget  w,
                HelpCtx hctx     =NULL,
                Boolean manage_now =True) :
                             SLDelay(XtName(w), hctx),
                             _manage_now(manage_now)
                             { supportUnmadeDefaults(XtParent(w));
                               setTopWidget(w);
                             }

 
       virtual ~SLForm() { unattach(topWidget()); }

       Widget make( Widget p =NULL) {
             if ( !made() ) {
                Widget w= SLDelay::make(p);
                if (!w) {
                  setDefaultResources( XtDisplay(wParent()), _name,_formdefres);
                  if (_manage_now) {
                      w= XtVaCreateManagedWidget(_name, xmFormWidgetClass,
                                          makeFrameIfNeeded(wParent()),  NULL);
                  }
                  else {
                      w= XtVaCreateWidget(_name, xmFormWidgetClass,
                                          makeFrameIfNeeded(wParent()),  NULL);
                  }
                  setTopWidget(w);
                } // end if w
                else if (_manage_now) XtManageChild(w);
             }
             makeChildren();
             return topWidget(); }

      virtual WidgetClass topClass() { return(xmFormWidgetClass); };
      virtual Boolean isContainer() { return True; };
};


#endif
