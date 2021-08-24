---
aliases:
  - Yersinia pestis Phylodynamics
tags:
  - 📝/🌱
status: idea

---

# _Yersinia pestis_ Phylodynamics


1. We want to estimate dates for the following events:
	- The time to most recent common ancestor (tMRCA), when _[[Yersinia pestis|Y. pestis]]_ emerged as a novel species [@cite].
	- The first appearance of _[[Yersinia pestis|Y. pestis]]_ in human populations [@cite].
	- The onset and progression of past pandemics [@cite].
	- The "Big Bang" polytomy [@cite].
2. One way to investigate this is using molecular clock methods which uses...
3. However, there is debate concerning whether these methods will produce robust estimate.
4. This debate emerged because *[[Yersinia pestis|Y. pestis]]* exhibits substantial rate variation [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]]. 
5. Previous work found that robust estimates of model parameters could not be estimated, thus leading to the conclusion that *[[Yersinia pestis|Y. pestis]]* completely lacks temporal signal [[Wagner 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]]
6. Other studies found  that data composition is a strong determinant of temporal signal  [[Spyrou 2019 Phylogeography Second Plague|[@spyrou2019PhylogeographySecondPlague;]] [[Duchene 2016 Genome-scale Rates Evolutionary|@duchene2016GenomescaleRatesEvolutionary]]], suggesting that sub-populations of _[[Yersinia pestis|Y. pestis]]_ may have such distinct rates that a species-wide signal is obscured.
7.  This uncertainty has produced radically different temporal models between studies, with divergence dates shifted by thousands of years [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Rasmussen 2015 Early Divergent Strains\|@rasmussen2015EarlyDivergentStrains]]]. Thus a comprehensive understanding of plague's molecular clock, or lack thereof, is necessary before we can untangle which human populations have been affected by this disease.

## Objectives

1. Investigate the extent of rate variation within and between _[[Yersinia pestis|Y. pestis]]_ populations, using the expanded global phylogeny.
2. Explain why these differences exist.
3. 

## Results

We began by reproducing the finding that _[[Yersinia pestis|Y. pestis]]_ has extensive rate variation. A linear regression of the root-to-tip distance on collection date (Figure @fig:rtt)  produces a near-zero [[Coefficient of Determination\|coefficient of determination]] (R<sup>2</sup>=0.09), indicating substantial variation that is poorly explained by a simple linear model (ie. strict clock). 

Next, we investigated how this variation was distributed across the maximum-likelihood phylogeny. At first, there appeared to be population-specific trends in rate-variation. Notable examples include the [[LNBA\|Bronze Age]] population (`[[0.PRE]]`) which was found to have minimal variation (R<sup>2</sup>=0.91), the [[Second Pandemic]] population (`[[1.PRE]]`) which had moderate variation (R<sup>2</sup>=0.76), and the *[[Medievalis]]* population (`[[2.MED]]`) which had an extremely high degree of rate variation (R<sup>2</sup>=0.01). However, given that ...

well-characterized phenomenon: the [[Time Dependency of Molecular Rate Estimates\|time dependency of molecular rates]] [[Ho 2005 Time Dependency Molecular\|[@ho2005TimeDependencyMolecular;]] [[Duchene 2016 Genome-scale Rates Evolutionary\|@duchene2016GenomescaleRatesEvolutionary]]]. 

- Fit an exponential model to the time dependency.

Previous work has shown that evolutionary rates vary according to the sampling time frame. 

instantaneous mutation rate to the long-term substitution rate
- 
- Substitution rates in _[[Yersinia pestis|Y. pestis]]_ are highly infludnece

> **Substition rates in _[[Yersinia pestis|Y. pestis]]_ are highly influenced by a time dependency.**
> ** _Y. pestis_ has substantial variation in *mutation rates*, but little variation in *substitution rates.* **
- A linear regression of the root-to-tip distance on collection date for all samples produces an extremely low [[Coefficient of Determination\|coefficient of determination]] (R<sup>2</sup>=0.09) (Figure @fig:rtt). 
- Rate variation is not uniformly distributed across the phylogeny. Such as 
- it varies both between and within popul
- [[0.PRE]] (_Bronze Age_) has minimal rate variation (R<sup>2</sup>=0.91), [[1.PRE]] (_Second Pandemic_)  has moderate rate variation (R<sup>2</sup>=0.76), and [[2.MED]] (_medievalis_) has extreme rate variation (R<sup>2</sup>=0.76), so much so that its estimated substitution rate is negative.
- This is due to the [[Time Dependency of Molecular Rate Estimates]] [[Ho 2005 Time Dependency Molecular\|[@ho2005TimeDependencyMolecular;]] [[Duchene 2016 Genome-scale Rates Evolutionary\|@duchene2016GenomescaleRatesEvolutionary]]]. Populations sampled over a 
- Populations sampled over a long period of time
- high, short-term (<1–2 Myr) mutation rate and the low, long-term substitution rate
- 

## Results

![ [[Root to Tip Regression\|Root-to-tip regression]]](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/fab9783/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt.png){#fig:rtt width=100%}
