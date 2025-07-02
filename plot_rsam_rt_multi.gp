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
set xtics font ", 16"


set yrange [0:20000]
set title "RSAM - last 2 days - UTC"
set mxtics 24
set xrange [ time(0)-2*24*60*60 : time(0)+60*60 ]

while (1) {

	plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBFR_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBFR.EHZ" with lines linewidth 2 ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLG_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLG.EHZ" with lines linewidth 2 ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLY_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLY.EHZ" with lines linewidth 2 ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBBY_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):($1*3) title "MBBY.EHZ" with lines linewidth 2 ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBHA_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):($1*3) title "MBHA.EHZ" with lines linewidth 2 ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBGH_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):($1*3) title "MBGH.EHZ" with lines linewidth 2 ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBWH_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):($1*3) title "MBWH.EHZ" with lines linewidth 2 ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBFL_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBFL.EHZ" with lines linewidth 2

    set key left top left title 'Station' box 3

    pause 60
}
