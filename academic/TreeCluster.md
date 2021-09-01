---
aliases:
  - TreeCluster
tags:
  - 📝/🌱
status: idea

---

# TreeCluster

```bash
thresholds=("0.0001" "0.00005" "0.00006")
tree="iqtree/all/chromosome/full/filter5/filter-taxa/iqtree.treefile"
prefix="treecluster/all/chromosome/full/filter5/treecluster"

for threshold in ${thresholds[@]};do
	TreeCluster.py -i $tree --threshold $threshold > ${prefix}_${threshold}.txt;
done
```