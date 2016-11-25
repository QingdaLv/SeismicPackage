!!------------------------ tredit_wrap.f90 --------------------------!!
!!------------------------ tredit_wrap.f90 --------------------------!!
!!------------------------ tredit_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module tredit_wrap_module
      use tredit_module
      implicit none
      public

      type :: tredit_wrap_struct
        type(tredit_struct),pointer :: obj
      end type tredit_wrap_struct

      end module tredit_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine tredit_wrap_create (fpoint)  
      use tredit_wrap_module
      implicit none
      type(tredit_wrap_struct),intent(out)   :: fpoint
      type(tredit_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call tredit_create (obj)
      fpoint%obj => obj

      end subroutine tredit_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine tredit_wrap_delete (fpoint)   
      use tredit_wrap_module
      implicit none
      type(tredit_wrap_struct),intent(inout) :: fpoint
      type(tredit_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call tredit_delete (obj)
      fpoint%obj => obj

      end subroutine tredit_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine tredit_wrap_update (fpoint)     
      use tredit_wrap_module
      implicit none
      type(tredit_wrap_struct),intent(inout) :: fpoint
      type(tredit_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call tredit_update (obj)

      end subroutine tredit_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine tredit_wrap_wrapup (fpoint)      
      use tredit_wrap_module
      implicit none
      type(tredit_wrap_struct),intent(inout) :: fpoint
      type(tredit_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call tredit_wrapup (obj)

      end subroutine tredit_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine tredit_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use tredit_wrap_module
      implicit none
      type(tredit_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(tredit_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call tredit (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine tredit_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine tredit_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use tredit_wrap_module
      implicit none
      type(tredit_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(tredit_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call tredit (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine tredit_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
