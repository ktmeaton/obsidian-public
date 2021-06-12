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


## [[Snippy]] Module

1. Clone fork:
```bash
git clone https://github.com/ktmeaton/MultiQC.git
git checkout snippy
```
2. Download test data
```bash
git clone https://github.com/ewels/MultiQC_TestData.git test_data
```
3. Test Minimal
```bash
multiqc test_data/data --ignore test_data/data/modules/

  /// MultiQC 🔍 | v1.11.dev0

| multiqc     | Search path : /mnt/c/Users/ktmea/Programs/MultiQC/test_data/data                         |
| ----------- | ---------------------------------------------------------------------------------------- |
| ⠦ searching | ━━━━━━━━━━━━━━╸━━━━━━━━━━━━━━━━━━━━━━━━━   |
|             |                                                                                          |
```
4. Test Full
```bash
time multiqc --lint test_data/data/modules/ --filename full_report.html
```

---

tags: [[Tool]]