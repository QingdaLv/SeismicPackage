//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisAdns.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define adns_wrap_create             adns_wrap_create_
#define adns_wrap_delete             adns_wrap_delete_
#define adns_wrap_update             adns_wrap_update_
#define adns_wrap_wrapup             adns_wrap_wrapup_
#define adns_wrap_oneset             adns_wrap_oneset_
#define adns_wrap_twosets            adns_wrap_twosets_
#elif NEED_CAPITALS
#define adns_wrap_create             ADNS_WRAP_CREATE
#define adns_wrap_delete             ADNS_WRAP_DELETE
#define adns_wrap_update             ADNS_WRAP_UPDATE
#define adns_wrap_wrapup             ADNS_WRAP_WRAPUP
#define adns_wrap_oneset             ADNS_WRAP_ONESET
#define adns_wrap_twosets            ADNS_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   adns_wrap_create;
    CpseisBase::ModuleDestroy  adns_wrap_delete;
    CpseisBase::ModuleUpdate   adns_wrap_update;
    CpseisBase::ModuleWrapup   adns_wrap_wrapup;
    CpseisBase::ModuleOneset   adns_wrap_oneset;
    CpseisBase::ModuleTwosets  adns_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisAdns::CpseisAdns() : CpseisBase ("ADNS",
                                       adns_wrap_create,
                                       adns_wrap_delete,
                                       adns_wrap_update,
                                       adns_wrap_wrapup,
                                       adns_wrap_oneset,
                                       adns_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
