---
aliases:
  - Bootstrapping an Existing Tree
tags: 📝/🌱
---

# Bootstrapping an Existing Tree

## LSD Tree

```bash
iqtree \
  -s lsd.filter.aln \
  -te lsd.filter.nwk \
  -m K3Pu+F+I \
  -b 10 \
  -pre test \
  -fconst `cat /mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/snippy_multi/all/chromosome/full/snippy-multi.constant_sites.txt`
  
```

Constraints: 
- The input tree must be a properly formatted [[newick]].

Adding the [[fconst]] parameter makes this slightly slower.
This also changes the branch lengths of the output tree...
And the values are all 100...