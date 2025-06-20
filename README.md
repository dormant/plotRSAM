# plotRSAM

## ~/src/plotRSAM

Gnuplot scripts for plotting RSAM data. XX

## Important note

All these scripts need to be edited at the turn of the year.

## plot_rsam_here.plt

* Plots RSAM in local directory.
* Used as a testbed.

## plot_rsam.plt, plot_rsam_multi.plt

* Create plots accessed through *notWebobs*: : http://webobs.mvo.ms:8080/mvofls2/monitoring_data/rsam/plots/.
* Run every 5 minutes as cronjob on *opsproc3*.
```
# Create plots of recent RSAM
*/5 * * * * /usr/bin/gnuplot /home/seisan/src/plotRSAM/plot_rsam.plt >/dev/null 2>&1; /usr/bin/gnuplot /home/seisan/src/plotRSAM/plot_rsam_multi.plt >/dev/null 2>&1
```

## plot_rsam_rt.gp, plot_rsam_rt_lahar.gp, plot_rsam_rt_multi.gp

* Real time plots of RSAM data.
* *plot_rsam_rt.gp* shows last two days of data.
* *plot_rsam_rt_lahar.gp* shows last 12 hours of data.
* *plot_rsam_rt_multi.gp* shows last 2 days of data for Radian stations.
* Runs on one of display computers in Ops Room.

## Author

Roderick Stewart, Dormant Services Ltd

rod@dormant.org

https://services.dormant.org/

## Version History

* 1.0-dev
    * Working version

## License

This project is the property of Montserrat Volcano Observatory.
