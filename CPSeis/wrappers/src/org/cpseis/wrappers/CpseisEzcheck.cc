//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisEzcheck.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define ezcheck_wrap_create             ezcheck_wrap_create_
#define ezcheck_wrap_delete             ezcheck_wrap_delete_
#define ezcheck_wrap_update             ezcheck_wrap_update_
#define ezcheck_wrap_wrapup             ezcheck_wrap_wrapup_
#define ezcheck_wrap_oneset             ezcheck_wrap_oneset_
#define ezcheck_wrap_twosets            ezcheck_wrap_twosets_
#elif NEED_CAPITALS
#define ezcheck_wrap_create             EZCHECK_WRAP_CREATE
#define ezcheck_wrap_delete             EZCHECK_WRAP_DELETE
#define ezcheck_wrap_update             EZCHECK_WRAP_UPDATE
#define ezcheck_wrap_wrapup             EZCHECK_WRAP_WRAPUP
#define ezcheck_wrap_oneset             EZCHECK_WRAP_ONESET
#define ezcheck_wrap_twosets            EZCHECK_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   ezcheck_wrap_create;
    CpseisBase::ModuleDestroy  ezcheck_wrap_delete;
    CpseisBase::ModuleUpdate   ezcheck_wrap_update;
    CpseisBase::ModuleWrapup   ezcheck_wrap_wrapup;
    CpseisBase::ModuleOneset   ezcheck_wrap_oneset;
    CpseisBase::ModuleTwosets  ezcheck_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisEzcheck::CpseisEzcheck() : CpseisBase ("EZCHECK",
                                       ezcheck_wrap_create,
                                       ezcheck_wrap_delete,
                                       ezcheck_wrap_update,
                                       ezcheck_wrap_wrapup,
                                       ezcheck_wrap_oneset,
                                       ezcheck_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
