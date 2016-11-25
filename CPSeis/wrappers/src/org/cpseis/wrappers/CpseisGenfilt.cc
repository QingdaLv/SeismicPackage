//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisGenfilt.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define genfilt_wrap_create             genfilt_wrap_create_
#define genfilt_wrap_delete             genfilt_wrap_delete_
#define genfilt_wrap_update             genfilt_wrap_update_
#define genfilt_wrap_wrapup             genfilt_wrap_wrapup_
#define genfilt_wrap_oneset             genfilt_wrap_oneset_
#define genfilt_wrap_twosets            genfilt_wrap_twosets_
#elif NEED_CAPITALS
#define genfilt_wrap_create             GENFILT_WRAP_CREATE
#define genfilt_wrap_delete             GENFILT_WRAP_DELETE
#define genfilt_wrap_update             GENFILT_WRAP_UPDATE
#define genfilt_wrap_wrapup             GENFILT_WRAP_WRAPUP
#define genfilt_wrap_oneset             GENFILT_WRAP_ONESET
#define genfilt_wrap_twosets            GENFILT_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   genfilt_wrap_create;
    CpseisBase::ModuleDestroy  genfilt_wrap_delete;
    CpseisBase::ModuleUpdate   genfilt_wrap_update;
    CpseisBase::ModuleWrapup   genfilt_wrap_wrapup;
    CpseisBase::ModuleOneset   genfilt_wrap_oneset;
    CpseisBase::ModuleTwosets  genfilt_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisGenfilt::CpseisGenfilt() : CpseisBase ("GENFILT",
                                       genfilt_wrap_create,
                                       genfilt_wrap_delete,
                                       genfilt_wrap_update,
                                       genfilt_wrap_wrapup,
                                       genfilt_wrap_oneset,
                                       genfilt_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
