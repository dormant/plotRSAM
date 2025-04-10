# plotRSAM

Gnuplot scripts for plotting RSAM data.


## plot_rsam_here.plt

* Plots RSAM in local directory.
* Used as a testbed.

## plot_rsam.plt, plot_rsam_multi.plt

* Create plots accessed through *notWebobs*.
* Run every 5 minutes as cronjob on *opsproc3*. 

## plot_rsam_rt.gp, plot_rsam_rt_lahar.gp

* Real time plots of RSAM data.
* *plot_rsam_rt.gp* shows last two days of data.
* *plot_rsam_rt_lahar.gp* shows last 12 hours of data.
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
