---
aliases:
  - Dellicour et al. 2020
  - Dellicour et al. (2020)
---

# Dellicour 2020 Phylodynamic Workflow Rapidly

| Field   | Value                                                                                                           |
| ------- | --------------------------------------------------------------------------------------------------------------- |
| Title   | A Phylodynamic Workflow to Rapidly Gain Insights into the Dispersal History and Dynamics of SARS-CoV-2 Lineages |
| Year    | 2020                                                                                                            | 
| Authors | Dellicour et al.                                                                                                |
| DOI     | <https://doi.org/10.1093/molbev/msaa284>                                                                        |
| bibtex  | dellicour2020PhylodynamicWorkflowRapidly                                                                        |


## Summary

This paper was cited by [[Duchene et al. 2020 Impact Early Public|Duchene et al. 2020]].

The authors propose a [[Phylodynamics]] workflow for large and complex genomic datasets. While Bayesian [[Phylogeography|phylogeographic]] inference is the gold standard, this approach is extremely computationally intensive. Instead, the authors advocate using [[TreeTime]] to create an initial time-scaled tree, which is then used as a fixed empirical tree for [[BEAST]] phylogeography inference.

Workflow steps:
1. Create a time-scaled phylogeny with [[TreeTime]].
1. Run a preliminary discrete phylogeographic analysis to count the introduction. This was done as a binary (internal Belgium, outside). MCMC chain on empiricla tree for 10^6 generations, sampled every 1000.
1. Run a continuous phylogeography analysis, using [[Relaxed Random Walk]].
1. Perform distinct continuous phylogeography on each clade with a subtree.
1. Use the [[R]] package [[seraphim]] for post-analysis and visualization. 

>  We verified the robustness of our estimates through a subsampling procedure consisting of re-computing the weighted dispersal velocity after having randomly discarded 25% of branches in each of the 1,000 posterior trees.
1. To test the robustness of the workflow, they did the whole analysis 5 times over using different starting seeds in IQTREE. Then estimates are reported for various statistics.

## Figures

|          Fig X          |     |
|:-----------------------:| --- |
| ![[Dellicour 2020 Phylodynamic Workflow Rapidly_figX.jpg]] |     |
|     Figure caption.     |     |
[[Dellicour 2020 Phylodynamic Workflow Rapidly\|Alias]] | 	|	

## Notes

---

tags: #📥/📰, #📝/🌱

dellicour2020PhylodynamicWorkflowRapidly

## Seldon Summary

> - We generated a [[Timetree\|time-scaled phylogenetic tree]] using a rapid [[Maximum-likelihood|maximum-likelihood]] approach ([[Sagulenko et al. 2018 TreeTime Maximum-Likelihood Phylodynamic|Sagulenko et al. 2018]]) and subsequently ran a preliminary [[Discrete|discrete]] [[Phylogeography\|phylogeographic]] analysis along this tree to identify internal nodes and descending clades that likely correspond to distinct introductions into the [[Belgium\|Belgian]] territory (fig. 1, supplementary fig. S2, Supplementary Material online).
> - Although we acknowledge that a fully integrated analysis (i.e., an analysis where the phylogenetic tree and ancestral locations are jointly inferred) would be preferable, fixing an empirical [[Timetree\|time-scaled phylogenetic tree]] represents a good compromise to rapidly gain insights into the dispersal history and dynamics of [[SARS-CoV-2]] [[Clade|lineages]].
> - Our spatially explicit [[Phylogeography\|phylogeographic]] analyses uncover the [[Spatiotemporal\|spatiotemporal]] distribution of [[Belgium\|Belgian]] [[SARS-CoV-2]] clusters, indicating a relatively low impact of the lockdown on both the [[Dispersal Velocity\|dispersal velocity]] of [[Virus\|viral]] lineages and on the frequency of long-distance [[Spread|dispersal]] events.
> - Importance of Introduction Events into the Country. On June 10, 2020, we downloaded all [[Belgium\|Belgian]] [[SARS-CoV-2]] sequences (N=740) available on [[GISAID]], as well as all non-Belgian sequences used in [[Nextstrain]] to represent the overall [[Spread|dispersal history]] of the [[SARS-CoV-2\|virus]] (N=4,309) with 126 different countries of origin).
> - We then compared the inferred number of [[Introduction Event\|introduction events]] into the [[Belgium\|Belgian]]  territory as well as the lineage [[Dispersal Velocity\|dispersal velocity]] estimates obtained when running the pipeline on each starting tree (supplementary table S1).
> - Besides the tree, we also report the distribution of cluster sizes (number of sampled sequences in each cluster) as well as the number of sequences sampled through time.
> - On the tree, lineages circulating in [[Belgium\|Belgian]]  are highlighted in green, and green nodes correspond to the most ancestral node of each [[Belgium\|Belgian]]  cluster (see also supplementary fig. S1, Supplementary Material online for a noncircular visualization of the same tree).