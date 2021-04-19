---
project: [[plague-phylogeography]]
due: 2021-04-16
time: 15:00
people: [[Emil Karpinski]]
tags: #⬜/✨ 
status: done
---

# Meet With Emil

[[Dellicour 2020 Phylodynamic Workflow Rapidly|Dellicour et al. (2020) A Phylodynamic Workflow to Rapidly Gain Insights into the Dispersal History and Dynamics of SARS-CoV-2 Lineages]]

## Workflow

1. Estimate a Maximum Likelihood Tree (IQTREE)
1. Rescale branch  lengths to units of time (treetime, lsd)
1. Perform continuous phylogeography with BEAST on bivariate trait (latitude, longitude)

## Progress

1. Successfully ran the tutorial.
1. Had mixed success with my own data.

## Issues

1. Dataset is too large.
	- Maximize geographic diversity
	- Maximum temporal diversity.
1. For the full tree, the clock model needs to be set extremely small (1e-100) to initialize.
2. For certain subtrees, the clock model is correct. 

It might be worth running BEAST 1.10

On the full dataset.

