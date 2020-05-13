#!/usr/bin/gnuplot -persist
#

set style line 1 \
    linecolor rgb '#0060ad' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5
set style line 2 \
    linecolor rgb '#dd181f' \
    linetype 1 linewidth 3 \
    pointtype 5 pointsize 1
set style line 3 \
    linecolor rgb '#a61219' \
    linetype 1 linewidth 3 \
    pointtype 5 pointsize 1

set terminal pngcairo size 1280,1024 font ("Arial,24")
set output "../../Report/UCH-Forecast-5-11-2020.png"

set style fill transparent solid 0.15 noborder
    
set key below font "Arial,18"
set yrange[0:70]
set xrange[0:91]
set grid
set xtics( "3/8" 0, "3/15" 7, "3/22" 14, "3/29" 21, "4/5" 28, "4/12" 35, "4/19" 42, "4/26" 49, "5/3" 56, "5/10" 63, "5/17" 70, "5/24" 77, "5/31" 84, "6/7" 91)
plot "CT-Hartford-COVID19.tsv" u 1:4 ls 1 t "JDH Census", \
      "model4Hfit.txt" u 1:9 w lines ls 1 t "", \
      "TStoch-4-64.tsv" using 1:4:5 with filledcurves ls 2 t "", \
      "TStoch-4-64.tsv"  using 1:2:3 with yerrorbars ls 3 t "", \
      "" u 1:2 w lines ls 2 t "Forecast"

#      "TStoch-4-62.tsv"  using 1:($2-$3):($2+$3) with filledcurves ls 3 t "", \
#      "TStoch-4-60.tsv" using 1:6:7 with filledcurves ls 3 t "" , \

      
set output
set term qt