!!------------------------ avonrm_wrap.f90 --------------------------!!
!!------------------------ avonrm_wrap.f90 --------------------------!!
!!------------------------ avonrm_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module avonrm_wrap_module
      use avonrm_module
      implicit none
      public

      type :: avonrm_wrap_struct
        type(avonrm_struct),pointer :: obj
      end type avonrm_wrap_struct

      end module avonrm_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine avonrm_wrap_create (fpoint)  
      use avonrm_wrap_module
      implicit none
      type(avonrm_wrap_struct),intent(out)   :: fpoint
      type(avonrm_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call avonrm_create (obj)
      fpoint%obj => obj

      end subroutine avonrm_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine avonrm_wrap_delete (fpoint)   
      use avonrm_wrap_module
      implicit none
      type(avonrm_wrap_struct),intent(inout) :: fpoint
      type(avonrm_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call avonrm_delete (obj)
      fpoint%obj => obj

      end subroutine avonrm_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine avonrm_wrap_update (fpoint)     
      use avonrm_wrap_module
      implicit none
      type(avonrm_wrap_struct),intent(inout) :: fpoint
      type(avonrm_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call avonrm_update (obj)

      end subroutine avonrm_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine avonrm_wrap_wrapup (fpoint)      
      use avonrm_wrap_module
      implicit none
      type(avonrm_wrap_struct),intent(inout) :: fpoint
      type(avonrm_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call avonrm_wrapup (obj)

      end subroutine avonrm_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine avonrm_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use avonrm_wrap_module
      implicit none
      type(avonrm_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(avonrm_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call avonrm (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine avonrm_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine avonrm_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use avonrm_wrap_module
      implicit none
      type(avonrm_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(avonrm_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call avonrm (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine avonrm_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
