!!------------------------ fgdrev_wrap.f90 --------------------------!!
!!------------------------ fgdrev_wrap.f90 --------------------------!!
!!------------------------ fgdrev_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module fgdrev_wrap_module
      use fgdrev_module
      implicit none
      public

      type :: fgdrev_wrap_struct
        type(fgdrev_struct),pointer :: obj
      end type fgdrev_wrap_struct

      end module fgdrev_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine fgdrev_wrap_create (fpoint)  
      use fgdrev_wrap_module
      implicit none
      type(fgdrev_wrap_struct),intent(out)   :: fpoint
      type(fgdrev_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call fgdrev_create (obj)
      fpoint%obj => obj

      end subroutine fgdrev_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine fgdrev_wrap_delete (fpoint)   
      use fgdrev_wrap_module
      implicit none
      type(fgdrev_wrap_struct),intent(inout) :: fpoint
      type(fgdrev_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call fgdrev_delete (obj)
      fpoint%obj => obj

      end subroutine fgdrev_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine fgdrev_wrap_update (fpoint)     
      use fgdrev_wrap_module
      implicit none
      type(fgdrev_wrap_struct),intent(inout) :: fpoint
      type(fgdrev_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call fgdrev_update (obj)

      end subroutine fgdrev_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine fgdrev_wrap_wrapup (fpoint)      
      use fgdrev_wrap_module
      implicit none
      type(fgdrev_wrap_struct),intent(inout) :: fpoint
      type(fgdrev_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call fgdrev_wrapup (obj)

      end subroutine fgdrev_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine fgdrev_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use fgdrev_wrap_module
      implicit none
      type(fgdrev_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(fgdrev_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call fgdrev (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine fgdrev_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine fgdrev_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use fgdrev_wrap_module
      implicit none
      type(fgdrev_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(fgdrev_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call fgdrev (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine fgdrev_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
