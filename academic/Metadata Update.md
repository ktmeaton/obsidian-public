---
aliases:
  - Metadata Update
tags:
  - 📝/🌱
status: idea

---

# Metadata Update

This is how to update the metadata files across the [[Snakemake]] pipeline [[plague-phylogeography]] without rerunning it.

```bash
find . -name "metadata.tsv"

./results/augur/all/chromosome/full/filter5/metadata.tsv
./results/augur/all/chromosome/prune/filter5/metadata.tsv
./results/iqtree/all/chromosome/full/filter5/filter-taxa/metadata.tsv
./results/iqtree/all/chromosome/full/filter5/metadata.tsv
./results/iqtree/all/chromosome/prune/filter5/filter-taxa/metadata.tsv
./results/iqtree/all/chromosome/prune/filter5/metadata.tsv
./results/lsd/all/chromosome/full/filter5/metadata.tsv
./results/metadata/all/metadata.tsv
./results/mugration/all/chromosome/full/filter5/metadata.tsv
./results/mugration/all/chromosome/prune/filter5/metadata.tsv
./results/snippy_multi/all/chromosome/full/metadata.tsv
./results/snippy_multi/all/chromosome/prune/metadata.tsv
```

Files to ignore:
```
./results/augur/all/chromosome/full/filter5/metadata.tsv
./results/augur/all/chromosome/prune/filter5/metadata.tsv
./results/iqtree/all/chromosome/full/filter5/filter-taxa/metadata.tsv
./results/iqtree/all/chromosome/full/filter5/metadata.tsv
./results/iqtree/all/chromosome/prune/filter5/filter-taxa/metadata.tsv
./results/iqtree/all/chromosome/prune/filter5/metadata.tsv
./results/lsd/all/chromosome/full/filter5/metadata.tsv
./results/metadata/all/metadata.tsv
./results/mugration/all/chromosome/full/filter5/metadata.tsv
./results/mugration/all/chromosome/prune/filter5/metadata.tsv
./results/snippy_multi/all/chromosome/full/metadata.tsv
./results/snippy_multi/all/chromosome/prune/metadata.tsv
```