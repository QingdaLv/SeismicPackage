!!------------------------ mtfun_wrap.f90 --------------------------!!
!!------------------------ mtfun_wrap.f90 --------------------------!!
!!------------------------ mtfun_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module mtfun_wrap_module
      use mtfun_module
      implicit none
      public

      type :: mtfun_wrap_struct
        type(mtfun_struct),pointer :: obj
      end type mtfun_wrap_struct

      end module mtfun_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine mtfun_wrap_create (fpoint)  
      use mtfun_wrap_module
      implicit none
      type(mtfun_wrap_struct),intent(out)   :: fpoint
      type(mtfun_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call mtfun_create (obj)
      fpoint%obj => obj

      end subroutine mtfun_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine mtfun_wrap_delete (fpoint)   
      use mtfun_wrap_module
      implicit none
      type(mtfun_wrap_struct),intent(inout) :: fpoint
      type(mtfun_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call mtfun_delete (obj)
      fpoint%obj => obj

      end subroutine mtfun_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine mtfun_wrap_update (fpoint)     
      use mtfun_wrap_module
      implicit none
      type(mtfun_wrap_struct),intent(inout) :: fpoint
      type(mtfun_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call mtfun_update (obj)

      end subroutine mtfun_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine mtfun_wrap_wrapup (fpoint)      
      use mtfun_wrap_module
      implicit none
      type(mtfun_wrap_struct),intent(inout) :: fpoint
      type(mtfun_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call mtfun_wrapup (obj)

      end subroutine mtfun_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine mtfun_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use mtfun_wrap_module
      implicit none
      type(mtfun_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(mtfun_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call mtfun (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine mtfun_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine mtfun_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use mtfun_wrap_module
      implicit none
      type(mtfun_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(mtfun_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call mtfun (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine mtfun_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
