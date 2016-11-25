//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisVeledit.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define veledit_wrap_create             veledit_wrap_create_
#define veledit_wrap_delete             veledit_wrap_delete_
#define veledit_wrap_update             veledit_wrap_update_
#define veledit_wrap_wrapup             veledit_wrap_wrapup_
#define veledit_wrap_oneset             veledit_wrap_oneset_
#define veledit_wrap_twosets            veledit_wrap_twosets_
#elif NEED_CAPITALS
#define veledit_wrap_create             VELEDIT_WRAP_CREATE
#define veledit_wrap_delete             VELEDIT_WRAP_DELETE
#define veledit_wrap_update             VELEDIT_WRAP_UPDATE
#define veledit_wrap_wrapup             VELEDIT_WRAP_WRAPUP
#define veledit_wrap_oneset             VELEDIT_WRAP_ONESET
#define veledit_wrap_twosets            VELEDIT_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   veledit_wrap_create;
    CpseisBase::ModuleDestroy  veledit_wrap_delete;
    CpseisBase::ModuleUpdate   veledit_wrap_update;
    CpseisBase::ModuleWrapup   veledit_wrap_wrapup;
    CpseisBase::ModuleOneset   veledit_wrap_oneset;
    CpseisBase::ModuleTwosets  veledit_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisVeledit::CpseisVeledit() : CpseisBase ("VELEDIT",
                                       veledit_wrap_create,
                                       veledit_wrap_delete,
                                       veledit_wrap_update,
                                       veledit_wrap_wrapup,
                                       veledit_wrap_oneset,
                                       veledit_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
