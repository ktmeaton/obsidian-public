---
title: "1000 Plagues in the Genomics Era"
subtitle: "Exhibiting Biographies of Bacteria"
aliases:
  - Kalamazoo 2021 Presentation
  - "1000 Plagues in the Genomics Era"
  - "Exhibiting Biographies of Bacteria"
author: 
  - [[Katherine Eaton]]
authors:
  - name: [[Katherine Eaton]]
    github: ktmeaton
    orcid: 0000-0001-6862-7756
    affiliations: [[[McMaster Ancient DNA Center]], [[McMaster University]], [[Department of Anthropology]], [[McMaster University]]]
venue: "Curating Medieval Plague and Pestilence"
progress: true
slideNumber: true
slideLevel: 3
tags:
  - 📝/🌱
  - ⬜/🧨 
status: priority
type: [[Slides]]
due: 2021-05-15
time: 12:30
date: 15 May 2021
toc: false
compile-revealjs: "conda activate pandoc && pandoc/convert_wikilinks.py --input 'Kalamazoo 2021 Presentation.md' --output 'Kalamazoo 2021 Presentation_convert.md' && pandoc --standalone -o 'Kalamazoo 2021 Presentation.html' -t revealjs --slide-level 3 --template pandoc/templates/revealjs-obsidian/template.html --css pandoc/templates/revealjs-obsidian/simple.css --filter pandoc-crossref --citeproc --bibliography pandoc/bib/library.bib --csl pandoc/csl/apa-numeric-superscript.csl 'Kalamazoo 2021 Presentation_convert.md' && rm 'Kalamazoo 2021 Presentation_convert.md';" 
---

## Introduction

<aside class="notes" style="visibility: hidden">
Notes about the introduction section.
</aside>

### Ancient DNA

- Genetic evidence offers a window into past [[disease experience]].
- [[Ancient DNA]] (aDNA) techniques can identify [[bacterial]] and [[viral]] DNA in [[skeletal remains]] (and even artifacts!)
- aDNA can then be used to study [[Infectious Disease\|infectious diseases]], like [[Medieval|medieval]] [[Plague|plague]].

<aside class="notes" style="visibility: hidden">
Notes about the Ancient DNA section
</aside>

### Applications

1. **WHEN** did [[plague]] first appear in human populations? [[Rasmussen 2015 Early Divergent Strains\|[@rasmussen2015EarlyDivergentStrains ]]]
1. **WHERE** has [[plague]] appeared [[Bos 2011 Draft Genome Yersinia\|[@bos2011DraftGenomeYersinia]]]?
1. **HOW** has [[plague]] moved across the landscape?

### Requirements

- However, the ability to accurately reconstruct [[Geospatial|spatial patterns]] of an ancient disease requires [[robust comparative datasets]]. 
- In order to produce such datasets, extensive sampling is required across both time and place, followed by careful [[Curation|curation]]. 
- Fortunately, recent advances in DNA [[Sequencing|sequencing]] technology have facilitated efforts to conduct this extensive sampling on a [[Global]] scale, and [[data repositories]] continue to grow at unprecedented rates.

### Problem

- However, this technological progress has also placed a strain on our ability to effectively manage, [[curate]], and present the avalanche of data effectively. 
- Despite there being over 1000 publicly available [[plague]] [[Genome|genomes]], only 200-300 are routinely used in comparative frameworks. 

We hypothesize this may be primarily attributed to the following three reasons, as the additional datasets are: 

1. not known about
2. known about, but difficult to access
3. accessible, but lack historically-meaningful [[Metadata|metadata]] .

### Objectives

To tackle these obstacles, this project aims to do the following. 

1. First, to design [[Database]] [[Software|software]] to assist geneticists with the acquisition, organization, and discovery of [[Infectious Disease|infectious disease]] [[Metadata|metadata]]. 
2. Second, to [[Curate|curate]] historically-meaningful [[Metadata|metadata]] for the available plague genomes, both [[Ancient|ancient]]and [[Modern|modern]], and provide an accompanying [[Bibliography|bibliography]]. 
3. And third, to integrate these data into an updated [[Global|global]] [[Phylogenetic|phylogeny]], to broaden the scope of historical [[Narrative|narratives]] present.
4. Digital Exhibit

## Data Collection

### DNA Archives

- What and where are the DNA archives?
- International Nucleotide Sequence Database Collaboration:
	1. USA - [National Centre for Biotechnology Information](https://www.ncbi.nlm.nih.gov/)
	2. Europe - [European Nucleotide Archive](https://www.ebi.ac.uk/ena/)
	3. Japan - [DNA Data Bank of Japan](https://www.ddbj.nig.ac.jp/dra/index-e.html)
	
<img src="https://www.ddbj.nig.ac.jp/assets/images/center/insdc_shoukai.gif" width="40%">

<aside class="notes" style="visibility: hidden">
Just as historians dive into the literary archives, geneticist tackle the DNA archives.
</aside>

### Archive Access

- Power: Rich in informative metadata!
- Problem: No inter-record comparison or bulk record retrieval.

|                                                                  |                               |
| ------------------------------------------------------------------------ | ------------------------------ |
| ![\|300](https://raw.githubusercontent.com/ktmeaton/NCBImeta/master/logo.png) | ![[NCBImeta Paper Header.png]] |

### Data Conversion

![[NCBImeta Data Conversion.png]]

## Data Curation

### Geography

How do you go from a written description
```
Bayan-Ölgii, Mongolia
```
to geographic coordinates?
```
48.5470083, 89.8549358
```

- [[Geocoding]]

## Dissemination

## Conclusion