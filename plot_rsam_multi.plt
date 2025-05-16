# plot_rsam.plt
#
# plots RSAM for last 5 days
#
# R.C. Stewart, 8-Apr-2021

#set terminal qt
set terminal png size 1200,1200 font "Arial,18"
set output '/mnt/mvofls2/Seismic_Data/monitoring_data/rsam/plots/fig_rsam_multi_5.png'

set key left top vertical

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
set xrange [ time(0)-5*24*60*60 : time(0)+60*60 ]
set xtics 24*60*60

set yrange [0:]

set title "RSAM - last 5 days - UTC"
set mxtics 6
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MSS1_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):($1*5) title "MSS1.SHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBFR_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBFR.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLG_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLG.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLY_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLY.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBRY_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):($1*2) title "MBRY.SHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBWH_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):($1*3) title "MBWH.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBFL_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBFL.EHZ" with lines

set title "RSAM - last 2 days - UTC"
set output '/mnt/mvofls2/Seismic_Data/monitoring_data/rsam/plots/fig_rsam_multi_2.png'
set mxtics 24
set xrange [ time(0)-2*24*60*60 : time(0)+60*60 ]
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MSS1_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):($1*5) title "MSS1.SHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBFR_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBFR.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLG_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLG.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLY_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLY.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBRY_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):($1*2) title "MBRY.SHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBWH_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):($1*3) title "MBWH.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBFL_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBFL.EHZ" with lines

set title "RSAM - last 10 days - UTC"
set output '/mnt/mvofls2/Seismic_Data/monitoring_data/rsam/plots/fig_rsam_multi_10.png'
set mxtics 4
set xrange [ time(0)-10*24*60*60 : time(0)+60*60 ]
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MSS1_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):($1*5) title "MSS1.SHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBFR_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBFR.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLG_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLG.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLY_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLY.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBRY_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):($1*2) title "MBRY.SHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBWH_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):($1*3) title "MBWH.EHZ" with lines ,\
	'/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBFL_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBFL.EHZ" with lines
