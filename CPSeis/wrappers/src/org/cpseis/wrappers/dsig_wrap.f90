!!------------------------ dsig_wrap.f90 --------------------------!!
!!------------------------ dsig_wrap.f90 --------------------------!!
!!------------------------ dsig_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module dsig_wrap_module
      use dsig_module
      implicit none
      public

      type :: dsig_wrap_struct
        type(dsig_struct),pointer :: obj
      end type dsig_wrap_struct

      end module dsig_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine dsig_wrap_create (fpoint)  
      use dsig_wrap_module
      implicit none
      type(dsig_wrap_struct),intent(out)   :: fpoint
      type(dsig_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call dsig_create (obj)
      fpoint%obj => obj

      end subroutine dsig_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine dsig_wrap_delete (fpoint)   
      use dsig_wrap_module
      implicit none
      type(dsig_wrap_struct),intent(inout) :: fpoint
      type(dsig_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call dsig_delete (obj)
      fpoint%obj => obj

      end subroutine dsig_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine dsig_wrap_update (fpoint)     
      use dsig_wrap_module
      implicit none
      type(dsig_wrap_struct),intent(inout) :: fpoint
      type(dsig_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call dsig_update (obj)

      end subroutine dsig_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine dsig_wrap_wrapup (fpoint)      
      use dsig_wrap_module
      implicit none
      type(dsig_wrap_struct),intent(inout) :: fpoint
      type(dsig_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call dsig_wrapup (obj)

      end subroutine dsig_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine dsig_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use dsig_wrap_module
      implicit none
      type(dsig_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(dsig_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call dsig (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine dsig_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine dsig_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use dsig_wrap_module
      implicit none
      type(dsig_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(dsig_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call dsig (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine dsig_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
