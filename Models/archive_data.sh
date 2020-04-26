#!/bin/sh
# move files and put them in Historic archive
# usage: archive_data.sh 4-25-2020 

for filename in model?tc.txt
do 
    cp "${filename}" "Historic/${filename%.txt}-$1.txt"    
done

for filename in model?fit.txt
do 
    cp "${filename}" "Historic/${filename%.txt}-$1.txt"    
done

for filename in model*RelaxSim.txt
do 
    cp "${filename}" "Historic/${filename%.txt}-$1.txt"    
done
