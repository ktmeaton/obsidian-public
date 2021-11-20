---
project: [[Plague Denmark]]
due: June 28, 2021
authors:
  - name: [[Katherine Eaton]]*
    orcid: 0000-0001-6862-7756
    affiliations:
      [	
        "[[McMaster Ancient DNA Center]]",
        "[[Department of Anthropology]], [[McMaster University]]"
      ]
  - name: [[Ravneet Sidhu]]
    affiliations:
    affiliations:
      [	
        "[[McMaster Ancient DNA Center]]",
        "[[Department of Biology]], [[McMaster University]]"
      ]
  - name: [[Jennifer Klunk]]
    orcid: 0000-0002-6521-8516
    affiliations: [
      "[[Daicel Arbor Biosciences]]"
    ]
  - name: [[Julia Gamble]]
    orcid: 0000-0001-7486-757X
    affiliations: [
      "[[University of Manitoba]]"
    ]
  - name: [[Jesper Boldsen]]
    orcid: 0000-0002-2850-0934
    affiliations: [
      "[[University of Southern Denmark]]; [[ADBOU]]"
    ]
  - name: [[Ann Carmichael]]
    affiliations: [ "Department of History, [[Indiana University Bloomington]]" ]
  - name: [[Nükhet Varlık]]
    orcid: 0000-0001-6870-5945
    affiliations: [ "Department of History, [[Rutgers University-Newark ]]" ]
  - name: [[Sebastian Duchene]]
    orcid: 0000-0002-2863-0907
    affiliations:
      [
        "[[The Peter Doherty Institute for Infection and Immunity]],
          [[University of Melbourne]]"
      ]
  - name: [[Leo Featherstone]]
    orcid: 0000-0002-8878-1758
    affiliations:
      [
        "[[The Peter Doherty Institute for Infection and Immunity]],
          [[University of Melbourne]]"
      ]
  - name: Vaughan Grimes	
    orcid: 0000-0002-2177-3147
    affiliations: [
      "[[Memorial University]]"
    ]
  - name: [[Brian Golding]]
    orcid: 0000-0002-7575-0282
    affiliations:
      [
        "[[Department of Biology]], [[McMaster University]]"
      ]
  - name: [[Sharon DeWitte]]
    orcid: 0000-0003-0754-8485	
    affiliations: [
      [[University of South Carolina]]
    ]
  - name: [[Michelle Ziegler]]
    orcid: 0000-0001-5762-2327
    affiliations: [
      [[Southern Illinois University Edwardsville]]
    ]
  - name: [[Hendrik Poinar]]
    orcid: 0000-0002-0314-4160
    affiliations:
      [
        "[[McMaster Ancient DNA Center]]",
        "[[Department of Anthropology]], [[McMaster University]]"
      ]
lang: en-US
repo: ktmeaton/obsidian-public
filepath: academic/[[Plague Denmark Paper]]
tags: ⬜/🧨 
status: priority
title: An 800-year longitudinal study of *Yersinia pestis* in Denmark captures the rise and fall of a plague pandemic.
type: [[Task]]
compile-manubot: "conda activate manubot && pandoc/manubot.sh 'Plague Denmark Paper Outline.md' pandoc/bib/library.json ../../rootstock"
url: https://ktmeaton.github.io/obsidian-public/academic/Plague%20Denmark%20Paper.html
---

## Introduction

## Results

Overall, plague was detected in 4% (13/325) of all individuals in this study (Table @tbl:site_summary). 

We identified 13 individuals as plague-positive based on a combination of PCR assays and targeted capture for _Y. pestis_ (Figure @fig:timeline). Positivity by archaeological site ranged from 0 to 

Of the 13 individuals, we identified 9 that had sufficient coverage (>3X) of the chromosome for phylogenetic analyses.

Overall, plague was detected in 4% (13/325) of all individuals in this study (Table @tbl:site_summary). When excluding plague-negative archaeological sites, this estimate rises to 8.2% (13/159) of individuals. *[[Yersinia pestis|Y. pestis]]* was observed primarily in the Medieval Period, with no evidence of plague in the Viking Age settlements at Ribe Lindegärden or the Early Modern cemetery at Horsens. However, these positivity rates suggest that the absence of plague in Viking settlements could be a false negative as the Viking period is sparsely sampled (N=20). Absence of plague at Klosterkirken (1600-1800) is less likely to be a false negative, as the site represents the second largest sample size (N=50) and plague was detected in every other site from the Horsens region.

### Plague Detection

## Discussion

## Materials and Methods

We sampled 300 individuals across 13 archaeological sites in Denmark (Figure @fig:map, SI Table 1). Site occupation dates spanned from the 11<sup>th</sup> to the 19<sup>th</sup> century CE. We estimated individual date ranges (+/- 100 years) based on burial position, which can be categorized according to cultural shifts that occurred in Denmark throughout the medieval and early modern period [@kieffer-olsen1993GravOgGravskik; @boldsen2009LeprosyMedievalDenmark]. When the original stratigraphic context was preserved, we were able to refine these individual estimates further (+/- 50 years).

DNA was extracted from teeth and dental pulp according to a specialized protocol for ancient DNA [@dabney2013CompleteMitochondrialGenome]. Reagent blanks were introduced as negative controls to monitor DNA contamination in subsequent steps. We screened for plague using a PCR assay that targets the _pla_ virulence gene in _Yersinia pestis_. Extracts showing amplification in at least 4/6 replicates were converted into paired-end sequencing libraries 
[@meyer2010IlluminaSequencingLibrary; @kircher2012DoubleIndexingOvercomes]. Targeted capture of the _Y. pestis_ genome was performed using previously desiged probes [@wagner2014YersiniaPestisPlague] and sequenced on an Illumina platform.

Sequenced molecules were aligned to the reference genome ([[CO92]]) using the _[[nf-core/eager]]_ pipeline [@yates2021ReproduciblePortableEfficient]. To phylogenetically place these new samples, we downloaded a comparative dataset of 39 publicly available _Y. pestis_ genomes dated to the Second Pandemic. We selected an additional 8 _Y. pestis_ genomes that belong to the basal phylogroup ([[0.ANT3]]) to serve as an outgroup. A maximum-likelihood phylogeny was estimated across 10 independent runs of [[IQTREE]] [@minh2020IQTREENewModels]. Branch support was evaluated using 1000 iterations of the [[UFboot\|ultrafast bootstrap approximation]] [@hoang2018UFBoot2ImprovingUltrafast], with a threshold of 95% required for strong support. The outgroup clade ([[0.ANT3]]) was used to estimate the root position and was subsequently pruned from the phylogeny for downstream analysis and visualization. 

To tip-date each sample using the associated _Y. pestis_ DNA, we first evaluated the degree of temporal signal in the data. We performed a [[Bayesian Evaluation of Temporal Signal]] (BETS [@duchene2020BayesianEvaluationTemporal] using a strict clock and an uncorrelated lognormal (UCLN) relaxed clock. Bayes factors were calculated by comparing the marginal likelihoods of each candidate model, as estimated with a generalized stepping stone (GSS) computation. The model with the highest marginal likelihood was then run for 150,000,000 generations to ensure the effective sample size (ESS) of all relevant parameters was greater than 200.

Data visualization was performed using the python package `seaborn` [@waskom2021SeabornStatisticalData] and Auspice  [@hadfield2018NextstrainRealtimeTracking],  a component of the Nextstrain visualization suite.

## Data Availability

## Acknowledgements