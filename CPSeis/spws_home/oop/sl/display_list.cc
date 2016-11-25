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
#include <X11/Intrinsic.h>
#include <Xm/Xm.h>
#include "sl/display_list.hh"


void DisplayList::add(Display *dpy)
{
   DisplayElement *theElement = new DisplayElement(dpy);
   BaseLinkedList::add((Element *) theElement);
}

Display *DisplayList::top(void **ptr) 
{ 
   DisplayElement* q= (DisplayElement*)BaseLinkedList::top(ptr);
   return (q ? q->_dpy : NULL);
}

Display *DisplayList::bottom(void **ptr)
{
   DisplayElement* q= (DisplayElement*)BaseLinkedList::bottom(ptr);
   return (q ? q->_dpy : NULL);
}


Display *DisplayList::next(void **ptr)
{
   DisplayElement* q= (DisplayElement*)BaseLinkedList::next(ptr);
   return (q ? q->_dpy : NULL);
}

Display *DisplayList::prev(void **ptr)
{
   DisplayElement* q= (DisplayElement*)BaseLinkedList::prev(ptr);
   return (q ? q->_dpy : NULL);
}

Display *DisplayList::current(void **ptr)
{
   DisplayElement* q= (DisplayElement*)BaseLinkedList::current(ptr);
   return (q ? q->_dpy : NULL);
}
