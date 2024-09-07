#!/bin/bash 
#801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008
########################################################################################
#NAcc
########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
rm WB_*
#
3dmaskave -nball -12 8 -8 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftNAcc_"${subj}".txt
#
3dmaskave -nball 12 8 -8 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightNAcc_"${subj}".txt
#
3dmaskave -nball 12 8 -8 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightNAcc_"${subj}".txt
#
3dmaskave -nball -12 8 -8 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftNAcc_"${subj}".txt
#
cp WB_Anticipate_LeftNAcc_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightNAcc_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftNAcc_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightNAcc_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
#########################################################################################
## BA 9
#########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
rm WB_*
#
3dmaskave -nball -32 33 30 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftBA9_"${subj}".txt
#
3dmaskave -nball 9 32 33 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightBA9_"${subj}".txt
#
3dmaskave -nball 9 32 33 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightBA9_"${subj}".txt
#
3dmaskave -nball -32 33 30 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftBA9_"${subj}".txt
#
cp WB_Anticipate_LeftBA9_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightBA9_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftBA9_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightBA9_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
#########################################################################################
## BA46
#########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
#
rm WB_*
#
3dmaskave -nball -50 38 16 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftBA46_"${subj}".txt
#
3dmaskave -nball 50 38 16 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightBA46_"${subj}".txt
#
3dmaskave -nball 50 38 16 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightBA46_"${subj}".txt
#
3dmaskave -nball -50 38 16 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftBA46_"${subj}".txt
#
cp WB_Anticipate_LeftBA46_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightBA46_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftBA46_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightBA46_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
#########################################################################################
## BA47
#########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
#
rm WB_*
#
3dmaskave -nball -38 24 -11 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftBA47_"${subj}".txt
#
3dmaskave -nball 38 24 -11 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightBA47_"${subj}".txt
#
3dmaskave -nball 38 24 -11 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightBA47_"${subj}".txt
#
3dmaskave -nball -38 24 -11 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftBA47_"${subj}".txt
#
cp WB_Anticipate_LeftBA47_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightBA47_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftBA47_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightBA47_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
#########################################################################################
## BA45
#########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
#
rm WB_*
#
3dmaskave -nball -54 23 10 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftBA45_"${subj}".txt
#
3dmaskave -nball 54 23 10 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightBA45_"${subj}".txt
#
3dmaskave -nball 54 23 10 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightBA45_"${subj}".txt
#
3dmaskave -nball -54 23 10 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftBA45_"${subj}".txt
#
cp WB_Anticipate_LeftBA45_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightBA45_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftBA45_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightBA45_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
#########################################################################################
## BA44
#########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
#
rm WB_*
#
3dmaskave -nball -53 11 12 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftBA44_"${subj}".txt
#
3dmaskave -nball 53 11 12 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightBA44_"${subj}".txt
#
3dmaskave -nball 53 11 12 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightBA44_"${subj}".txt
#
3dmaskave -nball -53 11 12 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftBA44_"${subj}".txt
#
cp WB_Anticipate_LeftBA44_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightBA44_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftBA44_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightBA44_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
#########################################################################################
## BA10
#########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
#
rm WB_*
#
3dmaskave -nball -24 56 6 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftBA10_"${subj}".txt
#
3dmaskave -nball 24 56 6 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightBA10_"${subj}".txt
#
3dmaskave -nball 24 56 6 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightBA10_"${subj}".txt
#
3dmaskave -nball -24 56 6 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftBA10_"${subj}".txt
#
cp WB_Anticipate_LeftBA10_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightBA10_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftBA10_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightBA10_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
#########################################################################################
## BA11
#########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
#
rm WB_*
#
3dmaskave -nball -17 43 -18 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftBA11_"${subj}".txt
#
3dmaskave -nball 17 43 -18 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightBA11_"${subj}".txt
#
3dmaskave -nball 17 43 -18 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightBA11_"${subj}".txt
#
3dmaskave -nball -17 43 -18 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftBA11_"${subj}".txt
#
cp WB_Anticipate_LeftBA11_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightBA11_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftBA11_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightBA11_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
#########################################################################################
## BA32
#########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
#
rm WB_*
#
3dmaskave -nball -8 24 30 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftBA32_"${subj}".txt
#
3dmaskave -nball 8 24 30 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightBA32_"${subj}".txt
#
3dmaskave -nball 8 24 30 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightBA32_"${subj}".txt
#
3dmaskave -nball -8 24 30 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftBA32_"${subj}".txt
#
cp WB_Anticipate_LeftBA32_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightBA32_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftBA32_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightBA32_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
#########################################################################################
## caud
#########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
#
rm WB_*
#
3dmaskave -nball -11 7 9 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftCaud_"${subj}".txt
#
3dmaskave -nball 11 7 9 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightCaud_"${subj}".txt
#
3dmaskave -nball 11 7 9 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightCaud_"${subj}".txt
#
3dmaskave -nball -11 7 9 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftCaud_"${subj}".txt
#
cp WB_Anticipate_LeftCaud_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightCaud_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftCaud_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightCaud_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
#########################################################################################
## insula
#########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
#
rm WB_*
#
3dmaskave -nball -39 -7 9 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftInsula_"${subj}".txt
#
3dmaskave -nball 39 -7 9 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightInsula_"${subj}".txt
#
3dmaskave -nball 39 -7 9 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightInsula_"${subj}".txt
#
3dmaskave -nball -39 -7 9 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftInsula_"${subj}".txt
#
cp WB_Anticipate_LeftInsula_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightInsula_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftInsula_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightInsula_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
#########################################################################################
## insula
#########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
#
rm WB_*
#
3dmaskave -nball -8 32 7 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftACC_"${subj}".txt
#
3dmaskave -nball 8 32 7 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightACC_"${subj}".txt
#
3dmaskave -nball 8 32 7 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightACC_"${subj}".txt
#
3dmaskave -nball -8 32 7 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftACC_"${subj}".txt
#
cp WB_Anticipate_LeftACC_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightACC_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftACC_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightACC_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
#########################################################################################
## amygdala
#########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
#
rm WB_*
#
3dmaskave -nball -23 -5 -15 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftAmygdala_"${subj}".txt
#
3dmaskave -nball 23 -5 -15 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightAmygdala_"${subj}".txt
#
3dmaskave -nball 23 -5 -15 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightAmygdala_"${subj}".txt
#
3dmaskave -nball -23 -5 -15 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftAmygdala_"${subj}".txt
#
cp WB_Anticipate_LeftAmygdala_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightAmygdala_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftAmygdala_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightAmygdala_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
#########################################################################################
## hipp
#########################################################################################
for subj in 801 814 815 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 918 931 932 936 939 942 948 951 990 996 997 998 1008 
do
# Move to subject's data directory (after renaming full model output dir) *********************
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results
#
#
rm WB_*
#
3dmaskave -nball -30 -24 -9 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_LeftHipp_"${subj}".txt
#
3dmaskave -nball 30 -24 -9 4 -dindex 37 stats.s"${subj}"_REML+tlrc > WB_Anticipate_RightHipp_"${subj}".txt
#
3dmaskave -nball 30 -24 -9 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_RightHipp_"${subj}".txt
#
3dmaskave -nball -30 -24 -9 4 -dindex 13 stats.s"${subj}"_REML+tlrc > WB_FB_LeftHipp_"${subj}".txt
#
cp WB_Anticipate_LeftHipp_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_Anticipate_RightHipp_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_LeftHipp_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
cp WB_FB_RightHipp_* /Users/charlesgeier/Downloads/archive_subj/txt_files/updated/
#
done

echo "Extraction of beta values is complete."
##########################################################################################
