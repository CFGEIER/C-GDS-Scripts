#!/bin/bash

# =============================================================================
# Extract KidVid ROI betas with AFNI 3dmaskave
# Array-driven: edit the three CONFIG arrays below; the loop never needs touching.
# =============================================================================

# ---- CONFIG -----------------------------------------------------------------

# Subjects to process
subjects=(016 019 021 024 029 049 050 054 063 068 069 070 073 074 078 084 \
          090 091 095 096 100 102 104 107 110 111 113 117 119 121 122 125 \
          128 143 145 178 181 182 184 189 191 192 195 200 211 212 215 221 \
          231 235 238 244 245 246 248 249 253 256 266 273 286 289 294 304)

# Sphere radius in mm, applied to every ROI. Change once to rescale all spheres.
radius=5

# Label embedded in every output filename (…_Table1_<subj>.txt)
table=Table3

# Path to each subject's stats dataset, given the subject ID as $1.
# >>> EDIT THIS ONE LINE to match where your files live and how they're named. <<<
# Current default: file sits in the current directory as  stats.sub-<ID>_REML+tlrc
# Common alternatives:
#   afni_proc.py output in per-subject subdirs:
#     echo "subj${1}.results/stats.s${1}_REML+tlrc"
#   a shared results folder:
#     echo "/path/to/derivatives/stats.s${1}_REML+tlrc"
dset_path () { echo "stats.sub-${1}_REML+tlrc"; }

# Condition / sub-brick pairs: "<sub-brick index>  <condition label>"
# Edit here to change the sub-brick spacing or the set of conditions.
conditions=(
  "1  Negative"
  "4  Neutral"
  "7  Positive"
  "10 Pos-Neut"
  "13 Neg-Neut"
  "16 Pos-Neg"
  "19 PosNeg-Neut"
)

# ROIs: "<name>  <x>  <y>  <z>"  (coordinates in the dataset's -nball order).
# Add, remove, or reorder ROIs here — nothing else changes.
### Table 1 ROIs
#rois=(
#  "Right_Amygdala_1        19.7125  -3.32259  -9.6058"
#  "Left_Amygdala_2        -15.4372  -3.79633  -11.8469"
#  "Right_Fusiform_Gyrus_3  38.2073  -40.7681  -10.2586"
#  "Right_STS_4             45.5499  -36.6363   13.0557"
#  "Left_Fusiform_Gyrus_5  -38.1522  -45.0617  -10.6642"
#  "Right_Amygdala_6        19.7125  -3.32259  -9.60583"
#  "Right_Fusiform_Gyrus_7  38.2073  -40.7681  -10.2586"
#  "Right_Thalamus_8        22.3051  -23.6642   0.537244"
#  "Right_Amygdala_9        21.6001  -3.34834  -9.53736"
#  "Left_Amygdala_10       -15.4313  -3.81111  -10.004"
#  "Right_STS_11            47.1979  -40.4409   14.6933"
#  "Left_Fusiform_Gyrus_12 -38.1522  -45.0617  -10.6642"
#  "Right_vlPFC_13          48.0507   34.7962   20.2544"
#  "Right_Fusiform_Gyrus_14 38.0632  -40.5244  -12.1869"
#  "Right_Amygdala_15       21.6001  -3.34834  -9.53736"
#  "Right_Thalamus_16       22.3051  -23.6642   0.537244"
#  "Right_vlPFC_17          38.2556   19.8535   17.9006"
#  "Left_vlPFC_18          -35.0671   17.9601   25.1619"
#  "Left_Amygdala_19       -17.2751  -7.47663  -8.00965"
#  "Right_Amygdala_20       23.4108  -7.21848  -7.71913"
#  "Right_STS_21            47.1259  -42.2481   14.4942"
#  "Right_Amygdala_22       21.6474  -3.34589  -7.75194"
#  "Right_Thalamus_23       23.8441  -27.4284  -1.01388"
#  "Right_STS_24            50.5507  -41.4392   13.0622"
#)

## Table 2 ROIs
#rois=(
#  "Left_SuperiorFrontal_Gyrus_25       -6.21255  11.2128  58.4621"
#  "Left_Middle_Temporal_Gyrus_26       -50.2752  -34.3533  1.49271"
#  "Left_Middle_Frontal_Gyrus_27        -39.6104  4.0857  44.7871"
#  "Right_Supramarginal_Gyrus_28        53.7597  -51.1935  32.4707"
#)

### Table 3 ROIs
rois=(
  "Left_Amygdala_29      -17.1549  -0.0709146  -6.28429"
  "Right_Inferior_Temporal_Gyrus_30      44.393  -62.8215  1.27202"
  "Right_Amygdala_31      19.7243  -0.018624  -13.2112"
  "Left_Inferior_Temporal_Gyrus_32      -41.8268  -72.5989  0.013058"
  "Right_STS_33      46.9084  -27.7251  3.64878"
  "Left_Superior_Parietal_Lobule_34      -26.7872  -43.1857  45.0822"
  "Left_Thalamus_35      -1.25967  -8.52835  9.26892"
  "Left_STS_36      -49.9857  -24.5555  -0.440431"
  "Left_Amygdala_37      -17.2626  -0.0506577  -8.1953"
  "Right_STS_38      47.0646  -25.676  1.78253"
  "Right_Middle_Temporal_Gyrus_39      44.393  -62.8215  1.27202"
  "Left_Fusiform_Gyrus_40      -38.673  -46.7509  -8.39496"
  "Left_Superior_Parietal_Lobule_41      -26.7872  -43.1857  45.0822"
)

# ---- EXTRACTION -------------------------------------------------------------

for subj in "${subjects[@]}"; do
  dset=$(dset_path "$subj")

  # Skip this subject (don't crash the whole run) if the dataset isn't found.
  # +tlrc datasets are a .HEAD/.BRIK pair; NIfTI is a single .nii/.nii.gz file.
  if [[ ! -e "${dset}.HEAD" && ! -e "$dset" ]]; then
    echo "ERROR: dataset not found for subject $subj -> '$dset' (looked for '${dset}.HEAD'). Skipping." >&2
    continue
  fi

  for roi in "${rois[@]}"; do
    read -r name x y z <<< "$roi"          # split ROI entry into name + coords

    for cond in "${conditions[@]}"; do
      read -r idx label <<< "$cond"        # split condition entry into index + label

      3dmaskave -nball "$x" "$y" "$z" "$radius" -dindex "$idx" "$dset" \  ### This is the main AFNI command to extract average beta
        > "${name}_${label}_${table}_${subj}.txt"
    done
  done
done

echo "Processing complete."

# ---- COLLATE .txt FILES INTO ONE CSV ----------------------------------------
# Columns are grouped by condition (outer) then region (inner), so all the
# Negative columns come first, then all Neutral, etc. — matching the arrays above.

out_csv=KidVid_ROI_betas.csv

# --- Header row ---
{
  printf 'subject_number'
  for cond in "${conditions[@]}"; do
    read -r idx label <<< "$cond"
    for roi in "${rois[@]}"; do
      read -r name x y z <<< "$roi"
      printf ',%s_%s' "$name" "$label"
    done
  done
  printf '\n'
} > "$out_csv"

# --- One data row per subject ---
for subj in "${subjects[@]}"; do
  printf '%s' "$subj"
  for cond in "${conditions[@]}"; do
    read -r idx label <<< "$cond"
    for roi in "${rois[@]}"; do
      read -r name x y z <<< "$roi"
      f="${name}_${label}_${table}_${subj}.txt"
      if [[ -r "$f" ]]; then
        # 3dmaskave writes "<mean> [<n> voxels]"; take the first token of the
        # last non-empty line (format-agnostic).
        val=$(awk 'NF{v=$1} END{print v}' "$f")
        [[ -z "$val" ]] && { val=NA; echo "WARNING: empty file $f" >&2; }
      else
        val=NA
        echo "WARNING: missing file $f" >&2
      fi
      printf ',%s' "$val"
    done
  done
  printf '\n'
done >> "$out_csv"

echo "Wrote $out_csv"

# ---- CLEANUP OF PER-ROI .txt FILES ------------------------------------------
# The extraction produces one tiny .txt per subject/region/condition
# (subjects x rois x conditions files). Once they're safely in the CSV they
# just clutter the directory, so optionally remove or archive them.
#
# cleanup_mode:
#   delete  = remove the .txt files (frees space; recoverable only by re-running)
#   archive = tar them into KidVid_txt_archive.tar.gz, then remove the loose files
#   none    = keep everything
cleanup_mode=delete

if [[ "$cleanup_mode" != none ]]; then
  # SAFETY GATE: only clean up if the CSV is present and has a row per subject
  # (header + one line per subject). Otherwise leave every .txt in place.
  expected_rows=$(( ${#subjects[@]} + 1 ))
  actual_rows=$(wc -l < "$out_csv" 2>/dev/null || echo 0)

  if [[ -s "$out_csv" && "$actual_rows" -eq "$expected_rows" ]]; then
    # Build the exact list of files THIS script created — nothing else is touched.
    list=$(mktemp)
    for subj in "${subjects[@]}"; do
      for cond in "${conditions[@]}"; do
        read -r idx label <<< "$cond"
        for roi in "${rois[@]}"; do
          read -r name x y z <<< "$roi"
          f="${name}_${label}_${table}_${subj}.txt"
          [[ -e "$f" ]] && printf '%s\n' "$f"
        done
      done
    done > "$list"
    n=$(wc -l < "$list")

    if [[ "$n" -gt 0 ]]; then
      if [[ "$cleanup_mode" == archive ]]; then
        if tar -czf KidVid_txt_archive.tar.gz -T "$list"; then
          xargs rm -f < "$list"
          echo "Cleanup: archived $n .txt file(s) to KidVid_txt_archive.tar.gz, removed loose copies"
        else
          echo "Cleanup SKIPPED: archiving failed; .txt files left in place." >&2
        fi
      else  # delete
        xargs rm -f < "$list"
        echo "Cleanup: removed $n .txt file(s); kept $out_csv"
      fi
    else
      echo "Cleanup: no matching .txt files found to remove."
    fi
    rm -f "$list"
  else
    echo "Cleanup SKIPPED: $out_csv has $actual_rows row(s), expected $expected_rows. Leaving .txt files in place so nothing is lost." >&2
  fi
fi
