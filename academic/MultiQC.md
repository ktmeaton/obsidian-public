# MultiQC

## Summary

Multiple Quality Control.

## Example

1. Navigate to the [[Plague Denmark]] directory.
	```bash
	cd /home/poinarlab/Projects/Plague/Denmark
	```
1. Activate the [[Quality Control]] [[conda]] environment.
	```bash
	conda activate envs/qc/
	```
1. Run [[MultiQC]] on the mapping output directory.
	```bash
	multiqc mapping/Plague/merged/ -o multiqc/ -n report.html
	```
	
1. The report can be found at ```multiqc/report.html```.

---

tags: [[Tool]]