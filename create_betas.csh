#!/bin/bash

# Set the list of directories

# Loop through each directory
for subj in 801 814 815 821 823 831 833 834 837 845 848 849 857 858 859 860 864 867 868 878 879 882 883 884 890 893 894 895 899 901 915 916 918 931 932 936 939 942 948 951 990 996 997 998 1008
do  
#801 814 
cd /Users/charlesgeier/Downloads/archive_subj/"${subj}"/s"${subj}".results/
# Run the 3dmaskave commands
3dmaskave -nball -12 8 -8 4 -dindex 37 stats.s"${subj}"_REML+tlrc.BRIK >> WB_Anticipate_LeftNacc.txt
3dmaskave -nball 12 8 -8 4 -dindex 37 stats.s"${subj}"_REML+tlrc.BRIK >> WB_Anticipate_RightNacc.txt
3dmaskave -nball 12 8 -8 4 -dindex 13 stats.s"${subj}"_REML+tlrc.BRIK >> WB_FB_RightNacc.txt
3dmaskave -nball -12 8 -8 4 -dindex 13 stats.s"${subj}"_REML+tlrc.BRIK >> WB_FB_LeftNacc.txt

# Copy the generated txt files to specific directories
#cp WB_Anticipate_LeftNacc_"${subj}".txt /Users/charlesgeier/Downloads/archive_subj/txt_files/one
#cp WB_Anticipate_RightNacc_"${subj}".txt /Users/charlesgeier/Downloads/archive_subj/txt_files/two
#cp WB_FB_RightNacc_"${subj}".txt /Users/charlesgeier/Downloads/archive_subj/txt_files/three
#cp WB_FB_LeftNacc_"${subj}".txt /Users/charlesgeier/Downloads/archive_subj/txt_files/four
#
done
 
echo "Processing complete."

3dmaskave -nball -12 8 -8 4 -dindex 37 stats.sub906_REML+tlrc > WB_Anticipate_LeftNacc_916.txt
3dmaskave -nball 12 8 -8 4 -dindex 37 stats.sub906_REML+tlrc > WB_Anticipate_RightNacc_916.txt
3dmaskave -nball 12 8 -8 4 -dindex 13 stats.sub906_REML+tlrc > WB_FB_RightNacc_916.txt
3dmaskave -nball -12 8 -8 4 -dindex 13 stats.sub906_REML+tlrc > WB_FB_LeftNacc_916.txt
