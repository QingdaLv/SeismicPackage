//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisFfava.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define ffava_wrap_create             ffava_wrap_create_
#define ffava_wrap_delete             ffava_wrap_delete_
#define ffava_wrap_update             ffava_wrap_update_
#define ffava_wrap_wrapup             ffava_wrap_wrapup_
#define ffava_wrap_oneset             ffava_wrap_oneset_
#define ffava_wrap_twosets            ffava_wrap_twosets_
#elif NEED_CAPITALS
#define ffava_wrap_create             FFAVA_WRAP_CREATE
#define ffava_wrap_delete             FFAVA_WRAP_DELETE
#define ffava_wrap_update             FFAVA_WRAP_UPDATE
#define ffava_wrap_wrapup             FFAVA_WRAP_WRAPUP
#define ffava_wrap_oneset             FFAVA_WRAP_ONESET
#define ffava_wrap_twosets            FFAVA_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   ffava_wrap_create;
    CpseisBase::ModuleDestroy  ffava_wrap_delete;
    CpseisBase::ModuleUpdate   ffava_wrap_update;
    CpseisBase::ModuleWrapup   ffava_wrap_wrapup;
    CpseisBase::ModuleOneset   ffava_wrap_oneset;
    CpseisBase::ModuleTwosets  ffava_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisFfava::CpseisFfava() : CpseisBase ("FFAVA",
                                       ffava_wrap_create,
                                       ffava_wrap_delete,
                                       ffava_wrap_update,
                                       ffava_wrap_wrapup,
                                       ffava_wrap_oneset,
                                       ffava_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
