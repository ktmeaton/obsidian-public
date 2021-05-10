---
project: [[plague-phylogeography]]
due: 2021-04-17
people:
tags: ⬜/✨
status: done
---

# Test Outgroup Pseudotuberculosis

| Strain    | Accession    | Status            |
| --------- | ------------ | ----------------- |
| NCTC10275 | SAMEA4442458 | Reference Genome  |
| IP32953   | SAMN03121000 | Plague Literature | 

1. [[NCBImeta_Paper]]

	```bash
	NCBImeta.py --flat --config results/config/ncbimeta.yaml
	```

1. ncbimeta.yaml

	```bash
	- BioSample: ... OR (SAMEA4442458 OR SAMN03121000)
	```
	
1. Comments (BioSample)
	```
	KEEP: Assembly Modern Outgroup
	```

1. Rerun

	```bash
	snakemake iqtree_all -np --profile profiles/gh-actions --configfile results/config/snakemake.yaml
	```
	
  - I remember [[Snippy|snippy pairwise]] takes a really long time when there are a large number of variants.
  - I also remember that outgroups tend to throw off the [[Substitution Model]].