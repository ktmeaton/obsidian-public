---
title: 2021-03-23 Poinar Lab Meeting
authors: Katherine Eaton
date: 2021-03-23
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
- #Migration history of an outbreak (**Fig 2**).

| Fig. 1                                            |                   Fig 2.                    |
|:-------------------------------------------------:|:-------------------------------------------:|
|  ![[kalkauskas2021SamplingBiasModel_fig4b.png]]   | ![[faria2018GenomicEpidemiologicalMonitoring_fig4e.jpg]] |
| [MRCA Location of West Nile Virus (WNV) in the USA.](kalkauskas2021SamplingBiasModel) | [Migration of the Yellow Fever Virus (YFV) outbreak in Brazil.](faria2018GenomicEpidemiologicalMonitoring) |

---

### Why is Plague interesting?

 ###### 1. Breadth and Scope
- Long history with humans (**Fig 3**).
- Huge geographic range (every continent except Antarctica).

|                      Fig. 3                       |
|:-------------------------------------------------:|
|           ![[spyrou2018Analysis3800yearoldYersinia_fig2c.jpg]]           |
| [Timeline of ancient <i>Yersinia pestis</i> genomes.](spyrou2018Analysis3800yearoldYersinia) | 

 ###### 2. Hot Debates!
- The [[Geographic Origin]](s) are contentious (**Fig 4**).
- Multiple #Reemergences  with distinct spatial patterns (**Fig 5**).

|                                                   Fig 4                                                   |                              Fig 5                               |
|:---------------------------------------------------------------------------------------------------------:|:----------------------------------------------------------------:|
|                              ![[rascovan2019EmergenceSpreadBasal_fig5d.jpg]]                              |           ![[wagner2014YersiniaPestisPlague_fig4.jpg]]           |
| [Dispersion model during the Late Neolithic Bronze Age.](rascovan2019EmergenceSpreadBasal) | [Hypothesized dissemination routes of the major plague pandemics.](wagner2014YersiniaPestisPlague) |

 ###### 3. Potential Contributions
- Novel Synthesis: Triple the sample size of existing [[Yersinia pestis]] phylogenies.
- Geospatial Analysis: Use a statistical approach to mapping the [Geographic Origin]](s) and #Migration.

---

## Problem

- [[Phylogeography]] is highly sensitive to #Sampling-Bias.
- The true distribution is not evenly sampled (under/over-sampling).
- [Kalkauskas et al. 2021](kalkauskas2021SamplingBiasModel) demonstrates this looking at West Nile Virus in the USA.
 
|    Fig 6                                                                                      |
|:-----------------------------------------------------------------:|
| ![[kalkauskas2021SamplingBiasModel_fig4.png]] |
| [(Top) Maximum Clade Credibility tree of West Nile Virus in the western and eastern USA. (Bottom) MRCA location of all western samples. (Blue: All samples, Red: Only western samples, Orange: western samples and sequence-free eastern samples ).](kalkauskas2021SamplingBiasModel) |

---

## Questions

1. What are the [[Geographic Origin]]s and [[Migration]] patterns of the [[Medieval]] [[Plague]] [[Pandemic]]?
1. To what extent are the results influenced by sampling biases?
	- Over-sampling of East-Asia and the Caucasus.
	- Under-sampling of Africa and the Mediterranean.
---

## Previous Work

1. Estimated a time-scaled phylogeny of 634  <i>Y. pestis</i> genomes.

	|                                     Fig 7                                     |
	|:-----------------------------------------------------------------------------:|
	|               ![[eaton2021Plague-Phylogeography_timetree.jpg]]                |
	| [Time-scaled phylogeny of <i>Y. pestis</i>. ](eaton2021Plague-Phylogeography) |
	|                                                                               |

1. Estimated geographic location for all internal nodes.


| Fig  8                                                                                                      |
|:--------------------------------------------------------------------:|
| ![[eaton2021Plague-Phylogeography_map.svg]]                                |
| [Geographic distribution of <i>Y. pestis</i> genomes in this study.](eaton2021Plague-Phylogeography)            |

3. Plot the arrival of [[Plague]] in [[Medieval]] [[Europe]] and subsequent [[Migration]]s.

|                                                Fig 9                                                 |
|:----------------------------------------------------------------------------------------------------:|
|                             ![[eaton2021Plague-Phylogeography_animate-1.PRE.mp4]]                              |
| [Medieval and Early Modern  pandemic clade 1.PRE timetree. ](eaton2021Plague-Phylogeography) |
                					
4. Plot the departure of [[Plague]] from #Medieval [[Europe]].

| Fig 10 |
|:---------:|
| ![[eaton2021Plague-Phylogeography_spreadmap-1.ANT.svg]] |
| [African  clade 1.ANT spreadmap. ](eaton2021Plague-Phylogeography) |
| **Fig 11** |
| ![[eaton2021Plague-Phylogeography_spreadmap-1.IN.png]] |
| [Intermediate clade 1.IN spread map. ](eaton2021Plague-Phylogeography) |

---

## Experiment

###### Objectives

1. Estimate the bias and variance in ancestral geographic locations.
	-  #Jacknife: Leave <i>n</i> out ([[shi2010UsingJackknifeAssess|Shi et al. 2010]]).
	-  #Randomization: Shuffle the location labels ([[duchene2015PerformanceDateRandomizationTest|Duchene et al. 2015]]).
	-  #Bootstrap: Sampling with replacement. 
<br>	  
2. Visualize the geographic variance  of historically important nodes on a map.
	- Ex. #MRCA of all #Medieval [[Plague]].
	- Probability distribution of locations (Western China, Caucasus, etc.)
	- Check if the distributions overlap?
<br>

###### Questions

1. Assess before or after tree estimation?
	- After: Uncertainty in the tree topology is already estimated with bootstrapping.


---

tags: [[Presentation]]