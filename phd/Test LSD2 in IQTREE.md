---
project: [[plague-phylogeography]]
due: 2021-04-15
people:
tags: #⬜/✨ 
status: done
---

# Test [[LSD2]] in IQTREE

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


### Trees

| Full                                 | Prune                                |
| ------------------------------------ | ------------------------------------ |
| ![[Pasted image 20210416170009.png]] | ![[Pasted image 20210416170050.png]] |


### [[LSD]]

| Parameter   | Full                                | Prune              |
| ----------- | ----------------------------------- | ------------------ |
| Clock Mean  | 1                                   | 1                  |
| Clock Stdev | 0.2                                 | 0.2                |
| Outliers    | GCA_000323625.1_ASM32362v1_genomic  | None               |
|             | GCA_001188795.1_ASM118879v1_genomic |                    |
| Rate        | 8.95429e-09                         | 1e-10              |
| Rate CI     | 1e-10; 3.40414e-08                  |                    | 
| tMRCA       | -5779.79                            | -558233            |
| tMRCA CI    | -571769: -1419.93                   | -611061: -1328.78] |

### Full TimeTree

![[Pasted image 20210416170850.png]]

### Filter [[LSD]] Alignment

```bash
grep -A 1 outliers lsd.log | tail -n 1 | awk '{for (i=1; i<=NF; i++){print $i}}'
```

### [[BEAST]]

```bash
# info2020, screen "beast"
beast -seed 154343149 -beagle beast.xml | tee beast.screenlog
```

- I might want to put an upper bound on the stdev of the rate

![[Pasted image 20210416192113.png]]