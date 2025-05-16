#!/usr/bin/gnuplot
# plot_rsam_rt.gp
#
# plots RSAM for last 2 days in real time
#
# R.C. Stewart, 8-Apr-2021

yr=`date +'%Y'`

set terminal qt title "SP RSAM - last 2 days - LIVE" size 2400,900 position 2600,0 font ",24"
set style line 1 lw 3

#set timestamp "%Y-%m-%d %H:%M UTC-4" font ",10"

unset key

#set format x "%H:%M\n%d/%m"
set format x "%H:%M"
set format y ''

set offset 0,0,0.5,0.5

timefmt="%d-%b-%Y"
time0=strptime(timefmt,"01-Jan-2025")
set xdata time
set grid xtics
set xtics out
set xrange [ time(0)-2*24*60*60 : time(0)+60*60 ]
set xtics 4*60*60


set yrange [0:]

set multiplot layout 2, 1

set title "MSS1.SHZ RSAM"
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MSS1_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 with lines ls 1

set title "MBLY.SHZ RSAM"
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLY_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 with lines ls 1

unset multiplot

pause 60
reread

