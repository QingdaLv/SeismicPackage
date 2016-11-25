!!------------------------ splt_wrap.f90 --------------------------!!
!!------------------------ splt_wrap.f90 --------------------------!!
!!------------------------ splt_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module splt_wrap_module
      use splt_module
      implicit none
      public

      type :: splt_wrap_struct
        type(splt_struct),pointer :: obj
      end type splt_wrap_struct

      end module splt_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine splt_wrap_create (fpoint)  
      use splt_wrap_module
      implicit none
      type(splt_wrap_struct),intent(out)   :: fpoint
      type(splt_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call splt_create (obj)
      fpoint%obj => obj

      end subroutine splt_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine splt_wrap_delete (fpoint)   
      use splt_wrap_module
      implicit none
      type(splt_wrap_struct),intent(inout) :: fpoint
      type(splt_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call splt_delete (obj)
      fpoint%obj => obj

      end subroutine splt_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine splt_wrap_update (fpoint)     
      use splt_wrap_module
      implicit none
      type(splt_wrap_struct),intent(inout) :: fpoint
      type(splt_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call splt_update (obj)

      end subroutine splt_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine splt_wrap_wrapup (fpoint)      
      use splt_wrap_module
      implicit none
      type(splt_wrap_struct),intent(inout) :: fpoint
      type(splt_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call splt_wrapup (obj)

      end subroutine splt_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine splt_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use splt_wrap_module
      implicit none
      type(splt_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(splt_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call splt (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine splt_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine splt_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use splt_wrap_module
      implicit none
      type(splt_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(splt_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call splt (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine splt_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
