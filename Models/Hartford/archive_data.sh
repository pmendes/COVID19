#!/bin/sh
# move files to Historic folder
# usage archive_data.sh 4-25-2020
for filename in model?*.txt
do
    cp "${filename}" "Historic/${filename%.txt}-$1.txt"
done

for filename in T?toch*.tsv
do 
    mv "${filename}" "Historic/"
done
