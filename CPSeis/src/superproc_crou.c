/****
!<CPS_v1 type="AUXILIARY_FILE"/>
****/
/*-------------------------- superproc_crou.c ------------------------------*/
/*-------------------------- superproc_crou.c ------------------------------*/
/*-------------------------- superproc_crou.c ------------------------------*/

  /* other files are:  superproc.f90  superproc_frou.f90  superproc_crou.h */

/****
!<license>
!-------------------------------------------------------------------------------
! Copyright (c) 2007 ConocoPhillips Company
!
! Permission is hereby granted, free of charge, to any person obtaining a copy
! of this software and associated documentation files (the "Software"), to deal
! in the Software without restriction, including without limitation the rights
! to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
! copies of the Software, and to permit persons to whom the Software is
! furnished to do so, subject to the following conditions:
!
! The above copyright notice and this permission notice shall be included in all
! copies or substantial portions of the Software.
!
! THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
! IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
! SOFTWARE.
!-------------------------------------------------------------------------------
!</license>


!<brief_doc>
!-------------------------------------------------------------------------------
!                         C P S   P R I M I T I V E
!
! Name       : SUPERPROC_CROU
! Category   : cfe
! Written    : 2003-11-03   by: Tom Stoeckley
! Revised    : 2005-04-27   by: Tom Stoeckley
! Maturity   : beta
! Purpose    : CFE Super Process Object Module.
! Portability: No known limitations.
!
! Automatically generated by program SPS_BUILD_SUPERPROC.
! Generated using SUPERPROC_CROU_TEMPLATE.
! Dates and revision history refer to revisions of SUPERPROC_CROU_TEMPLATE.
!
!-------------------------------------------------------------------------------
!</brief_doc>


!<history_doc>
!-------------------------------------------------------------------------------
!                     AUXILIARY FILE REVISION HISTORY
!
!     Date        Author     Description
!     ----        ------     -----------
!  3. 2005-04-27  Stoeckley  Change this to THIS so superproc_crou.c can be
!                             compiled with C++.
!  2. 2003-11-04  Stoeckley  Add MATURITY key.
!  1. 2003-11-03  Stoeckley  Initial version of SUPERPROC_CROU_TEMPLATE.
!
!-------------------------------------------------------------------------------
!</history_doc>
****/


/*--------------------------- start of coding ------------------------------*/
/*--------------------------- start of coding ------------------------------*/
/*--------------------------- start of coding ------------------------------*/


char SUPERPROC_CROU_IDENT[100] =
"$Id: superproc_crou_template,v 1.3 2005/04/28 20:11:33 sps Stoeckley $";

#include "superproc_crou.h"
#include "named_constants.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>


/*---------------------- fortran spelling adjustments ----------------------*/
/*---------------------- fortran spelling adjustments ----------------------*/
/*---------------------- fortran spelling adjustments ----------------------*/


#ifdef NEED_UNDERSCORE
#define superproc_crou_create            superproc_crou_create_
#define superproc_crou_delete            superproc_crou_delete_
#define superproc_crou_initialize        superproc_crou_initialize_
#define superproc_crou_update            superproc_crou_update_
#define superproc_crou_wrapup            superproc_crou_wrapup_
#define superproc_crou_oneset            superproc_crou_oneset_
#define superproc_crou_twosets           superproc_crou_twosets_
#elif defined NEED_CAPITALS
#define superproc_crou_create            SUPERPROC_CROU_CREATE
#define superproc_crou_delete            SUPERPROC_CROU_DELETE
#define superproc_crou_initialize        SUPERPROC_CROU_INITIALIZE
#define superproc_crou_update            SUPERPROC_CROU_UPDATE
#define superproc_crou_wrapup            SUPERPROC_CROU_WRAPUP
#define superproc_crou_oneset            SUPERPROC_CROU_ONESET
#define superproc_crou_twosets           SUPERPROC_CROU_TWOSETS
#endif


/*------------------------ function prototypes ---------------------------*/
/*------------------------ function prototypes ---------------------------*/
/*------------------------ function prototypes ---------------------------*/


typedef void ProcessStartup (SuperMiddleStruct *THIS);

ProcessStartup superwrap_abal_startup;
ProcessStartup superwrap_abra_startup;
ProcessStartup superwrap_acorr_startup;
ProcessStartup superwrap_adns_startup;
ProcessStartup superwrap_adpsub_startup;
ProcessStartup superwrap_alamo_startup;
ProcessStartup superwrap_ampdg_startup;
ProcessStartup superwrap_apin_startup;
ProcessStartup superwrap_atrin_startup;
ProcessStartup superwrap_atrot_startup;
ProcessStartup superwrap_avagrad_startup;
ProcessStartup superwrap_avast_startup;
ProcessStartup superwrap_avoans_startup;
ProcessStartup superwrap_avocorr_startup;
ProcessStartup superwrap_avonrm_startup;
ProcessStartup superwrap_avopcomp_startup;
ProcessStartup superwrap_avosts_startup;
ProcessStartup superwrap_avovan_startup;
ProcessStartup superwrap_avovit_startup;
ProcessStartup superwrap_bunch_startup;
ProcessStartup superwrap_c4we_startup;
ProcessStartup superwrap_cc3d_startup;
ProcessStartup superwrap_cfds_startup;
ProcessStartup superwrap_chart_startup;
ProcessStartup superwrap_cleanup_startup;
ProcessStartup superwrap_clip_startup;
ProcessStartup superwrap_cnearts_startup;
ProcessStartup superwrap_codmo_startup;
ProcessStartup superwrap_color_startup;
ProcessStartup superwrap_combine_startup;
ProcessStartup superwrap_comp_startup;
ProcessStartup superwrap_ctan_startup;
ProcessStartup superwrap_dabra_startup;
ProcessStartup superwrap_dbgain_startup;
ProcessStartup superwrap_decon_startup;
ProcessStartup superwrap_dist_startup;
ProcessStartup superwrap_dmap3d_startup;
ProcessStartup superwrap_dmo3d_startup;
ProcessStartup superwrap_dmoprep_startup;
ProcessStartup superwrap_drc_startup;
ProcessStartup superwrap_dsig_startup;
ProcessStartup superwrap_eagc_startup;
ProcessStartup superwrap_eda_startup;
ProcessStartup superwrap_eda3d_startup;
ProcessStartup superwrap_traceterp3d_startup;
ProcessStartup superwrap_elev_startup;
ProcessStartup superwrap_exo_startup;
ProcessStartup superwrap_ezcheck_startup;
ProcessStartup superwrap_fbal_startup;
ProcessStartup superwrap_ffava_startup;
ProcessStartup superwrap_fgd_startup;
ProcessStartup superwrap_fgdrev_startup;
ProcessStartup superwrap_fill_startup;
ProcessStartup superwrap_filtp_startup;
ProcessStartup superwrap_fish_startup;
ProcessStartup superwrap_fkap_startup;
ProcessStartup superwrap_fkfilt_startup;
ProcessStartup superwrap_fktmig_startup;
ProcessStartup superwrap_fktr_startup;
ProcessStartup superwrap_flexbin_startup;
ProcessStartup superwrap_fxdecon_startup;
ProcessStartup superwrap_gather_startup;
ProcessStartup superwrap_gdiv_startup;
ProcessStartup superwrap_genfilt_startup;
ProcessStartup superwrap_grab_startup;
ProcessStartup superwrap_gstack_startup;
ProcessStartup superwrap_gstk_startup;
ProcessStartup superwrap_gvs_startup;
ProcessStartup superwrap_headcheck_startup;
ProcessStartup superwrap_headmap_startup;
ProcessStartup superwrap_headsum_startup;
ProcessStartup superwrap_headswap_startup;
ProcessStartup superwrap_hrzstk_startup;
ProcessStartup superwrap_hsyn_startup;
ProcessStartup superwrap_hsynmod_startup;
ProcessStartup superwrap_hvel_startup;
ProcessStartup superwrap_ibsma_startup;
ProcessStartup superwrap_ims_startup;
ProcessStartup superwrap_iq_startup;
ProcessStartup superwrap_integrate_startup;
ProcessStartup superwrap_job_data_startup;
ProcessStartup superwrap_ka_startup;
ProcessStartup superwrap_kastats_startup;
ProcessStartup superwrap_kdmo_startup;
ProcessStartup superwrap_madc_startup;
ProcessStartup superwrap_masker_startup;
ProcessStartup superwrap_mdip_startup;
ProcessStartup superwrap_mds_startup;
ProcessStartup superwrap_mfrs_startup;
ProcessStartup superwrap_mgd_startup;
ProcessStartup superwrap_mix_startup;
ProcessStartup superwrap_modmo_startup;
ProcessStartup superwrap_modmo2d_startup;
ProcessStartup superwrap_mtfun_startup;
ProcessStartup superwrap_mute_startup;
ProcessStartup superwrap_mvxp_startup;
ProcessStartup superwrap_mzpc_startup;
ProcessStartup superwrap_nmo_startup;
ProcessStartup superwrap_norm_startup;
ProcessStartup superwrap_off2ang_startup;
ProcessStartup superwrap_pairmerge_startup;
ProcessStartup superwrap_pfilt3c_startup;
ProcessStartup superwrap_pgps_startup;
ProcessStartup superwrap_ph2off_startup;
ProcessStartup superwrap_pickset_startup;
ProcessStartup superwrap_project_data_startup;
ProcessStartup superwrap_pstmig_startup;
ProcessStartup superwrap_qest_startup;
ProcessStartup superwrap_randgth_startup;
ProcessStartup superwrap_ranline_startup;
ProcessStartup superwrap_rcpout_startup;
ProcessStartup superwrap_reg_startup;
ProcessStartup superwrap_reg2d_startup;
ProcessStartup superwrap_regbin_startup;
ProcessStartup superwrap_res_startup;
ProcessStartup superwrap_resth_startup;
ProcessStartup superwrap_rfab_startup;
ProcessStartup superwrap_rmul_startup;
ProcessStartup superwrap_rnsyn_startup;
ProcessStartup superwrap_rtc_startup;
ProcessStartup superwrap_scab_startup;
ProcessStartup superwrap_scale_startup;
ProcessStartup superwrap_scdecon_startup;
ProcessStartup superwrap_sdip_startup;
ProcessStartup superwrap_seldmo_startup;
ProcessStartup superwrap_select_startup;
ProcessStartup superwrap_setmute_startup;
ProcessStartup superwrap_setpoly_startup;
ProcessStartup superwrap_setword_startup;
ProcessStartup superwrap_shft_startup;
ProcessStartup superwrap_sisc_startup;
ProcessStartup superwrap_slab_startup;
ProcessStartup superwrap_slice_startup;
ProcessStartup superwrap_slicer_startup;
ProcessStartup superwrap_slst_startup;
ProcessStartup superwrap_spct_startup;
ProcessStartup superwrap_spike_startup;
ProcessStartup superwrap_splt_startup;
ProcessStartup superwrap_spti_startup;
ProcessStartup superwrap_stk_startup;
ProcessStartup superwrap_stretch_startup;
ProcessStartup superwrap_sva_startup;
ProcessStartup superwrap_synbp_startup;
ProcessStartup superwrap_tablesave_startup;
ProcessStartup superwrap_tablesort_startup;
ProcessStartup superwrap_tdc_startup;
ProcessStartup superwrap_tdmp_startup;
ProcessStartup superwrap_telav_startup;
ProcessStartup superwrap_tfatt_startup;
ProcessStartup superwrap_tpick_startup;
ProcessStartup superwrap_tpow_startup;
ProcessStartup superwrap_tredit_startup;
ProcessStartup superwrap_trin_startup;
ProcessStartup superwrap_trinsort_startup;
ProcessStartup superwrap_trmo_startup;
ProcessStartup superwrap_trot_startup;
ProcessStartup superwrap_trstats_startup;
ProcessStartup superwrap_tsel_startup;
ProcessStartup superwrap_tslc_startup;
ProcessStartup superwrap_tslice_startup;
ProcessStartup superwrap_tsmute_startup;
ProcessStartup superwrap_tsort_startup;
ProcessStartup superwrap_parallelsort_startup;
ProcessStartup superwrap_tsvf_startup;
ProcessStartup superwrap_ttmo_startup;
ProcessStartup superwrap_ttrin_startup;
ProcessStartup superwrap_ttrot_startup;
ProcessStartup superwrap_tvf_startup;
ProcessStartup superwrap_ungather_startup;
ProcessStartup superwrap_utel_startup;
ProcessStartup superwrap_valuedump_startup;
ProcessStartup superwrap_vc_startup;
ProcessStartup superwrap_veledit_startup;
ProcessStartup superwrap_vpick_startup;
ProcessStartup superwrap_vtrim_startup;
ProcessStartup superwrap_vtrin_startup;
ProcessStartup superwrap_wsep_startup;
ProcessStartup superwrap_xp_startup;


/*------------------------------ create ----------------------------------*/
/*------------------------------ create ----------------------------------*/
/*------------------------------ create ----------------------------------*/


void superproc_crou_create
        (SuperMiddleStruct **cpoint, const char *name, INTEGER *whoops)
{
  SuperMiddleStruct *THIS;
  THIS = (SuperMiddleStruct*)malloc(sizeof(SuperMiddleStruct));

  THIS->create     = NULL;
  THIS->initialize = NULL;
  THIS->update     = NULL;
  THIS->oneset     = NULL;
  THIS->twosets    = NULL;
  THIS->wrapup     = NULL;
  THIS->delete     = NULL;

  if(strcmp(name, "ABAL"         )==0) superwrap_abal_startup        (THIS);
  if(strcmp(name, "ABRA"         )==0) superwrap_abra_startup        (THIS);
  if(strcmp(name, "ACORR"        )==0) superwrap_acorr_startup       (THIS);
  if(strcmp(name, "ADNS"         )==0) superwrap_adns_startup        (THIS);
  if(strcmp(name, "ADPSUB"       )==0) superwrap_adpsub_startup      (THIS);
  if(strcmp(name, "ALAMO"        )==0) superwrap_alamo_startup       (THIS);
  if(strcmp(name, "AMPDG"        )==0) superwrap_ampdg_startup       (THIS);
  if(strcmp(name, "APIN"         )==0) superwrap_apin_startup        (THIS);
  if(strcmp(name, "ATRIN"        )==0) superwrap_atrin_startup       (THIS);
  if(strcmp(name, "ATROT"        )==0) superwrap_atrot_startup       (THIS);
  if(strcmp(name, "AVAGRAD"      )==0) superwrap_avagrad_startup     (THIS);
  if(strcmp(name, "AVAST"        )==0) superwrap_avast_startup       (THIS);
  if(strcmp(name, "AVOANS"       )==0) superwrap_avoans_startup      (THIS);
  if(strcmp(name, "AVOCORR"      )==0) superwrap_avocorr_startup     (THIS);
  if(strcmp(name, "AVONRM"       )==0) superwrap_avonrm_startup      (THIS);
  if(strcmp(name, "AVOPCOMP"     )==0) superwrap_avopcomp_startup    (THIS);
  if(strcmp(name, "AVOSTS"       )==0) superwrap_avosts_startup      (THIS);
  if(strcmp(name, "AVOVAN"       )==0) superwrap_avovan_startup      (THIS);
  if(strcmp(name, "AVOVIT"       )==0) superwrap_avovit_startup      (THIS);
  if(strcmp(name, "BUNCH"        )==0) superwrap_bunch_startup       (THIS);
  if(strcmp(name, "C4WE"         )==0) superwrap_c4we_startup        (THIS);
  if(strcmp(name, "CC3D"         )==0) superwrap_cc3d_startup        (THIS);
  if(strcmp(name, "CFDS"         )==0) superwrap_cfds_startup        (THIS);
  if(strcmp(name, "CHART"        )==0) superwrap_chart_startup       (THIS);
  if(strcmp(name, "CLEANUP"      )==0) superwrap_cleanup_startup     (THIS);
  if(strcmp(name, "CLIP"         )==0) superwrap_clip_startup        (THIS);
  if(strcmp(name, "CNEARTS"      )==0) superwrap_cnearts_startup     (THIS);
  if(strcmp(name, "CODMO"        )==0) superwrap_codmo_startup       (THIS);
  if(strcmp(name, "COLOR"        )==0) superwrap_color_startup       (THIS);
  if(strcmp(name, "COMBINE"      )==0) superwrap_combine_startup     (THIS);
  if(strcmp(name, "COMP"         )==0) superwrap_comp_startup        (THIS);
  if(strcmp(name, "CTAN"         )==0) superwrap_ctan_startup        (THIS);
  if(strcmp(name, "DABRA"        )==0) superwrap_dabra_startup       (THIS);
  if(strcmp(name, "DBGAIN"       )==0) superwrap_dbgain_startup      (THIS);
  if(strcmp(name, "DECON"        )==0) superwrap_decon_startup       (THIS);
  if(strcmp(name, "DIST"         )==0) superwrap_dist_startup        (THIS);
  if(strcmp(name, "DMAP3D"       )==0) superwrap_dmap3d_startup      (THIS);
  if(strcmp(name, "DMO3D"        )==0) superwrap_dmo3d_startup       (THIS);
  if(strcmp(name, "DMOPREP"      )==0) superwrap_dmoprep_startup     (THIS);
  if(strcmp(name, "DRC"          )==0) superwrap_drc_startup         (THIS);
  if(strcmp(name, "DSIG"         )==0) superwrap_dsig_startup        (THIS);
  if(strcmp(name, "EAGC"         )==0) superwrap_eagc_startup        (THIS);
  if(strcmp(name, "EDA"          )==0) superwrap_eda_startup         (THIS);
  if(strcmp(name, "EDA3D"        )==0) superwrap_eda3d_startup       (THIS);
  if(strcmp(name, "TRACETERP3D"  )==0) superwrap_traceterp3d_startup (THIS);
  if(strcmp(name, "ELEV"         )==0) superwrap_elev_startup        (THIS);
  if(strcmp(name, "EXO"          )==0) superwrap_exo_startup         (THIS);
  if(strcmp(name, "EZCHECK"      )==0) superwrap_ezcheck_startup     (THIS);
  if(strcmp(name, "FBAL"         )==0) superwrap_fbal_startup        (THIS);
  if(strcmp(name, "FFAVA"        )==0) superwrap_ffava_startup       (THIS);
  if(strcmp(name, "FGD"          )==0) superwrap_fgd_startup         (THIS);
  if(strcmp(name, "FGDREV"       )==0) superwrap_fgdrev_startup      (THIS);
  if(strcmp(name, "FILL"         )==0) superwrap_fill_startup        (THIS);
  if(strcmp(name, "FILTP"        )==0) superwrap_filtp_startup       (THIS);
  if(strcmp(name, "FISH"         )==0) superwrap_fish_startup        (THIS);
  if(strcmp(name, "FKAP"         )==0) superwrap_fkap_startup        (THIS);
  if(strcmp(name, "FKFILT"       )==0) superwrap_fkfilt_startup      (THIS);
  if(strcmp(name, "FKTMIG"       )==0) superwrap_fktmig_startup      (THIS);
  if(strcmp(name, "FKTR"         )==0) superwrap_fktr_startup        (THIS);
  if(strcmp(name, "FLEXBIN"      )==0) superwrap_flexbin_startup     (THIS);
  if(strcmp(name, "FXDECON"      )==0) superwrap_fxdecon_startup     (THIS);
  if(strcmp(name, "GATHER"       )==0) superwrap_gather_startup      (THIS);
  if(strcmp(name, "GDIV"         )==0) superwrap_gdiv_startup        (THIS);
  if(strcmp(name, "GENFILT"      )==0) superwrap_genfilt_startup     (THIS);
  if(strcmp(name, "GRAB"         )==0) superwrap_grab_startup        (THIS);
  if(strcmp(name, "GSTACK"       )==0) superwrap_gstack_startup      (THIS);
  if(strcmp(name, "GSTK"         )==0) superwrap_gstk_startup        (THIS);
  if(strcmp(name, "GVS"          )==0) superwrap_gvs_startup         (THIS);
  if(strcmp(name, "HEADCHECK"    )==0) superwrap_headcheck_startup   (THIS);
  if(strcmp(name, "HEADMAP"      )==0) superwrap_headmap_startup     (THIS);
  if(strcmp(name, "HEADSUM"      )==0) superwrap_headsum_startup     (THIS);
  if(strcmp(name, "HEADSWAP"     )==0) superwrap_headswap_startup    (THIS);
  if(strcmp(name, "HRZSTK"       )==0) superwrap_hrzstk_startup      (THIS);
  if(strcmp(name, "HSYN"         )==0) superwrap_hsyn_startup        (THIS);
  if(strcmp(name, "HSYNMOD"      )==0) superwrap_hsynmod_startup     (THIS);
  if(strcmp(name, "HVEL"         )==0) superwrap_hvel_startup        (THIS);
  if(strcmp(name, "IBSMA"        )==0) superwrap_ibsma_startup       (THIS);
  if(strcmp(name, "IMS"          )==0) superwrap_ims_startup         (THIS);
  if(strcmp(name, "IQ"           )==0) superwrap_iq_startup          (THIS);
  if(strcmp(name, "INTEGRATE"    )==0) superwrap_integrate_startup   (THIS);
  if(strcmp(name, "JOB_DATA"     )==0) superwrap_job_data_startup    (THIS);
  if(strcmp(name, "KA"           )==0) superwrap_ka_startup          (THIS);
  if(strcmp(name, "KASTATS"      )==0) superwrap_kastats_startup     (THIS);
  if(strcmp(name, "KDMO"         )==0) superwrap_kdmo_startup        (THIS);
  if(strcmp(name, "MADC"         )==0) superwrap_madc_startup        (THIS);
  if(strcmp(name, "MASKER"       )==0) superwrap_masker_startup      (THIS);
  if(strcmp(name, "MDIP"         )==0) superwrap_mdip_startup        (THIS);
  if(strcmp(name, "MDS"          )==0) superwrap_mds_startup         (THIS);
  if(strcmp(name, "MFRS"         )==0) superwrap_mfrs_startup        (THIS);
  if(strcmp(name, "MGD"          )==0) superwrap_mgd_startup         (THIS);
  if(strcmp(name, "MIX"          )==0) superwrap_mix_startup         (THIS);
  if(strcmp(name, "MODMO"        )==0) superwrap_modmo_startup       (THIS);
  if(strcmp(name, "MODMO2D"      )==0) superwrap_modmo2d_startup     (THIS);
  if(strcmp(name, "MTFUN"        )==0) superwrap_mtfun_startup       (THIS);
  if(strcmp(name, "MUTE"         )==0) superwrap_mute_startup        (THIS);
  if(strcmp(name, "MVXP"         )==0) superwrap_mvxp_startup        (THIS);
  if(strcmp(name, "MZPC"         )==0) superwrap_mzpc_startup        (THIS);
  if(strcmp(name, "NMO"          )==0) superwrap_nmo_startup         (THIS);
  if(strcmp(name, "NORM"         )==0) superwrap_norm_startup        (THIS);
  if(strcmp(name, "OFF2ANG"      )==0) superwrap_off2ang_startup     (THIS);
  if(strcmp(name, "PAIRMERGE"    )==0) superwrap_pairmerge_startup   (THIS);
  if(strcmp(name, "PFILT3C"      )==0) superwrap_pfilt3c_startup     (THIS);
  if(strcmp(name, "PGPS"         )==0) superwrap_pgps_startup        (THIS);
  if(strcmp(name, "PH2OFF"       )==0) superwrap_ph2off_startup      (THIS);
  if(strcmp(name, "PICKSET"      )==0) superwrap_pickset_startup     (THIS);
  if(strcmp(name, "PROJECT_DATA" )==0) superwrap_project_data_startup(THIS);
  if(strcmp(name, "PSTMIG"       )==0) superwrap_pstmig_startup      (THIS);
  if(strcmp(name, "QEST"         )==0) superwrap_qest_startup        (THIS);
  if(strcmp(name, "RANDGTH"      )==0) superwrap_randgth_startup     (THIS);
  if(strcmp(name, "RANLINE"      )==0) superwrap_ranline_startup     (THIS);
  if(strcmp(name, "RCPOUT"       )==0) superwrap_rcpout_startup      (THIS);
  if(strcmp(name, "REG"          )==0) superwrap_reg_startup         (THIS);
  if(strcmp(name, "REG2D"        )==0) superwrap_reg2d_startup       (THIS);
  if(strcmp(name, "REGBIN"       )==0) superwrap_regbin_startup      (THIS);
  if(strcmp(name, "RES"          )==0) superwrap_res_startup         (THIS);
  if(strcmp(name, "RESTH"        )==0) superwrap_resth_startup       (THIS);
  if(strcmp(name, "RFAB"         )==0) superwrap_rfab_startup        (THIS);
  if(strcmp(name, "RMUL"         )==0) superwrap_rmul_startup        (THIS);
  if(strcmp(name, "RNSYN"        )==0) superwrap_rnsyn_startup       (THIS);
  if(strcmp(name, "RTC"          )==0) superwrap_rtc_startup         (THIS);
  if(strcmp(name, "SCAB"         )==0) superwrap_scab_startup        (THIS);
  if(strcmp(name, "SCALE"        )==0) superwrap_scale_startup       (THIS);
  if(strcmp(name, "SCDECON"      )==0) superwrap_scdecon_startup     (THIS);
  if(strcmp(name, "SDIP"         )==0) superwrap_sdip_startup        (THIS);
  if(strcmp(name, "SELDMO"       )==0) superwrap_seldmo_startup      (THIS);
  if(strcmp(name, "SELECT"       )==0) superwrap_select_startup      (THIS);
  if(strcmp(name, "SETMUTE"      )==0) superwrap_setmute_startup     (THIS);
  if(strcmp(name, "SETPOLY"      )==0) superwrap_setpoly_startup     (THIS);
  if(strcmp(name, "SETWORD"      )==0) superwrap_setword_startup     (THIS);
  if(strcmp(name, "SHFT"         )==0) superwrap_shft_startup        (THIS);
  if(strcmp(name, "SISC"         )==0) superwrap_sisc_startup        (THIS);
  if(strcmp(name, "SLAB"         )==0) superwrap_slab_startup        (THIS);
  if(strcmp(name, "SLICE"        )==0) superwrap_slice_startup       (THIS);
  if(strcmp(name, "SLICER"       )==0) superwrap_slicer_startup      (THIS);
  if(strcmp(name, "SLST"         )==0) superwrap_slst_startup        (THIS);
  if(strcmp(name, "SPCT"         )==0) superwrap_spct_startup        (THIS);
  if(strcmp(name, "SPIKE"        )==0) superwrap_spike_startup       (THIS);
  if(strcmp(name, "SPLT"         )==0) superwrap_splt_startup        (THIS);
  if(strcmp(name, "SPTI"         )==0) superwrap_spti_startup        (THIS);
  if(strcmp(name, "STK"          )==0) superwrap_stk_startup         (THIS);
  if(strcmp(name, "STRETCH"      )==0) superwrap_stretch_startup     (THIS);
  if(strcmp(name, "SVA"          )==0) superwrap_sva_startup         (THIS);
  if(strcmp(name, "SYNBP"        )==0) superwrap_synbp_startup       (THIS);
  if(strcmp(name, "TABLESAVE"    )==0) superwrap_tablesave_startup   (THIS);
  if(strcmp(name, "TABLESORT"    )==0) superwrap_tablesort_startup   (THIS);
  if(strcmp(name, "TDC"          )==0) superwrap_tdc_startup         (THIS);
  if(strcmp(name, "TDMP"         )==0) superwrap_tdmp_startup        (THIS);
  if(strcmp(name, "TELAV"        )==0) superwrap_telav_startup       (THIS);
  if(strcmp(name, "TFATT"        )==0) superwrap_tfatt_startup       (THIS);
  if(strcmp(name, "TPICK"        )==0) superwrap_tpick_startup       (THIS);
  if(strcmp(name, "TPOW"         )==0) superwrap_tpow_startup        (THIS);
  if(strcmp(name, "TREDIT"       )==0) superwrap_tredit_startup      (THIS);
  if(strcmp(name, "TRIN"         )==0) superwrap_trin_startup        (THIS);
  if(strcmp(name, "TRINSORT"     )==0) superwrap_trinsort_startup    (THIS);
  if(strcmp(name, "TRMO"         )==0) superwrap_trmo_startup        (THIS);
  if(strcmp(name, "TROT"         )==0) superwrap_trot_startup        (THIS);
  if(strcmp(name, "TRSTATS"      )==0) superwrap_trstats_startup     (THIS);
  if(strcmp(name, "TSEL"         )==0) superwrap_tsel_startup        (THIS);
  if(strcmp(name, "TSLC"         )==0) superwrap_tslc_startup        (THIS);
  if(strcmp(name, "TSLICE"       )==0) superwrap_tslice_startup      (THIS);
  if(strcmp(name, "TSMUTE"       )==0) superwrap_tsmute_startup      (THIS);
  if(strcmp(name, "TSORT"        )==0) superwrap_tsort_startup       (THIS);
  if(strcmp(name, "PARALLELSORT"        )==0) superwrap_parallelsort_startup       (THIS);
  if(strcmp(name, "TSVF"         )==0) superwrap_tsvf_startup        (THIS);
  if(strcmp(name, "TTMO"         )==0) superwrap_ttmo_startup        (THIS);
  if(strcmp(name, "TTRIN"        )==0) superwrap_ttrin_startup       (THIS);
  if(strcmp(name, "TTROT"        )==0) superwrap_ttrot_startup       (THIS);
  if(strcmp(name, "TVF"          )==0) superwrap_tvf_startup         (THIS);
  if(strcmp(name, "UNGATHER"     )==0) superwrap_ungather_startup    (THIS);
  if(strcmp(name, "UTEL"         )==0) superwrap_utel_startup        (THIS);
  if(strcmp(name, "VALUEDUMP"    )==0) superwrap_valuedump_startup   (THIS);
  if(strcmp(name, "VC"           )==0) superwrap_vc_startup          (THIS);
  if(strcmp(name, "VELEDIT"      )==0) superwrap_veledit_startup     (THIS);
  if(strcmp(name, "VPICK"        )==0) superwrap_vpick_startup       (THIS);
  if(strcmp(name, "VTRIM"        )==0) superwrap_vtrim_startup       (THIS);
  if(strcmp(name, "VTRIN"        )==0) superwrap_vtrin_startup       (THIS);
  if(strcmp(name, "WSEP"         )==0) superwrap_wsep_startup        (THIS);
  if(strcmp(name, "XP"           )==0) superwrap_xp_startup          (THIS);

  if(!THIS->create)
      {
      *whoops = 1;
      return;
      }

  THIS->create(&THIS->fpoint);
  *cpoint = THIS;
  *whoops = 0;
}


/*------------------------------ delete ----------------------------------*/
/*------------------------------ delete ----------------------------------*/
/*------------------------------ delete ----------------------------------*/


void superproc_crou_delete (SuperMiddleStruct **cpoint)
{
  SuperMiddleStruct *THIS = *cpoint;
  THIS->delete(&THIS->fpoint);
  free(THIS);
}


/*------------------------------ initialize --------------------------------*/
/*------------------------------ initialize --------------------------------*/
/*------------------------------ initialize --------------------------------*/


void superproc_crou_initialize (SuperMiddleStruct **cpoint)
{
  SuperMiddleStruct *THIS = *cpoint;
  THIS->initialize(&THIS->fpoint);
}


/*------------------------------ update ----------------------------------*/
/*------------------------------ update ----------------------------------*/
/*------------------------------ update ----------------------------------*/


void superproc_crou_update (SuperMiddleStruct **cpoint)
{
  SuperMiddleStruct *THIS = *cpoint;
  THIS->update(&THIS->fpoint);
}


/*------------------------------ wrapup --------------------------------*/
/*------------------------------ wrapup --------------------------------*/
/*------------------------------ wrapup --------------------------------*/


void superproc_crou_wrapup (SuperMiddleStruct **cpoint)
{
  SuperMiddleStruct *THIS = *cpoint;
  THIS->wrapup(&THIS->fpoint);
}


/*------------------------------ oneset --------------------------------*/
/*------------------------------ oneset --------------------------------*/
/*------------------------------ oneset --------------------------------*/


void superproc_crou_oneset  (SuperMiddleStruct **cpoint, INTEGER *ntr,
                             DOUBLE *hd, REAL *tr,
                             const INTEGER *lenhd, const INTEGER *lentr,
                             const INTEGER *num)
{
  SuperMiddleStruct *THIS = *cpoint;
  THIS->oneset (&THIS->fpoint, ntr, hd, tr, lenhd, lentr, num);
}


/*------------------------------ twosets --------------------------------*/
/*------------------------------ twosets --------------------------------*/
/*------------------------------ twosets --------------------------------*/


void superproc_crou_twosets (SuperMiddleStruct **cpoint, INTEGER *ntr,
                             DOUBLE *hd1, REAL *tr1,
                             const INTEGER *lenhd1, const INTEGER *lentr1,
                             const INTEGER *num1,
                             DOUBLE *hd2, REAL *tr2,
                             const INTEGER *lenhd2, const INTEGER *lentr2,
                             const INTEGER *num2)
{
  SuperMiddleStruct *THIS = *cpoint;
  THIS->twosets(&THIS->fpoint, ntr, hd1, tr1, lenhd1, lentr1, num1,
                                    hd2, tr2, lenhd2, lentr2, num2);
}


/*-------------------------------- end ------------------------------------*/
/*-------------------------------- end ------------------------------------*/
/*-------------------------------- end ------------------------------------*/

