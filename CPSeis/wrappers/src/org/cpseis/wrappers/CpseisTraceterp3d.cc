//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisTraceterp3d.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define traceterp3d_wrap_create             traceterp3d_wrap_create_
#define traceterp3d_wrap_delete             traceterp3d_wrap_delete_
#define traceterp3d_wrap_update             traceterp3d_wrap_update_
#define traceterp3d_wrap_wrapup             traceterp3d_wrap_wrapup_
#define traceterp3d_wrap_oneset             traceterp3d_wrap_oneset_
#define traceterp3d_wrap_twosets            traceterp3d_wrap_twosets_
#elif NEED_CAPITALS
#define traceterp3d_wrap_create             TRACETERP3D_WRAP_CREATE
#define traceterp3d_wrap_delete             TRACETERP3D_WRAP_DELETE
#define traceterp3d_wrap_update             TRACETERP3D_WRAP_UPDATE
#define traceterp3d_wrap_wrapup             TRACETERP3D_WRAP_WRAPUP
#define traceterp3d_wrap_oneset             TRACETERP3D_WRAP_ONESET
#define traceterp3d_wrap_twosets            TRACETERP3D_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   traceterp3d_wrap_create;
    CpseisBase::ModuleDestroy  traceterp3d_wrap_delete;
    CpseisBase::ModuleUpdate   traceterp3d_wrap_update;
    CpseisBase::ModuleWrapup   traceterp3d_wrap_wrapup;
    CpseisBase::ModuleOneset   traceterp3d_wrap_oneset;
    CpseisBase::ModuleTwosets  traceterp3d_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisTraceterp3d::CpseisTraceterp3d() : CpseisBase ("TRACETERP3D",
                                       traceterp3d_wrap_create,
                                       traceterp3d_wrap_delete,
                                       traceterp3d_wrap_update,
                                       traceterp3d_wrap_wrapup,
                                       traceterp3d_wrap_oneset,
                                       traceterp3d_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
