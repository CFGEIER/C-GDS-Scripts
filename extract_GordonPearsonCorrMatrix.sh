#!/bin/bash

for subj in 1003 1004 1007 1008 1011 1013 1015 1016 1017 1018 1020 1024 1025 1026 1027 1035 1036 1037 1039 1040 1041 1042 1047 1050 1051 1052 1053 1057 1059 1060 1061 1062 1063 1064 1066 1067 1068 1069 1073 1076 1084 1085 1086 1088 1091 1094 1096 1097 1100 1101 1102 1103 1111 1114 1116 1122 1125 1127 1128 1134 1140 1142 1143 1146 1148 1150 1154
do

cp /work/cglab/projects/DORRY/BIDS/xcpd_derivatives/rsW2/sub-"${subj}"/func/sub-"${subj}"_task-rest_space-MNI152NLin2009cAsym_seg-HCP_stat-pearsoncorrelation_relmat.tsv /work/cglab/projects/DORRY/BIDS/xcpd_derivatives/rsW2/GordonPearsonCorrMatrices/

done 
