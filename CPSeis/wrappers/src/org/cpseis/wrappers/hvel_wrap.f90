!!------------------------ hvel_wrap.f90 --------------------------!!
!!------------------------ hvel_wrap.f90 --------------------------!!
!!------------------------ hvel_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module hvel_wrap_module
      use hvel_module
      implicit none
      public

      type :: hvel_wrap_struct
        type(hvel_struct),pointer :: obj
      end type hvel_wrap_struct

      end module hvel_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine hvel_wrap_create (fpoint)  
      use hvel_wrap_module
      implicit none
      type(hvel_wrap_struct),intent(out)   :: fpoint
      type(hvel_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call hvel_create (obj)
      fpoint%obj => obj

      end subroutine hvel_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine hvel_wrap_delete (fpoint)   
      use hvel_wrap_module
      implicit none
      type(hvel_wrap_struct),intent(inout) :: fpoint
      type(hvel_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call hvel_delete (obj)
      fpoint%obj => obj

      end subroutine hvel_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine hvel_wrap_update (fpoint)     
      use hvel_wrap_module
      implicit none
      type(hvel_wrap_struct),intent(inout) :: fpoint
      type(hvel_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call hvel_update (obj)

      end subroutine hvel_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine hvel_wrap_wrapup (fpoint)      
      use hvel_wrap_module
      implicit none
      type(hvel_wrap_struct),intent(inout) :: fpoint
      type(hvel_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call hvel_wrapup (obj)

      end subroutine hvel_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine hvel_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use hvel_wrap_module
      implicit none
      type(hvel_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(hvel_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call hvel (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine hvel_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine hvel_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use hvel_wrap_module
      implicit none
      type(hvel_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(hvel_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call hvel (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine hvel_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
