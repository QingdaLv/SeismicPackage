//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisSisc.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define sisc_wrap_create             sisc_wrap_create_
#define sisc_wrap_delete             sisc_wrap_delete_
#define sisc_wrap_update             sisc_wrap_update_
#define sisc_wrap_wrapup             sisc_wrap_wrapup_
#define sisc_wrap_oneset             sisc_wrap_oneset_
#define sisc_wrap_twosets            sisc_wrap_twosets_
#elif NEED_CAPITALS
#define sisc_wrap_create             SISC_WRAP_CREATE
#define sisc_wrap_delete             SISC_WRAP_DELETE
#define sisc_wrap_update             SISC_WRAP_UPDATE
#define sisc_wrap_wrapup             SISC_WRAP_WRAPUP
#define sisc_wrap_oneset             SISC_WRAP_ONESET
#define sisc_wrap_twosets            SISC_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   sisc_wrap_create;
    CpseisBase::ModuleDestroy  sisc_wrap_delete;
    CpseisBase::ModuleUpdate   sisc_wrap_update;
    CpseisBase::ModuleWrapup   sisc_wrap_wrapup;
    CpseisBase::ModuleOneset   sisc_wrap_oneset;
    CpseisBase::ModuleTwosets  sisc_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisSisc::CpseisSisc() : CpseisBase ("SISC",
                                       sisc_wrap_create,
                                       sisc_wrap_delete,
                                       sisc_wrap_update,
                                       sisc_wrap_wrapup,
                                       sisc_wrap_oneset,
                                       sisc_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
