//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisRtc.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define rtc_wrap_create             rtc_wrap_create_
#define rtc_wrap_delete             rtc_wrap_delete_
#define rtc_wrap_update             rtc_wrap_update_
#define rtc_wrap_wrapup             rtc_wrap_wrapup_
#define rtc_wrap_oneset             rtc_wrap_oneset_
#define rtc_wrap_twosets            rtc_wrap_twosets_
#elif NEED_CAPITALS
#define rtc_wrap_create             RTC_WRAP_CREATE
#define rtc_wrap_delete             RTC_WRAP_DELETE
#define rtc_wrap_update             RTC_WRAP_UPDATE
#define rtc_wrap_wrapup             RTC_WRAP_WRAPUP
#define rtc_wrap_oneset             RTC_WRAP_ONESET
#define rtc_wrap_twosets            RTC_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   rtc_wrap_create;
    CpseisBase::ModuleDestroy  rtc_wrap_delete;
    CpseisBase::ModuleUpdate   rtc_wrap_update;
    CpseisBase::ModuleWrapup   rtc_wrap_wrapup;
    CpseisBase::ModuleOneset   rtc_wrap_oneset;
    CpseisBase::ModuleTwosets  rtc_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisRtc::CpseisRtc() : CpseisBase ("RTC",
                                       rtc_wrap_create,
                                       rtc_wrap_delete,
                                       rtc_wrap_update,
                                       rtc_wrap_wrapup,
                                       rtc_wrap_oneset,
                                       rtc_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
