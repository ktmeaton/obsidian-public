---
project: [[plague-phylogeography]]
due: 2021-04-17
tags: ⬜/✨  
status: done
---

# Create a Placement Dataset

I should create a placement dataset that helps do more refined testing. 1 sample from each minor branch (N=26 + 1 for reference).

1. Load Project
	```bash
	workflow/scripts/project_clean.sh results

	workflow/scripts/project_load.sh results ../plague-phylogeography-projects/placement
	```

1. Create Metadata
	```bash
	snakemake metadata_all --profile profiles/gh-actions --configfile results/config/snakemake.yaml
	```
	
1. Plot Missing Data in Multiple Alignment
	```bash
	snakemake plot_missing_data_all -np --profile profiles/infoserv --configfile results/config/snakemake.yaml
	```
1. Parameters
	```yaml
	snippy_keep_singleton : "--keep-singleton"
	snippy_missing_data: 5
	iqtree-model: -m MFP
	iqtree-other: "--ufboot 1000"
	iqtree-runs: 10
	```

1. Phylogeny
	```bash
	snakemake iqtree_scf_all --profile profiles/infoserv --configfile results/config/snakemake.yaml
	```
	
1. Reroot with Figtree?