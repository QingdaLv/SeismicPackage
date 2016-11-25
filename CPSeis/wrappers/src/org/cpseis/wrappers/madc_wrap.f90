!!------------------------ madc_wrap.f90 --------------------------!!
!!------------------------ madc_wrap.f90 --------------------------!!
!!------------------------ madc_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module madc_wrap_module
      use madc_module
      implicit none
      public

      type :: madc_wrap_struct
        type(madc_struct),pointer :: obj
      end type madc_wrap_struct

      end module madc_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine madc_wrap_create (fpoint)  
      use madc_wrap_module
      implicit none
      type(madc_wrap_struct),intent(out)   :: fpoint
      type(madc_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call madc_create (obj)
      fpoint%obj => obj

      end subroutine madc_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine madc_wrap_delete (fpoint)   
      use madc_wrap_module
      implicit none
      type(madc_wrap_struct),intent(inout) :: fpoint
      type(madc_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call madc_delete (obj)
      fpoint%obj => obj

      end subroutine madc_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine madc_wrap_update (fpoint)     
      use madc_wrap_module
      implicit none
      type(madc_wrap_struct),intent(inout) :: fpoint
      type(madc_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call madc_update (obj)

      end subroutine madc_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine madc_wrap_wrapup (fpoint)      
      use madc_wrap_module
      implicit none
      type(madc_wrap_struct),intent(inout) :: fpoint
      type(madc_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call madc_wrapup (obj)

      end subroutine madc_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine madc_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use madc_wrap_module
      implicit none
      type(madc_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(madc_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call madc (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine madc_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine madc_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use madc_wrap_module
      implicit none
      type(madc_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(madc_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call madc (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine madc_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
