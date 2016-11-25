//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisCfds.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define cfds_wrap_create             cfds_wrap_create_
#define cfds_wrap_delete             cfds_wrap_delete_
#define cfds_wrap_update             cfds_wrap_update_
#define cfds_wrap_wrapup             cfds_wrap_wrapup_
#define cfds_wrap_oneset             cfds_wrap_oneset_
#define cfds_wrap_twosets            cfds_wrap_twosets_
#elif NEED_CAPITALS
#define cfds_wrap_create             CFDS_WRAP_CREATE
#define cfds_wrap_delete             CFDS_WRAP_DELETE
#define cfds_wrap_update             CFDS_WRAP_UPDATE
#define cfds_wrap_wrapup             CFDS_WRAP_WRAPUP
#define cfds_wrap_oneset             CFDS_WRAP_ONESET
#define cfds_wrap_twosets            CFDS_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   cfds_wrap_create;
    CpseisBase::ModuleDestroy  cfds_wrap_delete;
    CpseisBase::ModuleUpdate   cfds_wrap_update;
    CpseisBase::ModuleWrapup   cfds_wrap_wrapup;
    CpseisBase::ModuleOneset   cfds_wrap_oneset;
    CpseisBase::ModuleTwosets  cfds_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisCfds::CpseisCfds() : CpseisBase ("CFDS",
                                       cfds_wrap_create,
                                       cfds_wrap_delete,
                                       cfds_wrap_update,
                                       cfds_wrap_wrapup,
                                       cfds_wrap_oneset,
                                       cfds_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
