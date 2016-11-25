//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisAtrot.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define atrot_wrap_create             atrot_wrap_create_
#define atrot_wrap_delete             atrot_wrap_delete_
#define atrot_wrap_update             atrot_wrap_update_
#define atrot_wrap_wrapup             atrot_wrap_wrapup_
#define atrot_wrap_oneset             atrot_wrap_oneset_
#define atrot_wrap_twosets            atrot_wrap_twosets_
#elif NEED_CAPITALS
#define atrot_wrap_create             ATROT_WRAP_CREATE
#define atrot_wrap_delete             ATROT_WRAP_DELETE
#define atrot_wrap_update             ATROT_WRAP_UPDATE
#define atrot_wrap_wrapup             ATROT_WRAP_WRAPUP
#define atrot_wrap_oneset             ATROT_WRAP_ONESET
#define atrot_wrap_twosets            ATROT_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   atrot_wrap_create;
    CpseisBase::ModuleDestroy  atrot_wrap_delete;
    CpseisBase::ModuleUpdate   atrot_wrap_update;
    CpseisBase::ModuleWrapup   atrot_wrap_wrapup;
    CpseisBase::ModuleOneset   atrot_wrap_oneset;
    CpseisBase::ModuleTwosets  atrot_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisAtrot::CpseisAtrot() : CpseisBase ("ATROT",
                                       atrot_wrap_create,
                                       atrot_wrap_delete,
                                       atrot_wrap_update,
                                       atrot_wrap_wrapup,
                                       atrot_wrap_oneset,
                                       atrot_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
