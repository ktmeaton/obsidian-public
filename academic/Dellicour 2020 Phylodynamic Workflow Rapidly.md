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