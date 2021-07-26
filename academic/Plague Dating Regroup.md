---
project:
due: 2021-07-26
people:
tags: ⬜/🧨 
status: priority
title: Plague Dating Regroup
type: [[Task]]
---

# Plague Dating Regroup

---

## Clock Model Runs Overview

- One tree/population prior is tested (constant coalsecent?):
	1. No hyperprior (noHyperPrior).
	2. An exponential(?) hyperprior (epop).
- Two models of rate variation are tested:
	1. Strict clock (SC)
	2. Relaxed clock (UCLN)
- Temporal signal is tested:
	1. No tip dates.
	2. Tip dates.
- This combination of parameters results in 2<sup>3</sup>=**8 separate models**.
- The marginal likelihood of each model is calculated using a Generalized Stepping Stone (GSS) approach.
- First, we tested these models(?) on a dataset composed of 191 samples ("Prune"). The MCMC analysis was unstable, we suspect because there was too much rate variation.
- Then, we tested these models(?) on an alignment separated into **12 clades**.
- This produces a total of **96 MCMC runs** (12 clades x 8 models).

> Indeed, this is the most comprehensive and thorough dating analysis of *[[Yersinia pestis]]*.

---

## Phylogeography Runs Overview

- We selected 5 clades to test discrete phylogeography on:
	- Bronze Age Plague (0.PRE)
	- First Pandemic (0.ANT4)
	- Second Pandemic (1.PRE)
	- Third Pandemic (1.ORI)
	- Medievalis (2.MED)
- What models/priors were used for these runs (site, clock, tree? )

---

<div style="page-break-after: always;"></div>

## Output Summary

- In a previous email, we decided to use the results of the no hyper prior (noHyperPrior) for stats tables/figures in the manuscript... *"because they make fewer assumptions"*. If this is correct, what are the epop analyses for?
- The noHyperPrior models are of variable length, and are very long chains (100s millions to billions). While the epop analyses are all run for a flat 100M generations. Why is that?
- I've include tables (below) that summarize the files that are produced by these runs.
- There are several clades (highlighted in red) that I don't have log files for.
- From the most recent update, there are several clades (highlighted in red) that I have updated log files for, but not updated trees.
- There are several clades (highlighted in orange) for which you sent me new log files. However, the chain length has not changed and no new trees were sent. Was this just a re-upload of old runs?

---

## No Hyper Prior Output

![[noHyperPrior output summary.png]]

<div style="page-break-after: always;"></div>

---

## epop Prior Output

> I'm uncertain what this output should be used for.

![[epop output summary.png]]