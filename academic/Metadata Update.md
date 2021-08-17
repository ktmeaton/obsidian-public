---
aliases:
  - Metadata Update
tags: 
 - 📝/🌱 
 - ✨  
status: done
type: [[Task]]
due: 2021-08-12
---

# Metadata Update

This is how to update the metadata files across the [[Snakemake]] pipeline [[plague-phylogeography]] without rerunning it.
1. Search for existing metadata files.
	```bash
	find . -name "metadata.tsv"

	./results/augur/all/chromosome/full/filter5/metadata.tsv
	./results/augur/all/chromosome/prune/filter5/metadata.tsv
	./results/iqtree/all/chromosome/full/filter5/filter-taxa/metadata.tsv
	./results/iqtree/all/chromosome/full/filter5/metadata.tsv
	./results/iqtree/all/chromosome/prune/filter5/filter-taxa/metadata.tsv
	./results/iqtree/all/chromosome/prune/filter5/metadata.tsv
	./results/lsd/all/chromosome/full/filter5/metadata.tsv
	./results/metadata/all/metadata.tsv
	./results/mugration/all/chromosome/full/filter5/metadata.tsv
	./results/mugration/all/chromosome/prune/filter5/metadata.tsv
	./results/snippy_multi/all/chromosome/full/metadata.tsv
	./results/snippy_multi/all/chromosome/prune/metadata.tsv
	```
1. Remove outdated metadata files.
	```bash
	rm ./results/snippy_multi/all/chromosome/*/metadata.tsv
	rm ./results/iqtree/all/chromosome/*/filter5/metadata.tsv
	rm ./results/iqtree/all/chromosome/*/filter5/filter-taxa/metadata.tsv
	rm ./results/lsd/all/chromosome/*/filter5/metadata.tsv
	rm ./results/mugration/all/chromosome/full/filter5/metadata.tsv
	rm ./results/augur/all/chromosome/*/filter5/metadata.tsv
	```
1. Copy over the full metadata.
	```bash
	# Snippy Multi
	cp ./results/metadata/all/metadata.tsv ./results/snippy_multi/all/chromosome/full/metadata.tsv;
	cp ./results/metadata/all/metadata.tsv ./results/snippy_multi/all/chromosome/prune/metadata.tsv;
	
	# IQTREE
	cp ./results/metadata/all/metadata.tsv ./results/iqtree/all/chromosome/full/filter5/metadata.tsv;
	cp ./results/metadata/all/metadata.tsv ./results/iqtree/all/chromosome/prune/filter5/metadata.tsv;
	```
1. Update IQTREE output and rerun the filtering (SLOW).
	```bash
	snakemake iqtree_all --touch --allowed-rules iqtree --profile profiles/infoserv/
	snakemake iqtree_filter_all --allowed-rules iqtree_filter --profile profiles/infoserv/
	```
1. Manually run iqtree_stats notebook.
1. Rerun LSD and Mugration
	```bash
	snakemake lsd_all --allowed-rules lsd --profile profiles/gh-actions
	snakemake mugration_all --allowed-rules mugration --profile profiles/gh-actions
	```
1. Manually run the auspice notebook