#!/bin/sh
# move files and put them 
for filename in model?*.txt
do 
    cp "${filename}" "Historic/${filename%.txt}-$1.txt"    
done

for filename in Tstoch*.tsv
do 
    cp "${filename}" "Historic/${filename%.tsv}-$1.tsv"    
done
