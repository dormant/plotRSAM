# plot_rsam.plt
#
# plots RSAM for last 5 days
#
# R.C. Stewart, 8-Apr-2021

#set terminal qt
set terminal png size 1200,1200 font "Arial,18"
set output '/mnt/mvofls2/Seismic_Data/monitoring_data/rsam/plots/fig_rsam_5.png'

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
set xrange [ time(0)-5*24*60*60 : time(0)+60*60 ]
set xtics 24*60*60

set yrange [0:]

set mxtics 6
set multiplot layout 3, 1 title "RSAM - last 5 days - UTC"
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MSS1_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MSS1.SHZ" with lines
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLG_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLG.EHZ" with lines
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLY_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLY.EHZ" with lines
unset multiplot

set output '/mnt/mvofls2/Seismic_Data/monitoring_data/rsam/plots/fig_rsam_2.png'

set mxtics 24
set xrange [ time(0)-2*24*60*60 : time(0)+60*60 ]
set multiplot layout 3, 1 title "RSAM - last 2 days - UTC"
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MSS1_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MSS1.SHZ" with lines
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLG_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLG.EHZ" with lines
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLY_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLY.EHZ" with lines
unset multiplot

set output '/mnt/mvofls2/Seismic_Data/monitoring_data/rsam/plots/fig_rsam_10.png'

set mxtics 4
set xrange [ time(0)-10*24*60*60 : time(0)+60*60 ]
set multiplot layout 3, 1 title "RSAM - last 10 days - UTC"
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MSS1_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MSS1.SHZ" with lines
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLG_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLG.EHZ" with lines
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLY_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLY.EHZ" with lines
unset multiplot

set output '/mnt/mvofls2/Seismic_Data/monitoring_data/rsam/plots/fig_rsam_1.png'

set mxtics 24
set xrange [ time(0)-24*60*60 : time(0)+60*60 ]
set multiplot layout 3, 1 title "RSAM - last day - UTC"
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MSS1_SHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MSS1.SHZ" with lines
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLG_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLG.EHZ" with lines
plot '/mnt/earthworm3/monitoring_data/rsam/2025_rsam_MBLY_EHZ_60sec.dat' binary format="%int32" using (time0+$0*60.):1 title "MBLY.EHZ" with lines
unset multiplot
