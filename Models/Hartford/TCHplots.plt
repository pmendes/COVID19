#!/usr/bin/gnuplot -persist
#
#    
#    	G N U P L O T
#    	Version 5.0 patchlevel 3    last modified 2016-02-21 
#    
#    	Copyright (C) 1986-1993, 1998, 2004, 2007-2016
#    	Thomas Williams, Colin Kelley and many others
#    
#    	gnuplot home:     http://www.gnuplot.info
#    	faq, bugs, etc:   type "help FAQ"
#    	immediate help:   type "help"  (plot window: hit 'h')
# set terminal qt 0 font "Sans,9"
# set output
unset clip points
set clip one
unset clip two
set bar 1.000000 front
set border 31 front lt black linewidth 1.000 dashtype solid
set zdata 
set ydata 
set xdata 
set y2data 
set x2data 
set boxwidth
set style fill  empty border
set style rectangle back fc  bgnd fillstyle   solid 1.00 border lt -1
set style circle radius graph 0.02, first 0.00000, 0.00000 
set style ellipse size graph 0.05, 0.03, first 0.00000 angle 0 units xy
set dummy x, y
set format x "% h" 
set format y "% h" 
set format x2 "% h" 
set format y2 "% h" 
set format z "% h" 
set format cb "% h" 
set format r "% h" 
set timefmt "%d/%m/%y,%H:%M"
set angles radians
set tics back
unset grid
set raxis
set style parallel front  lt black linewidth 2.000 dashtype solid
set key title "" center
set key inside right top vertical Right noreverse enhanced autotitle nobox
set key noinvert samplen 4 spacing 1 width 0 height 0 
set key maxcolumns 0 maxrows 0
set key noopaque
unset key
unset label
unset arrow
set style increment default
unset style line
unset style arrow
set style histogram clustered gap 2 title textcolor lt -1
unset object
set style textbox transparent margins  1.0,  1.0 border
unset logscale
set logscale y 10
set offsets 0, 0, 0, 0
set pointsize 1
set pointintervalbox 1
set encoding default
unset polar
unset parametric
unset decimalsign
set view 60, 30, 1, 1
set samples 100, 100
set isosamples 10, 10
set surface 
unset contour
set cntrlabel  format '%8.3g' font '' start 5 interval 20
set mapping cartesian
set datafile separator whitespace
unset hidden3d
set cntrparam order 4
set cntrparam linear
set cntrparam levels auto 5
set cntrparam points 5
set size ratio 0 1,1
set origin 0,0
set style data points
set style function lines
unset xzeroaxis
unset yzeroaxis
unset zzeroaxis
unset x2zeroaxis
unset y2zeroaxis
set xyplane relative 0.5
set tics scale  1, 0.5, 1, 1, 1
set mxtics default
set mytics default
set mztics default
set mx2tics default
set my2tics default
set mcbtics default
set mrtics default
set xtics border in scale 1,0.5 mirror norotate  autojustify
set xtics  norangelimit autofreq 
set ytics border in scale 1,0.5 mirror norotate  autojustify
set ytics  norangelimit autofreq 
set ztics border in scale 1,0.5 nomirror norotate  autojustify
set ztics  norangelimit autofreq 
unset x2tics
unset y2tics
set cbtics border in scale 1,0.5 mirror norotate  autojustify
set cbtics  norangelimit autofreq 
set rtics axis in scale 1,0.5 nomirror norotate  autojustify
set rtics  norangelimit autofreq 
unset paxis 1 tics
unset paxis 2 tics
unset paxis 3 tics
unset paxis 4 tics
unset paxis 5 tics
unset paxis 6 tics
unset paxis 7 tics
set title "" 
set title  font "" norotate
set timestamp bottom 
set timestamp "" 
set timestamp  font "" norotate
set rrange [ * : * ] noreverse nowriteback
set trange [ * : * ] noreverse nowriteback
set urange [ * : * ] noreverse nowriteback
set vrange [ * : * ] noreverse nowriteback
set xlabel "" 
set xlabel  font "" textcolor lt -1 norotate
set x2label "" 
set x2label  font "" textcolor lt -1 norotate
set xrange [ * : * ] noreverse nowriteback
set x2range [ * : * ] noreverse nowriteback
set ylabel "" 
set ylabel  font "" textcolor lt -1 rotate by -270
set y2label "" 
set y2label  font "" textcolor lt -1 rotate by -270
set yrange [ * : * ] noreverse nowriteback
set y2range [ * : * ] noreverse nowriteback
set zlabel "" 
set zlabel  font "" textcolor lt -1 norotate
set zrange [ * : * ] noreverse nowriteback
set cblabel "" 
set cblabel  font "" textcolor lt -1 rotate by -270
set cbrange [ * : * ] noreverse nowriteback
set paxis 1 range [ * : * ] noreverse nowriteback
set paxis 2 range [ * : * ] noreverse nowriteback
set paxis 3 range [ * : * ] noreverse nowriteback
set paxis 4 range [ * : * ] noreverse nowriteback
set paxis 5 range [ * : * ] noreverse nowriteback
set paxis 6 range [ * : * ] noreverse nowriteback
set paxis 7 range [ * : * ] noreverse nowriteback
set zero 1e-08
set lmargin  -1
set bmargin  -1
set rmargin  -1
set tmargin  -1
set locale "en_US"
set pm3d explicit at s
set pm3d scansautomatic
set pm3d interpolate 1,1 flush begin noftriangles noborder corners2color mean
set palette positive nops_allcF maxcolors 0 gamma 1.5 color model RGB 
set palette rgbformulae 7, 5, 15
set colorbox default
set colorbox vertical origin screen 0.9, 0.2, 0 size screen 0.05, 0.6, 0 front bdefault
set style boxplot candles range  1.50 outliers pt 7 separation 1 labels auto unsorted
set loadpath 
set fontpath 
set psdir
set fit brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
GNUTERM = "qt"
x = 0.0

unset logscale

set style line 1 lc rgb '#0000ff' lt 6 ps 1 lw 2 dt 1 
set style line 2 lc rgb '#ff0000' lt 1 ps 2 lw 2 dt 1 
set style line 3 lc rgb '#1B9E77' lt 1 ps 2 lw 2 dt 1 
set style line 4 lc rgb '#000000' lt 1 ps 2 lw 2 dt 1 
set style line 5 lc rgb '#070707' lt 1 ps 2 lw 1 dt 2 
set style line 6 lc rgb '#070707' lt 1 ps 2 lw 1 dt 1 
set style line 7 lc rgb '#0A0A0A' lt 1 ps 2 lw 8 dt 1 

set ylabel "#"
set xlabel "time (d)"
set ytics nomirror
set xrange[0:200]
unset grid
set style data lines

set terminal pngcairo size 1280,900
set output "../../Report/TC-H-4-25-2020.png"

set multiplot layout 2,2

set label "A"  at screen 0.04,0.97 font "Arial,22" 
set label "B"  at screen 0.54,0.97 font "Arial,22" 
set key top right

set arrow 1 from 48, graph 0 to 48, graph 1 nohead linestyle 5

unset key
set title "Model 3H"
set xtics (0,30,60,90,120,150,180) nomirror
set arrow 2 from 45, 0 to 45, 417 linestyle 6
plot 'model3Htc.txt' u 1:10 ls 1 t "total infected", "" u 1:5 ls 2 t "known infected", "" u 1:19 ls 3 t "hospitalized", "" u 1:7 ls 4 t "dead"
unset arrow 2
set xtics (0,30,52,60,90, 120,150,180) nomirror
set arrow 2 from 47, 0 to 47, 437 linestyle 6
set title "Model 4H"
plot 'model4Htc.txt' u 1:10 ls 1 t "total infected", "" u 1:5 ls 2 t "known infected", "" u 1:19 ls 3 t "hospitalized", "" u 1:7 ls 4 t "dead"
unset arrow 2
set xtics (0,30,44,60, 90,120,150,180) nomirror
set arrow 2 from 177, 0 to 177, 4766 linestyle 6
set title "Model 5H"
plot 'model5Htc.txt' u 1:10 ls 1 t "total infected", "" u 1:5 ls 2 t "known infected", "" u 1:19 ls 3 t "hospitalized", "" u 1:7 ls 4 t "dead"
unset title
unset arrow 2
unset arrow 1
unset xlabel
unset ylabel
unset border
unset xtics
unset ytics
set key center center
plot '-' u 1:2 ls 1 t "total infected", "" u 1:3 ls 2 t "known infected", "" u 1:4 ls 3 t "hospitalized", "" u 1:5 ls 4 t "dead"
0 0 0 0 0
e
0 0 0 0 0
e
0 0 0 0 0
e
0 0 0 0 0
e
unset multiplot
unset label


set terminal pngcairo size 1280,900
set output "../../Report/Brackets-H-4-25-2020.png"
set multiplot layout 2,2

set border
set xtics
set ytics

set arrow 1 from 48, graph 0 to 48, graph 1 nohead linestyle 5
set label "A"  at screen 0.04,0.97 font "Arial,22" 
set label "B"  at screen 0.54,0.97 font "Arial,22" 
set label "C"  at screen 0.04,0.47 font "Arial,22" 
set label "D"  at screen 0.54,0.47 font "Arial,22" 
unset arrow 2
set key bottom right
set xtics (0,30,60,90,120,150,180) nomirror
set title "Total Infected"
plot 'model3Htc.txt' u 1:10 ls 1 t "Model 3H", 'model4Htc.txt' u 1:10 ls 2 t "Model 4H",  'model5Htc.txt' u 1:10 ls 3 t "Model 5H"
unset key
set title "Known Infected"
plot 'model3Htc.txt' u 1:5 ls 1, 'model4Htc.txt' u 1:5 ls 2, 'model5Htc.txt' u 1:5 ls 3
set arrow 3 from 45, 00 to 177, 00 linestyle 7 nohead
set arrow 4 from 0, 417 to 0, 4766 linestyle 7 nohead
set title "Hospitalized"
plot 'model3Htc.txt' u 1:19 ls 1, 'model4Htc.txt' u 1:19 ls 2, 'model5Htc.txt' u 1:19 ls 3
unset arrow 3
unset arrow 4
set title "Dead"
plot 'model3Htc.txt' u 1:7 ls 1, 'model4Htc.txt' u 1:7 ls 2, 'model5Htc.txt' u 1:7 ls 3
unset multiplot

set output
set term qt

#    EOF
