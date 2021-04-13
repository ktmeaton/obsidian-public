---
project: [[plague-phylogeography]]
due: 2021-04-13
people:
tags: ⬜/✨ 
status: done
---

# Evaluate Singleton Sites

> [In the context of multiple sequence alignment and phylogeny reconstruction, singleton are sites at which only one of the species has a distinct nucleotide, whereas all others are the same. For parsimony methods, they are not informative, so sometimes are removed - though it doesn't change the estimated phylogeny, it just saves computation cost. This is not the case for maximum-likelihood (and probably also Bayesian) methods.](https://www.biostars.org/p/376899/)

[[Yang 2012 Molecular Phylogenetics Principles]]:
> Some sites are not useful for tree comparison by parsimony. For example, constant sites, for which the same nucleotide occurs in all species, have a character length of zero on any tree. Singleton sites, at which only one of the species has a distinct nucleotide, whereas all others are the same, can also be ignored, as the character length is always one.

### [[Missing Data]]

I think I need to edit the [[Jupyter Notebook]] that plots [[Missing Data]]. I think it would be more informative as a stacked/side bar chart with parsimony and singleton sites separate. I am quite pleased with this:

<iframe id="igraph" scrolling="no" style="border:none;" seamless="seamless" src="https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/d1bfaa7a3b410183e79b89acef2b952ff1e35a89/main/snippy_multi/all/missing_data_chromosome.snps.html" height="500px" width=800px ></iframe>

## Conclusion

I'm going to proceed with a [[Missing Data]] threshold of 1%. This is going to be ultraconservative, however, it does allow ~6 samples to be missing sites data.