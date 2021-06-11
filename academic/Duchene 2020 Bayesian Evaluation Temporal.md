---
aliases:
  - Duchene et al. (2020) Bayesian Evaluation Temporal
  - '@duchene2020BayesianEvaluationTemporal'
  - Duchene et al. (2020)
  - Duchene et al. 2020
type: [[Literature]]
tags: 
  - 📥/📰
  - 📝/🌱  
due: 2021-05-18
status: done
project: [[plague-phylogeography]]
---

# Duchene 2020 Bayesian Evaluation Temporal

| Field   | Value                                                                                              |
| ------- | -------------------------------------------------------------------------------------------------- |
| Title   | [[Bayesian]] Evaluation of [[Clock Model\|Temporal Signal]] in [[Measurably Evolving Populations]] | 
| Year    | 2020                                                                                               |
| Authors | [[Sebastian Duchene\|Duchene]]  et al.                                                             |
| DOI     | <https://doi.org/10.1093/molbev/msaa163>                                                                                 |
| bibtex  | duchene2020BayesianEvaluationTemporal                                                              |


## Summary

- [[Root to Tip Regression]] is practical, but has several important limitations. 
1. Data points are not independent observations, given that internal branches are traversed multiple times.
2. A strict clock-like behavior is assumed.
- An important concept that is reiterated is [[Measurably Evolving Populations]], which is that sufficient molecular evolution has occurred over the time span of interest.
- [[Date Randomization]] is a powerful way to test for temporal signal, but is a frequentist approach that does not mix well with [[Bayesian]] methods.
- The new model [[Bayesian Evaluation of Temporal Signal|BETS]] compares two competing models:
1.  [[Heterochronous]]: The true sampling date is used.
2.[[Isochronous]]: The sampling dates are all made contemporaneous.
- [[Bayesian Evaluation of Temporal Signal|BETS]] is therefore a test of [[Ultrametric\|ultrametricity]].
- [[Bayes Factor]] is used to evaluate these competing models. In essence, it is the ratio of the [[Marginal Likelihood]] of the models.
- There are numerous ways to estimate the [[Marginal Likelihood]].

## Seldon Summary

> - We considered three configurations for sampling times: birth–death sampling times, which are correct for the heterochronous data but not for the isochronous data; identical sampling times, which is correct for isochronous data but not for the heterochronous data; and permuted birth–death sampling times, which are incorrect for both heterochronous and isochronous data.
> - Receiver operating characteristic (ROC) curves for data simulated with high evolutionary rate and wide sampling window (i), low evolutionary rate and wide sampling window (ii), high evolutionary rate and narrow sampling window (iii), and low evolutionary rate and narrow sampling window (iv).
> - Although both log marginal-likelihood estimators detected temporal signal, NS supported the relaxed clock over the strict clock for three heterochronous data sets simulated without among-lineage rate variation (r ¼ 0.0) and for six data sets simulated with low among-lineage rate variation (r ¼ 0.1).
> - The approach involves quantifying statistical support for two competing models: a model in which the data are accompanied by the actual sampling times (i.e., the data are treated as heterochronous) and a model in which the sampling times are contemporaneous (i.e., the data are treated as isochronous).
> - Estimates of log marginal likelihoods with GSS and NS were very similar among models, with mean log Bayes factors among data sets of <1 for the two models with highest log marginal likelihoods for GSS (supplementary fig. S6, Supplementary Material online).
> - Differentiating between the strict clock and relaxed clock appeared somewhat more difficult, particularly for NS, where the relaxed clock with correct sampling times yielded log marginal likelihoods very similar to those for the strict clock for data with low among-lineage rate variation (r of 0.0 or 0.1).
> - Phylogenetic methods can use the sampling times of molecular sequence data to calibrate the molecular clock, enabling the estimation of evolutionary rates and timescales for rapidly evolving pathogens and data sets containing ancient DNA samples.