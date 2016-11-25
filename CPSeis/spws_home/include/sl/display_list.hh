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
#ifndef DISPLAY_LIST_HH
#define DISPLAY_LIST_HH

#include <X11/Intrinsic.h>
#include <Xm/Xm.h>
#include "oprim/element.hh"
#include "oprim/ll_base.hh"



class DisplayElement : public Element
{
  friend class DisplayList;
  protected:
     Display *_dpy;

     DisplayElement(Display *dpy) : _dpy(dpy) {}
     ~DisplayElement() {}
     int operator ==(void * const dpy) const {return((Display*) dpy == _dpy);}
     virtual void print() const {}
};



class DisplayList : public BaseLinkedList
{
  public:
        void add(Display *dpy);
        void remove(Display *dpy) { BaseLinkedList::remove((void*) dpy); };
        DisplayElement* find(Display *dpy)
        { return( (DisplayElement *)BaseLinkedList::find((void *)dpy));}
        Display *top(void **ptr = (void **) 0);
        Display *bottom(void **ptr = (void **) 0);
        Display *next(void **ptr = (void **) 0);
        Display *prev(void **ptr = (void **) 0);
        Display *current(void **ptr = (void **) 0);

};

#endif
