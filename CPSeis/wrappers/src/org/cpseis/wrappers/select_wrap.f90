!!------------------------ select_wrap.f90 --------------------------!!
!!------------------------ select_wrap.f90 --------------------------!!
!!------------------------ select_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module select_wrap_module
      use select_module
      implicit none
      public

      type :: select_wrap_struct
        type(select_struct),pointer :: obj
      end type select_wrap_struct

      end module select_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine select_wrap_create (fpoint)  
      use select_wrap_module
      implicit none
      type(select_wrap_struct),intent(out)   :: fpoint
      type(select_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call select_create (obj)
      fpoint%obj => obj

      end subroutine select_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine select_wrap_delete (fpoint)   
      use select_wrap_module
      implicit none
      type(select_wrap_struct),intent(inout) :: fpoint
      type(select_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call select_delete (obj)
      fpoint%obj => obj

      end subroutine select_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine select_wrap_update (fpoint)     
      use select_wrap_module
      implicit none
      type(select_wrap_struct),intent(inout) :: fpoint
      type(select_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call select_update (obj)

      end subroutine select_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine select_wrap_wrapup (fpoint)      
      use select_wrap_module
      implicit none
      type(select_wrap_struct),intent(inout) :: fpoint
      type(select_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call select_wrapup (obj)

      end subroutine select_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine select_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use select_wrap_module
      implicit none
      type(select_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(select_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call select (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine select_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine select_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use select_wrap_module
      implicit none
      type(select_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(select_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call select (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine select_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
