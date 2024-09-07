#!/bin/bash

# List of files
files=(
    "s801_FWHMx.txt" 
    "s814_FWHMx.txt" 
    "s815_FWHMx.txt" 
	"s823_FWHMx.txt" 
    "s831_FWHMx.txt" 
    "s833_FWHMx.txt"
    "s834_FWHMx.txt" 
	"s837_FWHMx.txt"
	"s845_FWHMx.txt"
    "s848_FWHMx.txt" 
    "s849_FWHMx.txt" 
    "s857_FWHMx.txt" 
    "s858_FWHMx.txt" 
	"s859_FWHMx.txt"
    "s860_FWHMx.txt" 
	"s864_FWHMx.txt"
	"s867_FWHMx.txt"
	"s868_FWHMx.txt"
    "s878_FWHMx.txt" 
    "s879_FWHMx.txt" 
    "s882_FWHMx.txt" 
    "s883_FWHMx.txt" 
    "s884_FWHMx.txt" 
    "s890_FWHMx.txt" 
    "s893_FWHMx.txt" 
    "s894_FWHMx.txt" 
    "s895_FWHMx.txt" 
    "s899_FWHMx.txt" 
    "s901_FWHMx.txt" 
    "s918_FWHMx.txt" 
    "s931_FWHMx.txt" 
    "s932_FWHMx.txt" 
    "s936_FWHMx.txt" 
    "s939_FWHMx.txt" 
    "s942_FWHMx.txt" 
    "s948_FWHMx.txt"
    "s951_FWHMx.txt" 
    "s990_FWHMx.txt" 
    "s996_FWHMx.txt" 
    "s997_FWHMx.txt" 
    "s998_FWHMx.txt"
   "s1008_FWHMx.txt" 
)

# Output file
output_file="OUTPUT_FWHM.txt"

# Empty the output file
> "$output_file"

# Loop through each file and extract the second row
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        # Extract the second row and append it to the output file
        second_row=$(sed -n '2p' "$file")
        echo "$file: $second_row" >> "$output_file"
    else
        echo "$file: File not found" >> "$output_file"
    fi
done

echo "Extraction complete. Results are saved in $output_file."

