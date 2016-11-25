!!------------------------ headsum_wrap.f90 --------------------------!!
!!------------------------ headsum_wrap.f90 --------------------------!!
!!------------------------ headsum_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module headsum_wrap_module
      use headsum_module
      implicit none
      public

      type :: headsum_wrap_struct
        type(headsum_struct),pointer :: obj
      end type headsum_wrap_struct

      end module headsum_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine headsum_wrap_create (fpoint)  
      use headsum_wrap_module
      implicit none
      type(headsum_wrap_struct),intent(out)   :: fpoint
      type(headsum_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call headsum_create (obj)
      fpoint%obj => obj

      end subroutine headsum_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine headsum_wrap_delete (fpoint)   
      use headsum_wrap_module
      implicit none
      type(headsum_wrap_struct),intent(inout) :: fpoint
      type(headsum_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call headsum_delete (obj)
      fpoint%obj => obj

      end subroutine headsum_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine headsum_wrap_update (fpoint)     
      use headsum_wrap_module
      implicit none
      type(headsum_wrap_struct),intent(inout) :: fpoint
      type(headsum_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call headsum_update (obj)

      end subroutine headsum_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine headsum_wrap_wrapup (fpoint)      
      use headsum_wrap_module
      implicit none
      type(headsum_wrap_struct),intent(inout) :: fpoint
      type(headsum_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call headsum_wrapup (obj)

      end subroutine headsum_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine headsum_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use headsum_wrap_module
      implicit none
      type(headsum_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(headsum_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call headsum (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine headsum_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine headsum_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use headsum_wrap_module
      implicit none
      type(headsum_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(headsum_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call headsum (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine headsum_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
