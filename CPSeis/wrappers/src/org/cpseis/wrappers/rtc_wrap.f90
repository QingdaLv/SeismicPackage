!!------------------------ rtc_wrap.f90 --------------------------!!
!!------------------------ rtc_wrap.f90 --------------------------!!
!!------------------------ rtc_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module rtc_wrap_module
      use rtc_module
      implicit none
      public

      type :: rtc_wrap_struct
        type(rtc_struct),pointer :: obj
      end type rtc_wrap_struct

      end module rtc_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine rtc_wrap_create (fpoint)  
      use rtc_wrap_module
      implicit none
      type(rtc_wrap_struct),intent(out)   :: fpoint
      type(rtc_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call rtc_create (obj)
      fpoint%obj => obj

      end subroutine rtc_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine rtc_wrap_delete (fpoint)   
      use rtc_wrap_module
      implicit none
      type(rtc_wrap_struct),intent(inout) :: fpoint
      type(rtc_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call rtc_delete (obj)
      fpoint%obj => obj

      end subroutine rtc_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine rtc_wrap_update (fpoint)     
      use rtc_wrap_module
      implicit none
      type(rtc_wrap_struct),intent(inout) :: fpoint
      type(rtc_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call rtc_update (obj)

      end subroutine rtc_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine rtc_wrap_wrapup (fpoint)      
      use rtc_wrap_module
      implicit none
      type(rtc_wrap_struct),intent(inout) :: fpoint
      type(rtc_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call rtc_wrapup (obj)

      end subroutine rtc_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine rtc_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use rtc_wrap_module
      implicit none
      type(rtc_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(rtc_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call rtc (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine rtc_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine rtc_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use rtc_wrap_module
      implicit none
      type(rtc_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(rtc_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call rtc (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine rtc_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
