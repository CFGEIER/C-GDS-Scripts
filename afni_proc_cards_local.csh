#!/bin/bash
##############################################################
### To run this script, type ./afni_proc_kidvid.csh in the terminal
##############################################################
##############################################################
for subj in 044 #045 048 049
do
cd  /Volumes/LaCie/for_AFNI/s"${subj}"/derivatives/cards_output
cp /Volumes/LaCie/for_AFNI/processing_scripts/afni_proc_cards_local.csh .

##############################################################
### GET THE CORRECT FILE NAME FOR THE DATA 
# Find the file with 'FCEV' and '.nii' in its name
file_name=$(find . -type f -name '*CARDS*.nii*' -print -quit)
# Check if the file was found
if [ -z "$file_name" ]; then
  echo "No file with 'CARDS' and '.nii' in its name found."
  exit 1
else
  echo "File found: $file_name"
fi
## file name is now stored as $file_name
### ASSIGN CORRECT FILE NAME TO 'rawdata' VARIABLE###########
export sub_num="$subj"
export rawdata="$file_name" #CHANGE THIS
#############################################################
### Run afni_proc.py to create a single subject processing script (proc.py) and execute it
afni_proc.py \
-subj_id $sub_num \
-script proc."${sub_num}" -scr_overwrite \
-copy_anat /Volumes/LaCie/for_AFNI/s"${sub_num}"/derivatives/sswarp2/anatSS.s"${sub_num}".nii \
-anat_has_skull no \
-dsets $rawdata \
-blocks tshift align tlrc volreg blur mask scale regress \
-radial_correlate_blocks tcat volreg \
-tcat_remove_first_trs 0 \
-align_opts_aea -cost lpc+ZZ -giant_move -check_flip \
-tlrc_base HaskinsPeds_NL_template1.0_SSW.nii.gz \
-tlrc_NL_warp \
-tlrc_NL_warped_dsets \
	/Volumes/LaCie/for_AFNI/s"${sub_num}"/derivatives/sswarp2/anatQQ.s"${sub_num}".nii \
	/Volumes/LaCie/for_AFNI/s"${sub_num}"/derivatives/sswarp2/anatQQ.s"${sub_num}".aff12.1D \
	/Volumes/LaCie/for_AFNI/s"${sub_num}"/derivatives/sswarp2/anatQQ.s"${sub_num}"_WARP.nii \
-volreg_align_to MIN_OUTLIER \
-volreg_align_e2a \
-volreg_tlrc_warp \
-volreg_compute_tsnr yes \
-mask_epi_anat yes \
-test_stim_files no \
-blur_size 4.0 \
-regress_stim_times \
	/Volumes/LaCie/for_AFNI/processing_scripts/cards_stim_timing_files/AntLongBW_s"${sub_num}".1D \
	/Volumes/LaCie/for_AFNI/processing_scripts/cards_stim_timing_files/BW_s"${sub_num}".1D \
	/Volumes/LaCie/for_AFNI/processing_scripts/cards_stim_timing_files/LW_s"${sub_num}".1D \
	/Volumes/LaCie/for_AFNI/processing_scripts/cards_stim_timing_files/BL_s"${sub_num}".1DD \
	/Volumes/LaCie/for_AFNI/processing_scripts/cards_stim_timing_files/LL_s"${sub_num}".1D \
	/Volumes/LaCie/for_AFNI/processing_scripts/cards_stim_timing_files/NeutW_s"${sub_num}".1D \
-regress_stim_labels neg neut pos \
-regress_basis_multi 'dmBLOCK' 'dmBLOCK' 'dmBLOCK'  \
-regress_stim_types AM1 AM1 AM1 \
-regress_opts_3dD \
-gltsym 'SYM: pos -neut' \
-gltsym 'SYM: neg -neut' \
-gltsym 'SYM: pos -neg' \
-gltsym 'SYM: 0.5*pos +0.5*neg -neut' \
-glt_label 1 Pos-Neut \
-glt_label 2 Neg-Neut \
-glt_label 3 Pos-Neg \
-glt_label 4 PosNeg-Neut \
-regress_censor_motion 0.3 \
-regress_censor_outliers 0.05 \
-regress_motion_per_run \
-regress_3dD_stop \
-regress_reml_exec \
-regress_compute_fitts \
-regress_make_ideal_sum sum_ideal.1D \
-regress_est_blur_epits \
-regress_est_blur_errts \
-regress_run_clustsim no \
-html_review_style pythonic \
-execute \
############################################################
### END ####
done
