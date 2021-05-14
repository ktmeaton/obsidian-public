---
project: [[plague-phylogeography]]
due: 2021-05-12
people:
tags: #⬜/✨  
status: done
title: Curate Host Metadata
type: [[Task]]
---

# Curate Host Metadata

Host status curated as a binary (Human vs. Non-Human) and using NA.

## [[Snakemake]] Update

1. Update master metadata
```bash
snakemake metadata_all --profile profiles/gh-actions
```


2. The next step that actually needs that is ```iqtree_filter```
```bash
snakemake iqtree_filter_all --allowed-rules iqtree_filter --profile profiles/gh-actions
```

```bash
snakemake auspice_all \
  --allowed-rules iqtree_filter iqtree_stats lsd mugration auspice \
  --profile profiles/gh-actions
```