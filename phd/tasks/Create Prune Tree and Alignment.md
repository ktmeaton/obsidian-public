---
project: [[plague-phylogeography]]
due: 2021-04-27
people:
tags: ⬜/✨ 
status: done
title: Create Prune Tree and Alignment
type: [[Task]]
---

# Create Prune Tree and Alignment

## Prune

- [x] Prune IQTREE and Alignment, No Outgroup
	```bash
	snakemake iqtree_filter_prune_all -np --profile profiles/infoserv
	```
- [ ] Full IQTREE and Alignment, No Outgroup
	```bash
	snakemake iqtree_filter_all -np --profile profiles/infoserv
	```
	
## Placement Test

- [x] Full Dataset
	- [x] IQTREE No Outgroup
	![[Pasted image 20210427141723.png|500]]
	- [x] Alignment No Outgroup
	![[Pasted image 20210427141800.png|500]]
	- [x] LSD2 No Outgroup
	![[Pasted image 20210427141912.png|500]]
	- [ ] Alignment by Clade

- [x] Prune Dataset
	- [x] IQTREE No Outgroup
	![[Pasted image 20210427143128.png]]
	- [x] Alignment No Outgroup
	- [x] LSD2 No Outgroup

## Share

- Commit #
- [ ] tree.nwk:
	```bash
	cp iqtree/all/chromosome/prune/filter5/filter-taxa/iqtree.treefile share/tree.nwk
	````
- [ ] dates.txt
	```bash
	tail -n+2 resultsiqtree/all/chromosome/prune/filter5/filter-taxa/metadata.tsv | cut -f 1
	```
- [ ] constant-sites.txt
	```bash
	cp snippy_multi/all/chromosome/full/snippy-multi.constant_sites.txt share/constant-sites.txt
	```
- [ ] aln.fasta
	```bash
	cp iqtree/all/chromosome/prune/filter5/filter-sites/snippy-multi.snps.aln share/aln.fasta
	````