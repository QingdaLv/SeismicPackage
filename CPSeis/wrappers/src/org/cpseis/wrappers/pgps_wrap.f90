!!------------------------ pgps_wrap.f90 --------------------------!!
!!------------------------ pgps_wrap.f90 --------------------------!!
!!------------------------ pgps_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module pgps_wrap_module
      use pgps_module
      implicit none
      public

      type :: pgps_wrap_struct
        type(pgps_struct),pointer :: obj
      end type pgps_wrap_struct

      end module pgps_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine pgps_wrap_create (fpoint)  
      use pgps_wrap_module
      implicit none
      type(pgps_wrap_struct),intent(out)   :: fpoint
      type(pgps_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call pgps_create (obj)
      fpoint%obj => obj

      end subroutine pgps_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine pgps_wrap_delete (fpoint)   
      use pgps_wrap_module
      implicit none
      type(pgps_wrap_struct),intent(inout) :: fpoint
      type(pgps_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call pgps_delete (obj)
      fpoint%obj => obj

      end subroutine pgps_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine pgps_wrap_update (fpoint)     
      use pgps_wrap_module
      implicit none
      type(pgps_wrap_struct),intent(inout) :: fpoint
      type(pgps_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call pgps_update (obj)

      end subroutine pgps_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine pgps_wrap_wrapup (fpoint)      
      use pgps_wrap_module
      implicit none
      type(pgps_wrap_struct),intent(inout) :: fpoint
      type(pgps_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call pgps_wrapup (obj)

      end subroutine pgps_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine pgps_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use pgps_wrap_module
      implicit none
      type(pgps_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(pgps_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call pgps (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine pgps_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine pgps_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use pgps_wrap_module
      implicit none
      type(pgps_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(pgps_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call pgps (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine pgps_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
