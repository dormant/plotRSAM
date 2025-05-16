# plot_rsam.plt
#
# R.C. Stewart, 8-Apr-2021

#set terminal qt
set terminal png size 1200,1800 font "Arial,18"
set output './fig_rsam.png'

set key left top horizontal

set xdata time
set timefmt "%s"
set format x "%d/%m"
set format y ''

set timestamp "%Y-%m-%d %H:%M UTC-4" font ",10"

unset yrange


timefmt="%d-%b-%Y"
time0=strptime(timefmt,"01-Jan-2025")
set xdata time
set grid xtics
set xtics out left
set xrange [ time(0)-4*24*60*60 : time(0)+60*60 ]
set xtics 24*60*60

#set mxtics 4
#set mxtics 6
set mxtics 24
set multiplot layout 5, 1 title "RSAM - last four days - UTC"
#set yrange [0:200]
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MSS1_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MSS1.SHZ" with lines
#set yrange [0:2000]
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBRY_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBRY.SHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBRY_BHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBRY.BHZ" with lines
#set yrange [0:4000]
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLG_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLG.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLG_HHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLG.HHZ" with lines
#set yrange [0:1000]
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBWH_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBWH.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBWH_HHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBWH.HHZ" with lines
#unset yrange
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBRV_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBRV.SHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBRV_BHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBRV.BHZ" with lines
unset multiplot

