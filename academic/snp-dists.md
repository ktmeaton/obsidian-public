# snp-dists

## Summary

snp-dists is software that creates a [[SNP]] [[Distance Matrix]] from [[Snippy]] output.

## Example

1. Navigate to the [[Plague Denmark]] directory.
	```bash
	cd /home/poinarlab/Projects/Plague/Denmark
	```
1. Activate the [[Snippy]] [[conda]] environment.
	```bash
	conda activate envs/snippy/
	```
1. Run [[snp-dists]] on the [[Snippy]] multi output for the simple placement experiment.
	```bash
	cd snippy/snippy_multi/placement/
    snp-dists raw.full.aln > raw.full.dist
	```
1. Plot the [[Distance Matrix]].
	```
	/home/keaton/scripts/plot_distance_matrix.py -i raw.full.dist -o raw.full.dist.html
	```
1. The interactive [[Distance Matrix]] will be the file ```raw.full.dist.html```.
---

tags: [[Tool]]