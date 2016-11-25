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
//author Michael L. Sherrill
//class that creates a zoomed image
#ifndef SEISZOOM_H
#define SEISZOOM_H

#include "sp/seis_zoomer.hh"
#include "sp/seis_inform.hh"
#include "sp/inform_list.hh"
#include "sp/seis_zoomer.hh"

class ZoomInform;
class SeisPanner;
class ZoomInformSeisZoomer;

class SeisPlotZoom : public SeisPlot {

   private:
       friend class ZoomInform;

   protected:
       Widget                       _zoom_draw;         // drawing area
       SeisPlot                    *_sp;
       ZoomInformSeisZoomer        *_dozoom;
       ZoomInform                  *_zinform;
       Boolean                      _informerDestroying;
       Boolean                      _needToDeleteZoomer;

   public:
       SeisPlotZoom (  Widget            p,
                       char              *name,
                       SeisPlot          *sp,
                       Boolean           do_scrolled = True);
       virtual ~SeisPlotZoom();
       virtual SeisPlot& operator=(SeisPlot& sp);
       SeisPanner *_spp;
       void load_zoom();
       void zoomUp();
       Widget zoomDraw() { return _zoom_draw; }
       struct PlotImage *zoomImage() { return &_image; }
       friend class SeisPanner;
       SeisPlot *retSP() { return _sp; }
       void setNeedToDeleteZoomer(Boolean t) {_needToDeleteZoomer = t;}
};
#endif

