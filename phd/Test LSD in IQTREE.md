---
project:
due: 2021-04-15
people:
tags: ⬜/📋
status: idea
---

# Test LSD in IQTREE

```bash
cut -f 1,4 ../metadata/all/metadata.tsv  | tail -n+2 | sed 's/\[\|\]//g' > dates.txt

iqtree \
  -s snps.fasta \
  --date dates.txt \
  -fconst `cat constant_sites.txt` \
  -seed 1234 \
  --threads-max 10 \
  -pre lsd \
  -o "GCA_001188795.1_ASM118879v1_genomic"
  --date-outlier 3 \
  --date-ci 100

```

>Computing confidence intervals using sequence length 4287672 and a lognormal
 relaxed clock with mean 1, standard deviation 0.2 (settable via option -q)
 
 >*WARNINGS
 >- The tips Reference do not have temporal constraint, their dates will be infered.
 >- 11.5385% internal branches were collapsed.
 >- The estimated rate reaches the given lower bound. To change the lower bound, use option -t.

This produces the exact same problem as with the [[clock rate being extremely small]] in [[BEAST|BEAST]].