!!------------------------ apin_wrap.f90 --------------------------!!
!!------------------------ apin_wrap.f90 --------------------------!!
!!------------------------ apin_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module apin_wrap_module
      use apin_module
      implicit none
      public

      type :: apin_wrap_struct
        type(apin_struct),pointer :: obj
      end type apin_wrap_struct

      end module apin_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine apin_wrap_create (fpoint)  
      use apin_wrap_module
      implicit none
      type(apin_wrap_struct),intent(out)   :: fpoint
      type(apin_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call apin_create (obj)
      fpoint%obj => obj

      end subroutine apin_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine apin_wrap_delete (fpoint)   
      use apin_wrap_module
      implicit none
      type(apin_wrap_struct),intent(inout) :: fpoint
      type(apin_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call apin_delete (obj)
      fpoint%obj => obj

      end subroutine apin_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine apin_wrap_update (fpoint)     
      use apin_wrap_module
      implicit none
      type(apin_wrap_struct),intent(inout) :: fpoint
      type(apin_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call apin_update (obj)

      end subroutine apin_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine apin_wrap_wrapup (fpoint)      
      use apin_wrap_module
      implicit none
      type(apin_wrap_struct),intent(inout) :: fpoint
      type(apin_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call apin_wrapup (obj)

      end subroutine apin_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine apin_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use apin_wrap_module
      implicit none
      type(apin_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(apin_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call apin (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine apin_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine apin_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use apin_wrap_module
      implicit none
      type(apin_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(apin_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call apin (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine apin_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
