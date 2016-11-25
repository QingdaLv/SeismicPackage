//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisExo.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define exo_wrap_create             exo_wrap_create_
#define exo_wrap_delete             exo_wrap_delete_
#define exo_wrap_update             exo_wrap_update_
#define exo_wrap_wrapup             exo_wrap_wrapup_
#define exo_wrap_oneset             exo_wrap_oneset_
#define exo_wrap_twosets            exo_wrap_twosets_
#elif NEED_CAPITALS
#define exo_wrap_create             EXO_WRAP_CREATE
#define exo_wrap_delete             EXO_WRAP_DELETE
#define exo_wrap_update             EXO_WRAP_UPDATE
#define exo_wrap_wrapup             EXO_WRAP_WRAPUP
#define exo_wrap_oneset             EXO_WRAP_ONESET
#define exo_wrap_twosets            EXO_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   exo_wrap_create;
    CpseisBase::ModuleDestroy  exo_wrap_delete;
    CpseisBase::ModuleUpdate   exo_wrap_update;
    CpseisBase::ModuleWrapup   exo_wrap_wrapup;
    CpseisBase::ModuleOneset   exo_wrap_oneset;
    CpseisBase::ModuleTwosets  exo_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisExo::CpseisExo() : CpseisBase ("EXO",
                                       exo_wrap_create,
                                       exo_wrap_delete,
                                       exo_wrap_update,
                                       exo_wrap_wrapup,
                                       exo_wrap_oneset,
                                       exo_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
