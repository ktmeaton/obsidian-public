---
project: [ [ plague-phylogeography ] ]
due: 2021-04-13
people: null
tags: ✨
status: done
---

# Evaluate Singleton Sites

## Literature

> [In the context of multiple sequence alignment and phylogeny reconstruction, singleton are sites at which only one of the species has a distinct nucleotide, whereas all others are the same. For parsimony methods, they are not informative, so sometimes are removed - though it doesn't change the estimated phylogeny, it just saves computation cost. This is not the case for maximum-likelihood (and probably also Bayesian) methods.](https://www.biostars.org/p/376899/)

[[Yang 2012 Molecular Phylogenetics Principles]]:
> Some sites are not useful for tree comparison by parsimony. For example, constant sites, for which the same nucleotide occurs in all species, have a character length of zero on any tree. Singleton sites, at which only one of the species has a distinct nucleotide, whereas all others are the same, can also be ignored, as the character length is always one.

> [Singletons are NOT uninformative, not to a likelihood-based (maximum likelihood or Bayesian inference) program. Sites that are not parsimony-informative are very informative about the rate of evolution, and the rate is crucial to the analysis. [This paper](https://www.ncbi.nlm.nih.gov/pubmed/26227865) shows that even dropping invariant sites can screw up an analysis. If you're using something like radseq to get the data, then perhaps singletons are more likely to be misaligned in an assembly step. In these cases, people have some rules of thumb for minor allele frequencies to keep in the process. But this is taken care of in assembly pipelines (like [stacks](http://catchenlab.life.illinois.edu/stacks/)), it's a threshold you set.](https://www.reddit.com/r/bioinformatics/comments/68ieub/should_i_remove_singletonscolumns_with_n_in_an_msa/)

## No [[Outgroup]]

### [[Missing Data]]

I think I need to edit the [[Jupyter Notebook]] that plots [[Missing Data]]. I think it would be more informative as a stacked/side bar chart with parsimony and singleton sites separate. I am quite pleased with this:

#### Keep [[Singleton|Singletons]]

<iframe id="igraph" scrolling="no" style="border:none;" seamless="seamless" src="https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/d1bfaa7a3b410183e79b89acef2b952ff1e35a89/main/snippy_multi/all/missing_data_chromosome.snps.html" height="500px" width=800px ></iframe>

#### Remove [[Singleton|Singletons]]

<iframe id="igraph" scrolling="no" style="border:none;" seamless="seamless" src="https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/92b77c6037966de09386f4a4a5879550c3de4f1c/main/snippy_multi/all/missing_data_chromosome.snps.html" height="500px" width=800px ></iframe>

### Phylogeny

The resulting trees produced from an alignment that includes singletons are problematic. There are a large of long terminal branches. Node dates become very strange and too young.

## Conclusion

I'm going to proceed with a [[Missing Data]] threshold of 1%. This is going to be ultraconservative, however, it does allow ~6 samples to be missing sites data. 

## With [[Outgroup]]

