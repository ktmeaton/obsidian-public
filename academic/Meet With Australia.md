---
title: Meet With Australia
project: [[plague-phylogeography]]
people:
  - [[Sebastian Duchene]]
  - [[Leo Featherstone]]
  - [[Hendrik Poinar]]
tags:
  - ⬜/🧨
status: priority
type: [[Meeting]]
due: 2021-06-15
time: "18:00"
---

# Meet With Australia

## [[2021-06-17]]

1. What happened at generation 50,000,000? This spike is present in all independent analyses, so I'm guess it has something to do with the run setup?

![[MCMC Troubleshooting 1.png]]

If this is an artifact (ie. forcing the chain to run longer?), would I be justified in removing this state, or is that analytically dubious? While it shouldn't affect the 95% HPD estimates, the distributions and means are all affected by this outlier state.

2. Of the 5 trees you sent me, there seems to be differences in the node attributes. Clades 0.PRE, 1.PRE, and 2.MED are missing the attributes that report the geographic state and probabilities (although they have the geographic rate attributes). Specifically, these trees are missing:
	- state
	- state.prob
	- state.set
	- state.set.prob

Only have rate parameters


## [[2021-06-03]]

- Geography rates for 0.ANT4, all very similar, but good mixing in the traces.
- Migration events / unit of time
- Migration events / lineage / unit of time
- Plot vs sample size
- Test of topology and discrete states correlated to tree
- "Consistency of Inferences"
- Model Summary
- "Consistency Index"
- Branching Events
- Comparing sampling times
- Phenotype Flow Rate (Or Human/Rodent Rate)
- Using host to explain the regressions/
- Is there a BETS equivalent
- Geographic Rate to be tackled later, just have jump rate rather than nuc model

TBD

- Rerun 1.PRE


- Take all tips that are in the same state, and plot their geographic distance

## [[2021-05-13]] 1800 EST / 0800 AEST

[Meeting Link](https://us02web.zoom.us/j/88245943522?pwd=V2FHbitaOE1MTCtDM2hsMHUyR1Fjdz09)

### Notes

Discuss [[0.PRE]] temporal signal
- phylogeography on 0.PRE, 0.ANT4, 

### Preparation

> I'm surprised that the relaxed clock (UCLN) is favored for all clades. 
> I'm surprised that 0.PRE did not have temporal signal (ultrameric model prevailed), given that this clade has the strongest regression in MLE (R2=0.91). But the tMRCA is similar (-3000).
> I'm surprised that 0.PE and 4.ANT have temporal signal, these ones have huge variation for me and the tMRCA can be in the future.

> Led me to a few thoughts. In comparing our results, you are estimating topology and a clock model jointly for each clade in isolation. Whereas, my results come from the full tree (both topology and clock model), and I extract subtrees for analysis and plotting.
> One takeway might be that the topology estimation step is causing a lot of variance?



In general, the clades which I identified as following a strict clock have similar tMRCA although different rates. The exception is 0.PRE.

What makes sense/is congruent:
- In general, the ancient clades are similar:
- 0.ANT4 (Plague of Justinian) has similar tMRCA and rates.
- 1.PRE, the tMRCA is similar (~1300) but rates differ (4.24E-08 vs. 6.54E-08)
-

What does not make sense:
- I'm surprised that the relaxed clock is favored for all clades.
- I'm surprised that 

### Tasks

- [ ] [[Migrate ML auspice results to subdir]]
- [ ] [[Add BEAST trees to auspice]]
- [ ] [[Create file has most recent date for each clade]]

## [[2021-05-13]] 1800 EST / 0800 AEST

[Meeting Link](https://us02web.zoom.us/j/88245943522?pwd=V2FHbitaOE1MTCtDM2hsMHUyR1Fjdz09)

- For clade dating results, the [[MRCA]] is reported in years before the most recent 
- Population Size Prior and Tree Root Prior are key! Have to be very careful in selecting, and make sure the data can overcome.
- Diffuse pop size prior.
- To just these, run just prior without data.
- These rates are very high! 

---
<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

# Meet With Australia

## [[2021-05-06]] 1800 EST / 0800 AEST

[Meeting Link](https://us02web.zoom.us/j/84756536944?pwd=YWFMaTRJZ24wYVlxQ01ZckRFcUdadz09)

### Summary

- When estimating a [[Substitution Rate]] for all of *[[Yersinia pestis|Y. pestis]]*, a [[Clock Model|strict clock]] and [[Clock Model|relaxed clock]] produce different estimates (ie. non-overlapping distributions).
- [[Clock Model#Relaxed Clock|Relaxed clock]] [[MCMC]] runs produce a high [[Coefficient of Variation]] indicating a relaxed model is favored over a strict model.  However, these runs do not converge, suggesting there is too much [[rate variation]] to confidently estimate key parameters such as the mean [[Substitution Rate]] or [[MRCA|tMRCA]].
- Inspecting a [[Root to Tip Regression]] separated by [[Clades]] suggests there might be temporal signal. A [[Bayesian Evaluation of Temporal Signal]] ([[Bayesian Evaluation of Temporal Signal|BETS]]) confirms this and is  much more sensitive than a [[Regression]].
- There is little use in [[Dating]] the full [[Phylogenetic|phylogeny]] of *[[Y. pestis]]*, either in it's entirety (N=~600) or a reduced subsample (N=~200).
- [[Discrete]] [[phylogeography]] will be attempted on the [[Clade]] dataset.
- This paper is currently composed of three datasets:

| Name    | Size  | Composition        | Purpose                                           |
| ------- | ----- | ------------------ | ------------------------------------------------- |
| Full    | N=600 | All                | Alignment, maximum-likelihood phylogeny.          |
| Reduced | N=200 | Subsampled         | Demonstrate [[Dating\|dating]] instability        |
| Clade   | N=600 | Separated by clade | [[Dating]] and [[Phylogeography\|phylogeography]] |

### Tasks

- [ ] [[Katherine Eaton]] | [[Create geographic traits file by Clade]].
- [ ] [[Katherine Eaton]] | [[Plague Phylodynamics and Phylogeography Paper]].
- [ ] [[Sebastian Duchene]] | [[Run BETS on all Clades]].

### Next Meeting

- [[Meet With Australia#2021-05-13 1800 EST 0800 AEST]]

---
<div style="page-break-after: always; visibility: hidden">
\pagebreak
</div>

### Notes

#### Full Dataset (full)

- N=601, (600+Reference) to be used to construct the master [[Alignment]] and estimate a [[Maximum-likelihood]] tree to contextualize the [[Clade]] dataset.

#### Reduced Dataset (prune)

**Note**:  Ultimately decided the [[Dating]] analysis on this dataset would not be used beyond showing analytical/statistical instability.

- Fixing the tree helped, but the [[Marginal|marginal]] [[Likelihood|likelihoods]]  were still a problem
- [[Coefficient of Variation]] does not support a [[Clock Model#Strict Clock|strict clock]].
	![[Coefficient of Variation.png|400]]
- A [[Clock Model#Strict Clock|strict clock]] and [[Clock Model#Relaxed Clock|relaxed clock]] have overlapping distributions with similar peaks for the [[Tree Height]] (blue: strict, green: relaxed).
	![[Tree Height Comparison.png|300]]
- A [[Clock Model#Strict Clock|strict clock]] and [[Clock Model#Relaxed Clock|relaxed clock]] have non-overlapping distributions for the mean [[Substitution Rate]] (green: strict, orange: relaxed).
	![[Substitution Rate Comparison.png|300]]
- There doesn't appear to be clustering of rates. Branches with high rates are next to those with low rates.
	![[Time Tree Colored by Rate.png|400]]

#### [[Clade]] Dataset
- ```has_signal``` is the [[Bayes Factor]] for having [[Clock Model|temporal signal]], [[BETS]].
	![[Clade Dating Statistics Table.png]]
- We noticed that some of the [[MRCA]] dates do not make sense. [[Sebastian Duchene|Sebastian]] realized this is due to an error in the [[R]] code with [[Tree Height]] scaling.

---
<div style="page-break-after: always; visibility: hidden">
\pagebreak
</div>

# Meet With Australia

## [[2021-04-26]]

[Meeting Link](https://us02web.zoom.us/j/84583403662?pwd=OWZpbVhmMVhLc1hJOGd0aVFEZEJRZz09)

### Preparation

#### 1. Datasets
1. Constructed two datasets based on samples that have [[Geographic Location]] and [[Date]]:
	- Full (n=600)
	- Reduced (n=200)

#### 2. [[Clock Model]]

##### Regression

![[rtt_all 3.png|500]]

![[rtt_clades 1.png]]
	
##### Node Dating

![[dating_1.PRE.png|700]]

#### 3. [[Phylogeography]]	

![[ibd_all 3.png]]

##### [[Discrete]]

<iframe id="igraph" scrolling="no" style="border:none;" seamless="seamless" src="https://rawcdn.githack.com/ktmeaton/plague-phylogeography/337baaf80e5e1f356737e46bb0bf8afb2f164fd8/workflow/scripts/arc_diagram.html" height="600px" width=900px ></iframe>

##### [[Continuous]]

1. Experimented with [[Continuous|continuous]] [[Phylogeography|phylogeography]] in [[BEAST2]].

![[spreaD3 All.png]]


### Notes

- Set up different priors on the mean rate
- No good mixing for the relaxed clock, for many of the parameters
- High values for the coefficient of variation (high rate variation)
- Fitting the rate variation to a model is really hard!	
- Strict clock: Setting different priors ends up the with similar/overlapping distributions. Not sensitive to prior!
- How do rates differ between strict and relaxed? Very different!
- Root heights differ (20,000 - 8,000 YBP)
- Need to make a lot of assumptions 

### Tasks
- [x] [[Send Starting Tree to Australia]]
- [x] [[Clade Datasets]]
- [x] [[Send IBD Plots]]
- Dating by clade (BETS analysis).
- Relative branch rates (genetic distance, 
- Relaxed clock, fit rate to 1, for phylogeography
- Visualized as a matrix
- Leave one out analysis
- BETS -> 	Leave One Out 

---
<div style="page-break-after: always; visibility: hidden">
\pagebreak
</div>