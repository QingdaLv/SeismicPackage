//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisStk.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define stk_wrap_create             stk_wrap_create_
#define stk_wrap_delete             stk_wrap_delete_
#define stk_wrap_update             stk_wrap_update_
#define stk_wrap_wrapup             stk_wrap_wrapup_
#define stk_wrap_oneset             stk_wrap_oneset_
#define stk_wrap_twosets            stk_wrap_twosets_
#elif NEED_CAPITALS
#define stk_wrap_create             STK_WRAP_CREATE
#define stk_wrap_delete             STK_WRAP_DELETE
#define stk_wrap_update             STK_WRAP_UPDATE
#define stk_wrap_wrapup             STK_WRAP_WRAPUP
#define stk_wrap_oneset             STK_WRAP_ONESET
#define stk_wrap_twosets            STK_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   stk_wrap_create;
    CpseisBase::ModuleDestroy  stk_wrap_delete;
    CpseisBase::ModuleUpdate   stk_wrap_update;
    CpseisBase::ModuleWrapup   stk_wrap_wrapup;
    CpseisBase::ModuleOneset   stk_wrap_oneset;
    CpseisBase::ModuleTwosets  stk_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisStk::CpseisStk() : CpseisBase ("STK",
                                       stk_wrap_create,
                                       stk_wrap_delete,
                                       stk_wrap_update,
                                       stk_wrap_wrapup,
                                       stk_wrap_oneset,
                                       stk_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
