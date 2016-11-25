!!------------------------ adpsub_wrap.f90 --------------------------!!
!!------------------------ adpsub_wrap.f90 --------------------------!!
!!------------------------ adpsub_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module adpsub_wrap_module
      use adpsub_module
      implicit none
      public

      type :: adpsub_wrap_struct
        type(adpsub_struct),pointer :: obj
      end type adpsub_wrap_struct

      end module adpsub_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine adpsub_wrap_create (fpoint)  
      use adpsub_wrap_module
      implicit none
      type(adpsub_wrap_struct),intent(out)   :: fpoint
      type(adpsub_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call adpsub_create (obj)
      fpoint%obj => obj

      end subroutine adpsub_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine adpsub_wrap_delete (fpoint)   
      use adpsub_wrap_module
      implicit none
      type(adpsub_wrap_struct),intent(inout) :: fpoint
      type(adpsub_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call adpsub_delete (obj)
      fpoint%obj => obj

      end subroutine adpsub_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine adpsub_wrap_update (fpoint)     
      use adpsub_wrap_module
      implicit none
      type(adpsub_wrap_struct),intent(inout) :: fpoint
      type(adpsub_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call adpsub_update (obj)

      end subroutine adpsub_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine adpsub_wrap_wrapup (fpoint)      
      use adpsub_wrap_module
      implicit none
      type(adpsub_wrap_struct),intent(inout) :: fpoint
      type(adpsub_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call adpsub_wrapup (obj)

      end subroutine adpsub_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine adpsub_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use adpsub_wrap_module
      implicit none
      type(adpsub_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(adpsub_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call adpsub (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine adpsub_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine adpsub_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use adpsub_wrap_module
      implicit none
      type(adpsub_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(adpsub_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call adpsub (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine adpsub_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
