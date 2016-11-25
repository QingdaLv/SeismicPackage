//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisSetpoly.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define setpoly_wrap_create             setpoly_wrap_create_
#define setpoly_wrap_delete             setpoly_wrap_delete_
#define setpoly_wrap_update             setpoly_wrap_update_
#define setpoly_wrap_wrapup             setpoly_wrap_wrapup_
#define setpoly_wrap_oneset             setpoly_wrap_oneset_
#define setpoly_wrap_twosets            setpoly_wrap_twosets_
#elif NEED_CAPITALS
#define setpoly_wrap_create             SETPOLY_WRAP_CREATE
#define setpoly_wrap_delete             SETPOLY_WRAP_DELETE
#define setpoly_wrap_update             SETPOLY_WRAP_UPDATE
#define setpoly_wrap_wrapup             SETPOLY_WRAP_WRAPUP
#define setpoly_wrap_oneset             SETPOLY_WRAP_ONESET
#define setpoly_wrap_twosets            SETPOLY_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   setpoly_wrap_create;
    CpseisBase::ModuleDestroy  setpoly_wrap_delete;
    CpseisBase::ModuleUpdate   setpoly_wrap_update;
    CpseisBase::ModuleWrapup   setpoly_wrap_wrapup;
    CpseisBase::ModuleOneset   setpoly_wrap_oneset;
    CpseisBase::ModuleTwosets  setpoly_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisSetpoly::CpseisSetpoly() : CpseisBase ("SETPOLY",
                                       setpoly_wrap_create,
                                       setpoly_wrap_delete,
                                       setpoly_wrap_update,
                                       setpoly_wrap_wrapup,
                                       setpoly_wrap_oneset,
                                       setpoly_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
