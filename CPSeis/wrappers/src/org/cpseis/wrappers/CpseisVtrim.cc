//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisVtrim.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define vtrim_wrap_create             vtrim_wrap_create_
#define vtrim_wrap_delete             vtrim_wrap_delete_
#define vtrim_wrap_update             vtrim_wrap_update_
#define vtrim_wrap_wrapup             vtrim_wrap_wrapup_
#define vtrim_wrap_oneset             vtrim_wrap_oneset_
#define vtrim_wrap_twosets            vtrim_wrap_twosets_
#elif NEED_CAPITALS
#define vtrim_wrap_create             VTRIM_WRAP_CREATE
#define vtrim_wrap_delete             VTRIM_WRAP_DELETE
#define vtrim_wrap_update             VTRIM_WRAP_UPDATE
#define vtrim_wrap_wrapup             VTRIM_WRAP_WRAPUP
#define vtrim_wrap_oneset             VTRIM_WRAP_ONESET
#define vtrim_wrap_twosets            VTRIM_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   vtrim_wrap_create;
    CpseisBase::ModuleDestroy  vtrim_wrap_delete;
    CpseisBase::ModuleUpdate   vtrim_wrap_update;
    CpseisBase::ModuleWrapup   vtrim_wrap_wrapup;
    CpseisBase::ModuleOneset   vtrim_wrap_oneset;
    CpseisBase::ModuleTwosets  vtrim_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisVtrim::CpseisVtrim() : CpseisBase ("VTRIM",
                                       vtrim_wrap_create,
                                       vtrim_wrap_delete,
                                       vtrim_wrap_update,
                                       vtrim_wrap_wrapup,
                                       vtrim_wrap_oneset,
                                       vtrim_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
