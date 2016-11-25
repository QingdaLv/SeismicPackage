//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisRanline.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define ranline_wrap_create             ranline_wrap_create_
#define ranline_wrap_delete             ranline_wrap_delete_
#define ranline_wrap_update             ranline_wrap_update_
#define ranline_wrap_wrapup             ranline_wrap_wrapup_
#define ranline_wrap_oneset             ranline_wrap_oneset_
#define ranline_wrap_twosets            ranline_wrap_twosets_
#elif NEED_CAPITALS
#define ranline_wrap_create             RANLINE_WRAP_CREATE
#define ranline_wrap_delete             RANLINE_WRAP_DELETE
#define ranline_wrap_update             RANLINE_WRAP_UPDATE
#define ranline_wrap_wrapup             RANLINE_WRAP_WRAPUP
#define ranline_wrap_oneset             RANLINE_WRAP_ONESET
#define ranline_wrap_twosets            RANLINE_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   ranline_wrap_create;
    CpseisBase::ModuleDestroy  ranline_wrap_delete;
    CpseisBase::ModuleUpdate   ranline_wrap_update;
    CpseisBase::ModuleWrapup   ranline_wrap_wrapup;
    CpseisBase::ModuleOneset   ranline_wrap_oneset;
    CpseisBase::ModuleTwosets  ranline_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisRanline::CpseisRanline() : CpseisBase ("RANLINE",
                                       ranline_wrap_create,
                                       ranline_wrap_delete,
                                       ranline_wrap_update,
                                       ranline_wrap_wrapup,
                                       ranline_wrap_oneset,
                                       ranline_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
