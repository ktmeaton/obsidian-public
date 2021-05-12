---
project: [[plague-phylogeography]]
due: 13 May 2021
time: 18:00
people:
  - [[Katherine Eaton]]
  - [[Hendrik Poinar]]
  - [[Sebastian Duchene]]
  - [[Leo Featherstone]]
authors:
  - name: [[Katherine Eaton]]
    github: ktmeaton
    orcid: 0000-0001-6862-7756
    affiliations: [
      "[[McMaster Ancient DNA Center]]", 
      "[[Department of Anthropology]], [[McMaster University]]"
    ]
  - name: [[Leo Featherstone]]
    orcid: 0000-0002-8878-1758	
    affiliations: [
      "[[The Peter Doherty Institute For Infection and Immunity ]], [[University of Melbourne]]"
    ]
  - name: [[Sebastian Duchene]]
    github: sebastianduchene
    orcid: 0000-0002-2863-0907
    affiliations: [
      "[[The Peter Doherty Institute For Infection and Immunity ]], [[University of Melbourne]]"
    ]
  - name: [[Hendrik Poinar]]
    orcid: 0000-0002-0314-4160
    affiliations: [
      "[[McMaster Ancient DNA Center]]", 
      "[[Department of Anthropology]], [[McMaster University]]"
    ]
lang: en-US
tags: ⬜/🧨 
status: priority
title: Plague Phylodynamics and Phylogeography
type: 
  - [[Task]]
  - [[Note]]
numberSections: false
sectionsDepth: 3
tblPrefix: Table
figPrefix: Figure
secPrefix: Section
reference-section-title: References
compile-manubot: "conda activate manubot && pandoc/manubot.sh 'Plague Phylodynamics and Phylogeography Paper.md' pandoc/bib/library.json ../../rootstock"
compile-pandoc: "conda activate pandoc && pandoc/convert_wikilinks.py --input 'Plague Phylodynamics and Phylogeography Paper.md' --output 'Plague Phylodynamics and Phylogeography Paper_convert.md' && ;"
---

# Plague Phylodynamics and Phylogeography

## Concepts

- [[Plague]]
- [[Yersinia pestis]]
- [[Phylodynamics]]
- [[Phylogeography]]
- [[Clade]]

## Introduction

  - Introduce [[Plague]] the disease and it's impact on [[Human]] populations.
  - Introduce the pathogen, [[Yersinia pestis]], ecotypes, subspecies, ecology, distribution. Evolutionary history and mechanisms.
  - Introduce the topics [[phylodynamics]] and [[phylogeography]] and what is known so far.
  - Introduce the problem.

---
<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

## Materials and Methods

### Data Collection

### Data Quality Criteria

### Subsampled Datasets

### Phylogenetic Reconstruction

### Phylodynamics

### Phylogeography

---
<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

## Results

### Curated Dataset

- Composition: Clades, Hosts, Locations, Time Periods

### [[Phylogeny]]

<iframe id="igraph" scrolling="no" style="border:none;" seamless="seamless" src="https://nextstrain.org/community/ktmeaton/plague-phylogeography-projects@main/main/full/all?d=tree&m=div&onlyPanels&p=full&sidebar=closed" height="900px" width=800px ></iframe>

### [[Phylodynamics]]

[[Yersinia pestis|Y. pestis]] has extreme [[rate variation]] as visualized with a [[Root to Tip Regression]]. The R<sup>2</sup> value of 0.09 indicates a poor fit to the [[Clock Model|strict clock]]. 

![Root-To-Regression for All Samples](https://github.com/ktmeaton/plague-phylogeography-projects/raw/main/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt_all.svg){#fig:fig_rtt_all}

[[Root to Tip Regression]] separated by [[Clade|clade]] is more meaningful. The regression numbers don't make sense!

| Branch | Clade      | Origin         | R<sup>2</sup> | p-value   | [[Bayes Factor]] | [[Root to Tip Regression\|Regression]] [[Substitution Rate\|Rate]] | [[BETS]] [[Substitution Rate\|Rate]] |
| ------ | ---------- | -------------- | ------------- | --------- | ---------------- | ------------------------------------------------------------------ | ------------------------------------ |
| 0      | [[0.PRE]]  | Ancient        | 0.91          | 1.53E-04* | 99.96            | 6.84E-08                                                           | 4.31E-08                             |
| 0      | [[0.PE]]   | Modern         | 0.01          | 2.25E-01  | 35.71            | 1.94E-07                                                           | 4.83E-09                             |
| 0      | [[0.ANT4]] | Ancient        | 0.66          | 7.84E-04* | 24.27            | 2.52E-08                                                           | 1.21E-08                             |
| 0      | [[0.ANT]]  | Modern         | -0.01         | 7.35E-01  | 32.89            | 2.73E-09                                                           | 1.66E-08                             |
| 1      | [[1.ANT]]  | Modern         | 0.45          | 2.03E-01  | 18.13            | 5.83E-08                                                           | 2.19E-08                             |
| 1      | [[1.IN]]   | Modern         | 0.0           | 3.24E-01  | 21.97            | 4.22E-08                                                           | 3.42E-08                             |
| 1      | [[1.ORI]]  | Modern         | 0.04          | 1.32E-02* | 78.92            | 2.50E-08                                                           | 5.46E-08                             |
| 1      | [[1.PRE]]  | Ancient        | 0.76          | 1.68E-13* | 4.05             | 6.29E-08                                                           | 5.46E-08                             |
| 2      | [[2.ANT]]  | Modern         | 0.05          | 5.96E-02  | 1.60             |                                                                    | 1.60E-08                             | 
| 2      | [[2.MED]]  | Modern         | 0.01          | 1.86E-01  |                  |                                                                    |                                      |
| 3      | [[3.ANT]]  | Modern         | -0.04         | 4.39E-01  |                  |                                                                    |                                      |
| 4      | [[4.ANT]]  | Modern         | -0.11         | 8.80E-01  |                  |                                                                    |                                      |
| All    | All        | Modern+Ancient | 0.09          | 3.81E-14  |                  |                                                                    |                                      |

Table: Temporal signal statistics by clade
{#tbl:table_rtt}

---
<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

## Discussion

---
<div style="page-break-after: always; visibility: hidden">\pagebreak</div>


## Conclusion

---
<div style="page-break-after: always; visibility: hidden">\pagebreak</div>