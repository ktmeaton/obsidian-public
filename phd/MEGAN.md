# MEGAN

## Summary

MEGAN is software that performs metagenomic analysis on BLAST output.

## Server

MEGAN can be run remotely on a server, sending the graphical output to your local computer.

1. Install software on your local computer to receive graphical output from the remote. ("[[X11 Server]]")
	- Windows: [MobaXterm](https://mobaxterm.mobatek.net/)
	- MacOS: [XQuartz](https://www.xquartz.org/)

1. Connect the remote computer by providing the ```-X``` flag.
	```bash
	# Connecto the remote computer
	ssh -X username@info.mcmaster.ca
	ssh -X info113
	# Run this version of MEGAN
	/home/keaton/myapps/megan6_14_2/MEGAN
	```

The MEGAN GUI will start.

---

tags: [[Tool]]