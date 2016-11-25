//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisGstack.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define gstack_wrap_create             gstack_wrap_create_
#define gstack_wrap_delete             gstack_wrap_delete_
#define gstack_wrap_update             gstack_wrap_update_
#define gstack_wrap_wrapup             gstack_wrap_wrapup_
#define gstack_wrap_oneset             gstack_wrap_oneset_
#define gstack_wrap_twosets            gstack_wrap_twosets_
#elif NEED_CAPITALS
#define gstack_wrap_create             GSTACK_WRAP_CREATE
#define gstack_wrap_delete             GSTACK_WRAP_DELETE
#define gstack_wrap_update             GSTACK_WRAP_UPDATE
#define gstack_wrap_wrapup             GSTACK_WRAP_WRAPUP
#define gstack_wrap_oneset             GSTACK_WRAP_ONESET
#define gstack_wrap_twosets            GSTACK_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   gstack_wrap_create;
    CpseisBase::ModuleDestroy  gstack_wrap_delete;
    CpseisBase::ModuleUpdate   gstack_wrap_update;
    CpseisBase::ModuleWrapup   gstack_wrap_wrapup;
    CpseisBase::ModuleOneset   gstack_wrap_oneset;
    CpseisBase::ModuleTwosets  gstack_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisGstack::CpseisGstack() : CpseisBase ("GSTACK",
                                       gstack_wrap_create,
                                       gstack_wrap_delete,
                                       gstack_wrap_update,
                                       gstack_wrap_wrapup,
                                       gstack_wrap_oneset,
                                       gstack_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
