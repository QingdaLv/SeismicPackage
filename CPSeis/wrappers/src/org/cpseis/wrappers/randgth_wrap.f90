!!------------------------ randgth_wrap.f90 --------------------------!!
!!------------------------ randgth_wrap.f90 --------------------------!!
!!------------------------ randgth_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module randgth_wrap_module
      use randgth_module
      implicit none
      public

      type :: randgth_wrap_struct
        type(randgth_struct),pointer :: obj
      end type randgth_wrap_struct

      end module randgth_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine randgth_wrap_create (fpoint)  
      use randgth_wrap_module
      implicit none
      type(randgth_wrap_struct),intent(out)   :: fpoint
      type(randgth_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call randgth_create (obj)
      fpoint%obj => obj

      end subroutine randgth_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine randgth_wrap_delete (fpoint)   
      use randgth_wrap_module
      implicit none
      type(randgth_wrap_struct),intent(inout) :: fpoint
      type(randgth_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call randgth_delete (obj)
      fpoint%obj => obj

      end subroutine randgth_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine randgth_wrap_update (fpoint)     
      use randgth_wrap_module
      implicit none
      type(randgth_wrap_struct),intent(inout) :: fpoint
      type(randgth_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call randgth_update (obj)

      end subroutine randgth_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine randgth_wrap_wrapup (fpoint)      
      use randgth_wrap_module
      implicit none
      type(randgth_wrap_struct),intent(inout) :: fpoint
      type(randgth_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call randgth_wrapup (obj)

      end subroutine randgth_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine randgth_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use randgth_wrap_module
      implicit none
      type(randgth_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(randgth_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call randgth (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine randgth_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine randgth_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use randgth_wrap_module
      implicit none
      type(randgth_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(randgth_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call randgth (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine randgth_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
