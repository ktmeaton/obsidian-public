---
title: 2021-03-23 Poinar Lab Meeting
authors: Katherine Eaton
due: 2021-03-23
tags:
  - ✨
status:
  - done
---

# Plague-Phylogeography 
### Novel Synthesis and Geospatial Analysis

[Katherine Eaton](https://ktmeaton.github.io/)
Poinar Lab Meeting
23 March 2021

---

## Table of Contents

1. Introduction
2. Problem
3. Questions
4. Previous Work
5. Experiment
 
---

## Introduction

 - The ancestral location of pathogens can be estimated using [[Phylogeography]].
- [[Geographic Origin]]s of an emerging disease (**Fig 1**).
- [[Spread|migration]] history of an outbreak (**Fig 2**).

| Fig. 1                                            |                   Fig 2.                    |
|:-------------------------------------------------:|:-------------------------------------------:|
|  ![[kalkauskas2021SamplingBiasModel_fig4b.png]]   | ![[faria2018GenomicEpidemiologicalMonitoring_fig4e.jpg]] |
| [MRCA Location of West Nile Virus (WNV) in the USA.](Kalkauskas%20et%20al.%202021%20Sampling%20Bias%20Model.md) | [Migration of the Yellow Fever Virus (YFV) outbreak in Brazil.](Faria%20et%20al.%202018%20Genomic%20Epidemiological%20Monitoring.md) |

---

### Why is Plague interesting?

 ###### 1. Breadth and Scope
- Long history with humans (**Fig 3**).
- Huge geographic range (every continent except Antarctica).

|                      Fig. 3                       |
|:-------------------------------------------------:|
|           ![[spyrou2018Analysis3800yearoldYersinia_fig2c.jpg]]           |
| [Timeline of ancient <i>Yersinia pestis</i> genomes.](Spyrou%20et%20al.%202018%20Analysis%203800-Year-Old%20Yersinia.md) | 

 ###### 2. Hot Debates!
- The [[Geographic Origin]](s) are contentious (**Fig 4**).
- Multiple [[Emergence|reemergences]] with distinct spatial patterns (**Fig 5**).

|                                                   Fig 4                                                   |                              Fig 5                               |
|:---------------------------------------------------------------------------------------------------------:|:----------------------------------------------------------------:|
|                              ![[rascovan2019EmergenceSpreadBasal_fig5d.jpg]]                              |           ![[wagner2014YersiniaPestisPlague_fig4.jpg]]           |
| [Dispersion model during the Late Neolithic Bronze Age.](Rascovan%20et%20al.%202019%20Emergence%20Spread%20Basal.md) | [Hypothesized dissemination routes of the major plague pandemics.](Wagner%20et%20al.%202014%20Yersinia%20Pestis%20Plague.md) |

 ###### 3. Potential Contributions
- Novel Synthesis: Triple the sample size of existing [[Yersinia pestis]] phylogenies.
- Geospatial Analysis: Use a statistical approach to mapping the [[Geographic Origin]](s) and [[Spread]].

---

## Problem

- [[Phylogeography]] is highly sensitive to [[Sampling Bias|sampling bias]].
- The true distribution is not evenly sampled (under/over-sampling).
- [Kalkauskas et al. 2021](Kalkauskas%20et%20al.%202021%20Sampling%20Bias%20Model.md) demonstrates this looking at West Nile Virus in the USA.
 
|    Fig 6                                                                                      |
|:-----------------------------------------------------------------:|
| ![[kalkauskas2021SamplingBiasModel_fig4.png]] |
| [(Top) Maximum Clade Credibility tree of West Nile Virus in the western and eastern USA. (Bottom) MRCA location of all western samples. (Blue: All samples, Red: Only western samples, Orange: western samples and sequence-free eastern samples ).](Kalkauskas%20et%20al.%202021%20Sampling%20Bias%20Model.md) |

---

## Questions

1. What are the [[Geographic Origin]]s and [[Spread|Migration]] patterns of the [[Medieval]] [[Plague]] [[Pandemic]]?
1. To what extent are the results influenced by sampling biases?
	- Over-sampling of East-Asia and the Caucasus.
	- Under-sampling of Africa and the Mediterranean.
---

## Previous Work

1. Estimated a time-scaled phylogeny of 634  <i>Y. pestis</i> genomes.

	|                                     Fig 7                                     |
	|:-----------------------------------------------------------------------------:|
	|               ![[eaton2021Plague-Phylogeography_timetree.jpg]]                |
	| [Time-scaled phylogeny of <i>Y. pestis</i>. ](Eaton%20et%20al.%202021%20Plague%20Phylogeography%20Novel.md) |
	|                                                                               |

1. Estimated geographic location for all internal nodes.


| Fig  8                                                                                                      |
|:--------------------------------------------------------------------:|
| ![[eaton2021Plague-Phylogeography_map.svg]]                                |
| [Geographic distribution of <i>Y. pestis</i> genomes in this study.](Eaton%20et%20al.%202021%20Plague%20Phylogeography%20Novel.md)            |

3. Plot the arrival of [[Plague]] in [[Medieval]] [[Europe]] and subsequent [[Migration]]s.

|                                                Fig 9                                                 |
|:----------------------------------------------------------------------------------------------------:|
|                             ![[eaton2021Plague-Phylogeography_animate-1.PRE.mp4]]                              |
| [Medieval and Early Modern  pandemic clade 1.PRE timetree. ](Eaton%20et%20al.%202021%20Plague%20Phylogeography%20Novel.md) |
                					
4. Plot the departure of [[Plague]] from [[Medieval]] [[Europe]].

| Fig 10 |
|:---------:|
| ![[eaton2021Plague-Phylogeography_spreadmap-1.ANT.svg]] |
| [African  clade 1.ANT spreadmap. ](Eaton%20et%20al.%202021%20Plague%20Phylogeography%20Novel.md) |
| **Fig 11** |
| ![[eaton2021Plague-Phylogeography_spreadmap-1.IN.png]] |
| [Intermediate clade 1.IN spread map. ](Eaton%20et%20al.%202021%20Plague%20Phylogeography%20Novel.md) |

---

## Experiment

###### Objectives

1. Estimate the bias and variance in ancestral geographic locations.
	-  [[Resampling#Jacknife]]: Leave <i>n</i> out ([[literature/# Shi et al. 2010 Using Jackknife Assess|Shi et al. 2010]]).
	-   [[Resampling#Randomization]]: Shuffle the location labels ([[Duchene et al. 2015 Performance Date-Randomization Test|Duchene et al. 2015]]).
	-  [[Resampling#Bootstrap]]: Sampling with replacement. 
<br>	  
2. Visualize the geographic variance  of historically important nodes on a map.
	- Ex. [[MRCA]] of all [[Medieval]] [[Plague]].
	- Probability distribution of locations (Western [[China]], [[Caucasus]], etc.)
	- Check if the distributions overlap?
<br>

###### Questions

1. Assess before or after tree estimation?
	- After: Uncertainty in the tree topology is already estimated with bootstrapping.


---

tags: [[Presentation]]
