!<CPS_v1 type="AUXILIARY_FILE"/>
!!--------------------- ranline_superwrap.f90 ----------------------!!
!!--------------------- ranline_superwrap.f90 ----------------------!!
!!--------------------- ranline_superwrap.f90 ----------------------!!


!<license>
!-------------------------------------------------------------------------------
! Copyright (c) 2007 ConocoPhillips Company
!
! Permission is hereby granted, free of charge, to any person obtaining a copy
! of this software and associated documentation files (the "Software"), to deal
! in the Software without restriction, including without limitation the rights
! to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
! copies of the Software, and to permit persons to whom the Software is
! furnished to do so, subject to the following conditions:
!
! The above copyright notice and this permission notice shall be included in all
! copies or substantial portions of the Software.
!
! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
! IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
! SOFTWARE.
!-------------------------------------------------------------------------------
!</license>


!<brief_doc>
!-------------------------------------------------------------------------------
!                           C P S   P R O C E S S     
!
! Name       : ranline_superwrap
! Category   : cfe
! Written    : 2003-11-03   by: Tom Stoeckley
! Revised    : 2006-06-27   by: Tom Stoeckley
! Maturity   : beta
! Purpose    : Fortran wrapper around CPS process (for superproc).
! Portability: No known limitations.
!
! Automatically generated by program SPS_BUILD_SUPERPROC.
! Automatically generated using FPROC_SUPERWRAP_TEMPLATE.
! Dates and revision history refer to revisions of FPROC_SUPERWRAP_TEMPLATE.
!
!-------------------------------------------------------------------------------
!</brief_doc>


!<history_doc>
!-------------------------------------------------------------------------------
!                     AUXILIARY FILE REVISION HISTORY 
!
!     Date        Author     Description
!     ----        ------     -----------
!  3. 2006-06-27  Stoeckley  Add nullify statement for intel compiler.
!  2. 2003-11-04  Stoeckley  Add MATURITY key.
!  1. 2003-11-03  Stoeckley  Initial version of FPROC_SUPERWRAP_TEMPLATE.
!
!-------------------------------------------------------------------------------
!</history_doc>


!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!


      module ranline_superwrap_module
      use ranline_module
      use string_module
      implicit none
      public

      character(len=100),public,save :: ranline_superwrap_ident = &
'$Id: fproc_superwrap_template,v 1.3 2006/06/23 18:41:47 Stoeckley prod sps $'

      type :: ranline_superwrap_struct
        type(ranline_struct),pointer :: obj
      end type ranline_superwrap_struct

      end module ranline_superwrap_module


!!------------------------------ rcs --------------------------------------!!
!!------------------------------ rcs --------------------------------------!!
!!------------------------------ rcs --------------------------------------!!


      subroutine ranline_superwrap_rcs (ident)           ! called from fortran
      use ranline_superwrap_module
      implicit none
      character(len=*),intent(out) :: ident           ! argument

      ident = ranline_ident

      end subroutine ranline_superwrap_rcs


!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!


      subroutine ranline_superwrap_create (fpoint)  
      use ranline_superwrap_module
      implicit none
      type(ranline_superwrap_struct),intent(out)   :: fpoint
      type(ranline_struct)          ,pointer       :: obj           ! local

      nullify (obj)                 ! for intel compiler.
      call ranline_create (obj)
      fpoint%obj => obj

      end subroutine ranline_superwrap_create


!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!


      subroutine ranline_superwrap_delete (fpoint)   
      use ranline_superwrap_module
      implicit none
      type(ranline_superwrap_struct),intent(inout) :: fpoint
      type(ranline_struct)          ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call ranline_delete (obj)
      fpoint%obj => obj

      end subroutine ranline_superwrap_delete


!!------------------------------- init ------------------------------------!!
!!------------------------------- init ------------------------------------!!
!!------------------------------- init ------------------------------------!!


      subroutine ranline_superwrap_init (fpoint)      
      use ranline_superwrap_module
      implicit none
      type(ranline_superwrap_struct),intent(inout) :: fpoint
      type(ranline_struct)          ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call ranline_initialize (obj)

      end subroutine ranline_superwrap_init


!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!


      subroutine ranline_superwrap_update (fpoint)     
      use ranline_superwrap_module
      implicit none
      type(ranline_superwrap_struct),intent(inout) :: fpoint
      type(ranline_struct)          ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call ranline_update (obj)

      end subroutine ranline_superwrap_update


!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!


      subroutine ranline_superwrap_wrapup (fpoint)      
      use ranline_superwrap_module
      implicit none
      type(ranline_superwrap_struct),intent(inout) :: fpoint
      type(ranline_struct)          ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call ranline_wrapup (obj)

      end subroutine ranline_superwrap_wrapup


!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!


      subroutine ranline_superwrap_oneset (fpoint,ntr,  &
                                        hd,tr,lenhd,lentr,num)
      use ranline_superwrap_module
      implicit none
      type(ranline_superwrap_struct),intent(inout) :: fpoint
      integer                    ,intent(in)    :: lenhd,lentr,num  ! argument
      integer                    ,intent(inout) :: ntr              ! argument
      double precision           ,intent(inout) :: hd(lenhd,num)    ! argument
      real                       ,intent(inout) :: tr(lentr,num)    ! argument
      type(ranline_struct)          ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
   call ranline (obj,ntr,hd,tr)                ! might need commenting out.

      end subroutine ranline_superwrap_oneset


!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!


      subroutine ranline_superwrap_twosets (fpoint,ntr,                 &
                                         hd1,tr1,lenhd1,lentr1,num1, &
                                         hd2,tr2,lenhd2,lentr2,num2)
      use ranline_superwrap_module
      implicit none
      type(ranline_superwrap_struct),intent(inout) :: fpoint
      integer                    ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer                    ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer                    ,intent(inout) :: ntr                ! argument
      double precision           ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                       ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision           ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                       ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(ranline_struct)          ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!   call ranline (obj,ntr,hd1,tr1,hd2,tr2)      ! might need commenting out.

      end subroutine ranline_superwrap_twosets


!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!

