---
project: [[plague-phylogeography]]
due: 2021-04-14
people:
tags: ⬜/🧨
status: priority
---

# Build a New TimeTree

## [[Snakemake]] Pipeline

```yaml
snippy_missing_data: 1
snippy_keep_singleton : "--keep-singleton"
iqtree_other: "--polytomy"
iqtree_runs: 10
```

```bash
snakemake iqtree_all --profile profiles/infoserv --configfile results/config/snakemake.yaml
```