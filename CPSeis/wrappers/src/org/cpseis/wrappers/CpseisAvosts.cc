//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisAvosts.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define avosts_wrap_create             avosts_wrap_create_
#define avosts_wrap_delete             avosts_wrap_delete_
#define avosts_wrap_update             avosts_wrap_update_
#define avosts_wrap_wrapup             avosts_wrap_wrapup_
#define avosts_wrap_oneset             avosts_wrap_oneset_
#define avosts_wrap_twosets            avosts_wrap_twosets_
#elif NEED_CAPITALS
#define avosts_wrap_create             AVOSTS_WRAP_CREATE
#define avosts_wrap_delete             AVOSTS_WRAP_DELETE
#define avosts_wrap_update             AVOSTS_WRAP_UPDATE
#define avosts_wrap_wrapup             AVOSTS_WRAP_WRAPUP
#define avosts_wrap_oneset             AVOSTS_WRAP_ONESET
#define avosts_wrap_twosets            AVOSTS_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   avosts_wrap_create;
    CpseisBase::ModuleDestroy  avosts_wrap_delete;
    CpseisBase::ModuleUpdate   avosts_wrap_update;
    CpseisBase::ModuleWrapup   avosts_wrap_wrapup;
    CpseisBase::ModuleOneset   avosts_wrap_oneset;
    CpseisBase::ModuleTwosets  avosts_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisAvosts::CpseisAvosts() : CpseisBase ("AVOSTS",
                                       avosts_wrap_create,
                                       avosts_wrap_delete,
                                       avosts_wrap_update,
                                       avosts_wrap_wrapup,
                                       avosts_wrap_oneset,
                                       avosts_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
