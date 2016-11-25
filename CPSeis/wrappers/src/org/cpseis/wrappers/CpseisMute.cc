//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisMute.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define mute_wrap_create             mute_wrap_create_
#define mute_wrap_delete             mute_wrap_delete_
#define mute_wrap_update             mute_wrap_update_
#define mute_wrap_wrapup             mute_wrap_wrapup_
#define mute_wrap_oneset             mute_wrap_oneset_
#define mute_wrap_twosets            mute_wrap_twosets_
#elif NEED_CAPITALS
#define mute_wrap_create             MUTE_WRAP_CREATE
#define mute_wrap_delete             MUTE_WRAP_DELETE
#define mute_wrap_update             MUTE_WRAP_UPDATE
#define mute_wrap_wrapup             MUTE_WRAP_WRAPUP
#define mute_wrap_oneset             MUTE_WRAP_ONESET
#define mute_wrap_twosets            MUTE_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   mute_wrap_create;
    CpseisBase::ModuleDestroy  mute_wrap_delete;
    CpseisBase::ModuleUpdate   mute_wrap_update;
    CpseisBase::ModuleWrapup   mute_wrap_wrapup;
    CpseisBase::ModuleOneset   mute_wrap_oneset;
    CpseisBase::ModuleTwosets  mute_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisMute::CpseisMute() : CpseisBase ("MUTE",
                                       mute_wrap_create,
                                       mute_wrap_delete,
                                       mute_wrap_update,
                                       mute_wrap_wrapup,
                                       mute_wrap_oneset,
                                       mute_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
