#!/usr/bin/gnuplot -persist
#

set style line 1 \
    linecolor rgb '#0060ad' \
    linetype 1 linewidth 3 \
    pointtype 7 pointsize 1.5
set style line 2 \
    linecolor rgb '#dd181f' \
    linetype 1 linewidth 3 \
    pointtype 5 pointsize 1.5

set terminal pngcairo size 1280,1024 font ("Arial,24")
set output "../../Report/UCH-Forecast-4-25-2020.png"

    
set key below font "Arial,18"
set yrange[0:70]
set xrange[0:70]
set grid
set xtics( "3/8" 0, "3/15" 7, "3/22" 14, "3/29" 21, "4/5" 28, "4/12" 35, "4/19" 42, "4/26" 49, "5/3" 56, "5/10" 63, "5/17" 70, "5/24" 77)
plot "CT-Hartford-COVID19.tsv" u 1:4 ls 1 t "JDH Census", \
      "model3Hfit.txt" u 1:9 w lines ls 1 t "", \
      "TStoch-3-48.tsv"  using 1:2:3 with yerrorbars ls 2 t "Forecast", \
      "" u 1:2 w lines ls 2 t ""
      
set output
set term qt