!!------------------------ ttmo_wrap.f90 --------------------------!!
!!------------------------ ttmo_wrap.f90 --------------------------!!
!!------------------------ ttmo_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module ttmo_wrap_module
      use ttmo_module
      implicit none
      public

      type :: ttmo_wrap_struct
        type(ttmo_struct),pointer :: obj
      end type ttmo_wrap_struct

      end module ttmo_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine ttmo_wrap_create (fpoint)  
      use ttmo_wrap_module
      implicit none
      type(ttmo_wrap_struct),intent(out)   :: fpoint
      type(ttmo_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call ttmo_create (obj)
      fpoint%obj => obj

      end subroutine ttmo_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine ttmo_wrap_delete (fpoint)   
      use ttmo_wrap_module
      implicit none
      type(ttmo_wrap_struct),intent(inout) :: fpoint
      type(ttmo_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call ttmo_delete (obj)
      fpoint%obj => obj

      end subroutine ttmo_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine ttmo_wrap_update (fpoint)     
      use ttmo_wrap_module
      implicit none
      type(ttmo_wrap_struct),intent(inout) :: fpoint
      type(ttmo_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call ttmo_update (obj)

      end subroutine ttmo_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine ttmo_wrap_wrapup (fpoint)      
      use ttmo_wrap_module
      implicit none
      type(ttmo_wrap_struct),intent(inout) :: fpoint
      type(ttmo_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call ttmo_wrapup (obj)

      end subroutine ttmo_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine ttmo_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use ttmo_wrap_module
      implicit none
      type(ttmo_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(ttmo_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call ttmo (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine ttmo_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine ttmo_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use ttmo_wrap_module
      implicit none
      type(ttmo_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(ttmo_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call ttmo (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine ttmo_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
