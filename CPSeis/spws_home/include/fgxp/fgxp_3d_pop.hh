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
#ifndef _FGXP_3D_POP_HH
#define _FGXP_3D_POP_HH

#include "fgxp/fgxp_pop.hh"
#include "fgxp/fgxp_constants.hh"
#include "geom/fg_constants.hh"

#include <Xm/Xm.h>

class FgXp3DPop : public FgXpPop
{
	public:

		FgXp3DPop(SLDelay *contain, char *name, HelpCtx hctx,
			class FieldGeometry *fg, class FgSeisPlotList *spList,
			float size = 6.0,
			class SLApp *app = (class SLApp *) NULL);
		virtual ~FgXp3DPop();
		virtual Widget make(Widget p = (Widget) NULL);
		class FgXp3DPlot *addPlot(
			SelectMode selectMode = AllLines,
			int numIndices = 1,
			CardType xCardType = LdCardType,
			int xDataType = FG_XLOC, long xIndex = -1,
			CardType yCardType = LdCardType,
			int yDataType = FG_YLOC, long yIndex = -1,
			CardType zCardType = LdCardType,
			int zDataType = FG_ELEV, long zIndex = -1);
		virtual void scale();
		void setScale(float  xMin, float  xMax,
			float  yMin, float  yMax, float  zMin, float  zMax,
			Bool doDraw);
		void getScale(float *xMin, float *xMax,
			float *yMin, float *yMax, float *zMin, float *zMax);

	protected:

		virtual void managing();

	private:

		class V3dCage       *_cage         ;
		class FgXp3DGridPop *_fgXp3DGridPop;
		class SLPullPop *_areaModeCascade  ;

		void extraMouseButtonThreeStuff();
		virtual Boolean notifyComplex(SLDelay *obj, int ident);

		FgXp3DPop()
			: FgXpPop((SLDelay *) NULL, (char *) NULL,
				(HelpCtx) NULL, (class FieldGeometry *) NULL,
				(class FgSeisPlotList *) NULL, 0.0)
			{ /* private, no access to default constructor */ }
		FgXp3DPop(FgXp3DPop &)
			: FgXpPop((SLDelay *) NULL, (char *) NULL,
				(HelpCtx) NULL, (class FieldGeometry *) NULL,
				(class FgSeisPlotList *) NULL, 0.0)
			{ /* private, no access to copy constructor */ }
		FgXp3DPop& operator=(FgXp3DPop &p)
			{ /* private, no access to = */ return p; }
};

#endif /* _FGXP_3D_POP_HH */
