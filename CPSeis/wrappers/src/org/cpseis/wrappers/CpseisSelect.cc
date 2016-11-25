//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisSelect.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define select_wrap_create             select_wrap_create_
#define select_wrap_delete             select_wrap_delete_
#define select_wrap_update             select_wrap_update_
#define select_wrap_wrapup             select_wrap_wrapup_
#define select_wrap_oneset             select_wrap_oneset_
#define select_wrap_twosets            select_wrap_twosets_
#elif NEED_CAPITALS
#define select_wrap_create             SELECT_WRAP_CREATE
#define select_wrap_delete             SELECT_WRAP_DELETE
#define select_wrap_update             SELECT_WRAP_UPDATE
#define select_wrap_wrapup             SELECT_WRAP_WRAPUP
#define select_wrap_oneset             SELECT_WRAP_ONESET
#define select_wrap_twosets            SELECT_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   select_wrap_create;
    CpseisBase::ModuleDestroy  select_wrap_delete;
    CpseisBase::ModuleUpdate   select_wrap_update;
    CpseisBase::ModuleWrapup   select_wrap_wrapup;
    CpseisBase::ModuleOneset   select_wrap_oneset;
    CpseisBase::ModuleTwosets  select_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisSelect::CpseisSelect() : CpseisBase ("SELECT",
                                       select_wrap_create,
                                       select_wrap_delete,
                                       select_wrap_update,
                                       select_wrap_wrapup,
                                       select_wrap_oneset,
                                       select_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
