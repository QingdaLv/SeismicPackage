!!------------------------ decon_wrap.f90 --------------------------!!
!!------------------------ decon_wrap.f90 --------------------------!!
!!------------------------ decon_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module decon_wrap_module
      use decon_module
      implicit none
      public

      type :: decon_wrap_struct
        type(decon_struct),pointer :: obj
      end type decon_wrap_struct

      end module decon_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine decon_wrap_create (fpoint)  
      use decon_wrap_module
      implicit none
      type(decon_wrap_struct),intent(out)   :: fpoint
      type(decon_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call decon_create (obj)
      fpoint%obj => obj

      end subroutine decon_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine decon_wrap_delete (fpoint)   
      use decon_wrap_module
      implicit none
      type(decon_wrap_struct),intent(inout) :: fpoint
      type(decon_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call decon_delete (obj)
      fpoint%obj => obj

      end subroutine decon_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine decon_wrap_update (fpoint)     
      use decon_wrap_module
      implicit none
      type(decon_wrap_struct),intent(inout) :: fpoint
      type(decon_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call decon_update (obj)

      end subroutine decon_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine decon_wrap_wrapup (fpoint)      
      use decon_wrap_module
      implicit none
      type(decon_wrap_struct),intent(inout) :: fpoint
      type(decon_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call decon_wrapup (obj)

      end subroutine decon_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine decon_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use decon_wrap_module
      implicit none
      type(decon_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(decon_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call decon (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine decon_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine decon_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use decon_wrap_module
      implicit none
      type(decon_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(decon_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call decon (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine decon_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
