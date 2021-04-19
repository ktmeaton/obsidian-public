---
project: [[plague-phylogeography]]
due: 2021-04-14
people:
tags: #⬜/✨ 
status: done
---

# Build a New TimeTree

## Sub Tasks
```dataview
task from "tasks"
where contains(file.name, "Build a New TimeTree")
```

## [[Snakemake]] Pipeline

```yaml
snippy_missing_data: 1
snippy_keep_singleton : "--keep-singleton"
iqtree_other: "--polytomy"
iqtree_runs: 10
```

```bash
snakemake iqtree_all --profile profiles/infoserv --configfile results/config/snakemake.yaml

[Tue Apr 13 17:57:18 2021]
[Tue Apr 13 21:17:15 2021]
```

- [x] [[Evaluate Singleton Sites]]

The issue of the marginal dates being out of sync with the joint rates is now present.
![[Pasted image 20210414145808.png]]

I'm curious to know if using [[Polytomy|polytomies]] and keeping [[Singleton|singletons]] will impact the distribution of branch rates. Possibly removing the peak of ultra short ones? Nope.

![[Pasted image 20210414150247.png]]

### Without Russian Samples

```yaml
snippy_missing_data: 1
snippy_keep_singleton : ""
iqtree_other: "--polytomy"
iqtree_runs: 1
```

```bash
snakemake iqtree_all --profile profiles/infoserv --configfile results/config/snakemake.yaml 
```


I don't understand why the results have changed to be so dramatically bad.  These are the variables I'm not sure about:

```yaml
# If I'm removing singletons, I should go for 5%
missing-data: 1 or 5
singletons: keep or remove?
coalescent: None, Skyline, const?
polytomies: collapse in iqtree or not
resolve-polytomies: resolve in treetime or not
iqtree-runs: 1 or 10
treetime-iterations: 1 or 10
```

### Revert Parameters

```bash
snakemake iqtree_scf_all --profile profiles/infoserv --configfile results/config/snakemake.yaml 
```

It might be useful to ...

### Prune Alignment

```bash
snakemake snippy_multi_all -np --profile profiles/infoserv --configfile results/config/snakemake.yaml
snakemake lsd_prune_all -np --profile profiles/infoserv --configfile results/config/snakemake.yaml
```

- [x] [[Add Outgroup to Main Project]]
- [x] [[Filter Constant Sites in Script]]