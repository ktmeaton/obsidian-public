---
project:
due: 2021-08-20
people:
tags: ✨ 
status: done
title: poinarlab account
type: [[Task]]
---

# Migrate all of the sequence data to the poinarlab account

- The transfer
- The "real" sequencing files are all located under `/2/scratch/poinarlab/plague-phylogeography/results/data/sra/`. 
- 5-10% of reads have the adapter sequence (same as ours, AGATCGGAAGAG...). Trimming adapters is probably worthwhile.

1. Madgascar
	```bash
	bash /2/scratch/keaton/plague-phylogeography/workflow/scripts/migrate_rename.sh \
	  /2/scratch/keaton/plague-phylogeography-projects/pla/metadata/all/metadata.tsv \
	  "Madagascar" \
	  /2/scratch/keaton/plague-phylogeography/results/data/ \
	  /2/scratch/poinarlab/plague-phylogeography/results/data/ \
	  /home/poinarlab/Projects/Plague/PlaDepletion/data/Madagascar/
	```
2. US
	```bash
	bash /2/scratch/keaton/plague-phylogeography/workflow/scripts/migrate_rename.sh \
	  /2/scratch/keaton/plague-phylogeography-projects/pla/metadata/all/metadata.tsv \
	  "United" \
	  /2/scratch/keaton/plague-phylogeography/results/data/ \
	  /2/scratch/poinarlab/plague-phylogeography/results/data/ \
	  /home/poinarlab/Projects/Plague/PlaDepletion/data/USA/
	```
3. First Pandemic
	```bash
	bash /2/scratch/keaton/plague-phylogeography/workflow/scripts/migrate_rename.sh \
	  /2/scratch/keaton/plague-phylogeography-projects/main/metadata/all/metadata.tsv \
	  "0.ANT4" \
	  /2/scratch/keaton/plague-phylogeography/results/data/ \
	  /2/scratch/poinarlab/plague-phylogeography/results/data/ \
	  /home/poinarlab/Projects/Plague/PlaDepletion/data/FirstPandemic/
	```
4. Second Pandemic
	```bash
	bash /2/scratch/keaton/plague-phylogeography/workflow/scripts/migrate_rename.sh \
	  /2/scratch/keaton/plague-phylogeography-projects/main/metadata/all/metadata.tsv \
	  "1.PRE" \
	  /2/scratch/keaton/plague-phylogeography/results/data/ \
	  /2/scratch/poinarlab/plague-phylogeography/results/data/ \
	  /home/poinarlab/Projects/Plague/PlaDepletion/data/SecondPandemic/
	```
---