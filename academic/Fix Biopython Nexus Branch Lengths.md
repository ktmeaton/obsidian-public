---
project:
due: 2021-04-21
people:
tags: ⬜/✨
status: done
title: Fix Biopython Nexus Branch Lengths
type: [[Task]]
---

# Fix Biopython Nexus Branch Lengths

## Tasks

```dataview
task from "tasks"
where contains(file.name, "Fix Biopython Nexus Branch Lengths")
```

## Existing

```bash
/mnt/c/Users/ktmea/Projects/plague-phylogeography/workflow/scripts/filter_alignment.py \
  --tree iqtree.treefile \
  --aln /mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/snippy_multi/all/chromosome/full/filter5/snippy-multi.snps.aln \
  --outdir . \
  --metadata /mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/snippy_multi/all/chromosome/full/metadata.tsv \
  --prune-tips iqtree.filter-taxa.txt  
```

This works fine on my local computer (after a pip install...) but not on [[Infoserv]].

## Code

```bash
# Sync to remote
git remote add upstream <original:repo>
git fetch upstream
git merge upstream/master
git checkout biopython-176
git checkout -b nex-br-len
```
