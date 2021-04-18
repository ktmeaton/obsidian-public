---
project:
due: 2021-04-17
people:
tags:
---

# Continuous Phylogeography with BEAST

## BEAST2

My current problem is numerical instability, in that parameters are estimated to have extraordinarily low values like 1e-200.

My current theory is because of the large parameter space of [[latitude]] and [[longitude]] as [[bivariate]] traits. Coupled with my units of time being large (in individual years). If I'm correct, changing units of time from years to millennium should increase the clock rate.

I'm going to test with the 2.MED clade. Unmodified, the highest clock.rate that will start the analysis is 1e-25. Now let's convert years to millennia. Now the highest clock.rate that will start the analysis is 1e-20. 

How about if we go to the extreme and convert to millions of years? Now the highest clock.rate that will start the analysis is 1e-17.

So the units of branch length to have some effect on the clock.rate, but it's extremely minimal.

The MCMC chain still tries to jump to extremely small values, and the ancestral locations are 'NaN'.

## BEAST1

```bash
mamba install -c bioconda beast=1.10.4
```

I get the very angry warning that BEAST1 requires strictly bifurcating trees.

- Filter alignment
```bash
plague-phylogeography/workflow/scripts/filter_alignment.py \
  --tree plague-phylogeography-projects/main/beast1/all/chromosome/prune/filter5/beast.2-MED.nex \
  --aln plague-phylogeography-projects/main/snippy_multi/all/chromosome/prune/filter5/snippy-multi.snps.aln \
  --out plague-phylogeography-projects/main/beast1/all/chromosome/prune/filter5/beast.2-MED.fasta
```
- Create bifurcating tree
```bash
plague-phylogeography/workflow/scripts/multi2bi.py \
  --tree plague-phylogeography-projects/main/beast1/all/chromosome/prune/filter5/beast.2-MED.nex \
  --out plague-phylogeography-projects/main/beast1/all/chromosome/prune/filter5/beast.2-MED.bifurc.nex
```

Note to self: beast1 wants headers in the latlon file

It works! Let's try the full tree.

```bash
plague-phylogeography/workflow/scripts/filter_alignment.py \
  --tree plague-phylogeography-projects/main/lsd/all/chromosome/prune/filter5/lsd.timetree.nex \
  --aln plague-phylogeography-projects/main/snippy_multi/all/chromosome/prune/filter5/snippy-multi.snps.aln \
  --out plague-phylogeography-projects/main/lsd/all/chromosome/prune/filter5/lsd.timetree.aln
```

```bash
# Bifurcating
plague-phylogeography/workflow/scripts/multi2bi.py \
  --tree plague-phylogeography-projects/main/lsd/all/chromosome/prune/filter5/lsd.timetree.nex \
  --out plague-phylogeography-projects/main/lsd/all/chromosome/prune/filter5/lsd.timetree.bifurc.nex
```

1. Create Tree (removing outgroup)
	```bash
	snakemake iqtree_all --profile profiles/gh-actions --configfile results/config/snakemake.yaml
	```