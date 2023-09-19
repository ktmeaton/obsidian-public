---
aliases:
  - Sagulenko et al. 2018
  - "@sagulenko2018TreeTimeMaximumlikelihoodPhylodynamic"
tags: 
  - 📥/📰 
  - 📝/🌱 
---

# Sagulenko et al. 2018 TreeTime Maximum-Likelihood Phylodynamic

| Field   | Value                                                             |
| ------- | ----------------------------------------------------------------- |
| Title   | [[obsidian-public/academic/TreeTime]]: [[Maximum-likelihood]] [[Phylodynamics\|phylodynamic]] analysis. |
| Year    | 2018                                                              |
| Authors | Sagulenko et al.                                                  |
| DOI     | <https://dx.doi.org/10.1093%2Fve%2Fvex042>                        |
| bibtex  | sagulenko2018TreeTimeMaximumlikelihoodPhylodynamic                |

## Summary

This is the publication to accompany the tool [[obsidian-public/academic/TreeTime]].

The core of [[obsidian-public/academic/TreeTime|TreeTime's]] algorithm structure is iterative optimization. This includes estimation and optimization of branch lengths, ancestral sequences, parameters of a clock model, and parameters of the tree structure like the coalescent. When branches are short (ie. little ambiguity), this algorithm can achieve convergence in a short period of time.

Another useful feature is the ability to estimate joint and/or marginal likelihoods. A joint likelihood is the global configuration which has the highest likelihood. For example, after taking in consideration the tree topology, branch lengths, substitution model, date constraints etc. The marginal likelihood is used to estimate a single parameter after all other unknown states have been summed or integrated over. [[obsidian-public/academic/TreeTime]] operates on a fixed phylogeny (aside from polytomy resolution) so joint and marginal likelihood are for node dates and node ancestral sequences. 

### Algorithm

First, the ancestral sequence estimation via maximum-likelihood. It begins with a post-order traversal (tip to root), which propagates subtrees. Next, a pre-order traversal occurs where the optimal subtree is selected based on the parent node. More specifically this is the 

>likelihood that the node sits at a position given the information and constraints propagated from its children

Marginal reconstruction produces a:
> probability distribution of the node date given the tree, the ancestral sequence assignment, and the evolutionary model while the unknown times of other nodes are traced out.

## Figures
| Comparison of the influenza skyline with WHO Case Reports         |
| ----------------------------------------------------------------- |
| ![[sagulenko2018TreeTimeMaximumlikelihoodPhylodynamic _fig8.png]] |