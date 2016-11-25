//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisRmul.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define rmul_wrap_create             rmul_wrap_create_
#define rmul_wrap_delete             rmul_wrap_delete_
#define rmul_wrap_update             rmul_wrap_update_
#define rmul_wrap_wrapup             rmul_wrap_wrapup_
#define rmul_wrap_oneset             rmul_wrap_oneset_
#define rmul_wrap_twosets            rmul_wrap_twosets_
#elif NEED_CAPITALS
#define rmul_wrap_create             RMUL_WRAP_CREATE
#define rmul_wrap_delete             RMUL_WRAP_DELETE
#define rmul_wrap_update             RMUL_WRAP_UPDATE
#define rmul_wrap_wrapup             RMUL_WRAP_WRAPUP
#define rmul_wrap_oneset             RMUL_WRAP_ONESET
#define rmul_wrap_twosets            RMUL_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   rmul_wrap_create;
    CpseisBase::ModuleDestroy  rmul_wrap_delete;
    CpseisBase::ModuleUpdate   rmul_wrap_update;
    CpseisBase::ModuleWrapup   rmul_wrap_wrapup;
    CpseisBase::ModuleOneset   rmul_wrap_oneset;
    CpseisBase::ModuleTwosets  rmul_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisRmul::CpseisRmul() : CpseisBase ("RMUL",
                                       rmul_wrap_create,
                                       rmul_wrap_delete,
                                       rmul_wrap_update,
                                       rmul_wrap_wrapup,
                                       rmul_wrap_oneset,
                                       rmul_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//