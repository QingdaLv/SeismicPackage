//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisReg2d.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define reg2d_wrap_create             reg2d_wrap_create_
#define reg2d_wrap_delete             reg2d_wrap_delete_
#define reg2d_wrap_update             reg2d_wrap_update_
#define reg2d_wrap_wrapup             reg2d_wrap_wrapup_
#define reg2d_wrap_oneset             reg2d_wrap_oneset_
#define reg2d_wrap_twosets            reg2d_wrap_twosets_
#elif NEED_CAPITALS
#define reg2d_wrap_create             REG2D_WRAP_CREATE
#define reg2d_wrap_delete             REG2D_WRAP_DELETE
#define reg2d_wrap_update             REG2D_WRAP_UPDATE
#define reg2d_wrap_wrapup             REG2D_WRAP_WRAPUP
#define reg2d_wrap_oneset             REG2D_WRAP_ONESET
#define reg2d_wrap_twosets            REG2D_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   reg2d_wrap_create;
    CpseisBase::ModuleDestroy  reg2d_wrap_delete;
    CpseisBase::ModuleUpdate   reg2d_wrap_update;
    CpseisBase::ModuleWrapup   reg2d_wrap_wrapup;
    CpseisBase::ModuleOneset   reg2d_wrap_oneset;
    CpseisBase::ModuleTwosets  reg2d_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisReg2d::CpseisReg2d() : CpseisBase ("REG2D",
                                       reg2d_wrap_create,
                                       reg2d_wrap_delete,
                                       reg2d_wrap_update,
                                       reg2d_wrap_wrapup,
                                       reg2d_wrap_oneset,
                                       reg2d_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
