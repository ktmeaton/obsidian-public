---
title: ClonalFrameML
type: [[Tool]]
tags:
  - 📝/🌱
---

# ClonalFrameML

## Summary

ClonalFrameML is software that performs...

- Install
	```bash
	 mamba create -n clonaframeml -c conda-forge -c bioconda -c defaults clonalframeml
	```

- Test
	```bash
	mkdir -p clonalframeml/all/chromosome/full/filter5/;
	tree=/mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/iqtree/all/chromosome/full/filter5/filter-taxa/iqtree.treefile;
	aln=/mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/iqtree/all/chromosome/full/filter5/filter-sites/snippy-multi.snps.aln;
	
	cd clonalframeml/all/chromosome/full/filter5/;
	ClonalFrameML $tree $aln clonalframeml
	```
	
- Graphical output:
	```bash
	wget https://raw.githubusercontent.com/xavierdidelot/ClonalFrameML/master/src/cfml_results.R
	Rscript cfml_results.R clonalframeml
	```