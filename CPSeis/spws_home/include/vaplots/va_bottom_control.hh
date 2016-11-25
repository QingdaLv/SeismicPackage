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
#ifndef VA_BOTTOM_CONTROL_HH
#define VA_BOTTOM_CONTROL_HH

#include "sp/seis_control.hh"
#include "oprim/general_inform.hh"


class VaPlotControl;
class VaPanelGui;
class VaCpPop;
class MultiZoom;


class VaBottomControl : public SeisControl, public GeneralInform {

private:
  VaPlotControl *_plot_ctl;
  VaPanelGui    *_select;
  VaCpPop       *_va_cp;
  MultiZoom     *_multi_zoom;

public:
  VaBottomControl(Widget         w, 
                  char          *name, 
                  VaPlotControl *plot_ctl,
                  HelpCtx        hctx);
  Boolean notifyComplex(SLDelay *obj, int ident);
  virtual void newPlot(SeisPlot *sp);
  virtual void preAction(GeneralObject *);
  virtual void postAction(GeneralObject*);
  void multiZoomUpSeparateWindow();
  VaCpPop *getVaControlPanel();
  virtual void manageEta(Boolean manage);
};
#endif
