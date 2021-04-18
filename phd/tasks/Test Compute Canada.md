---
project:
due: 2021-04-16
people:
tags:
---

# Test Compute Canada

1. Install
	```bash
	ssh keaton@graham.computecanada.ca
	cd /scratch/keaton
	```

1. Conda Environment
	```bash
	mamba env update -f workflow/envs/merge/environment.yaml
	```

1. Load Project
	```bash
	workflow/scripts/project_load.sh results ../plague-phylogeography-projects/main rsync
	```
	- Change just to assembly right now

1. Interactive Shell
```bash
salloc --time=0-24:00 -n 4 -A def-briang --mem-per-cpu=4000MB
```
3. Test with metadata
	```bash
	snakemake --profile profiles/
	```