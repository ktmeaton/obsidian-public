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

### What is Ancient DNA?

<hr>

- DNA retrieved from [[skeletal remains]] (+soil and artifacts!)
- Genetic evidence offers a window into past [[disease experience]].
- Can be used to study [[Infectious Disease\|infectious diseases]], like [[Medieval|medieval]] [[Plague|plague]].

<img src="https://newhumanist.org.uk/images/rowson-DNA.jpg" width="40%" />

<small>*Illustration by Martin Rowson*</small>

### How is Ancient DNA applied?

<hr>

1. **WHEN** did [[plague]] first appear in human populations [[Rasmussen 2015 Early Divergent Strains\|[@rasmussen2015EarlyDivergentStrains ]]] ?
1. **WHERE** has [[plague]] appeared [[Bos 2011 Draft Genome Yersinia\|[@bos2011DraftGenomeYersinia]]] ?
1. **HOW** has [[plague]] moved across the landscape [[Guellil 2020 Genomic Historical Synthesis\|[@guellil2020GenomicHistoricalSynthesis]]] ?


<img src="https://github.com/ktmeaton/obsidian-public/raw/master/academic/guellil2020GenomicHistoricalSynthesis_fig2.jpg" width="40%" />

<small>*[[Guellil 2020 Genomic Historical Synthesis\|Guellil et al. (2020)]]*</small>

### What evidence is needed?

<hr>

<span style="color:#00008B">[[Robust comparative datasets]]</span>

1. Extensive sampling across time and place.
1. Careful [[Curation|curation]] of DNA sequences and metadata. 

> Fortunately, recent advances in DNA [[Sequencing|sequencing]] technology have facilitated efforts to conduct this extensive sampling on a [[Global]] scale, and [[data repositories]] continue to grow at unprecedented rates.

### What are some obstacles?

<hr>

- This technological progress has created an avalanche of data.

- Challenging to <u>**collect**</u>, <u>**[[curate]]**</u>, and <u>**present**</u> this information. 

- 1600+ publicly available [[plague]] [[Genome|genomes]].

- Only 200-300 are routinely used in comparative frameworks. 

### What can we do?

<hr>

1. First, to design [[Database]] [[Software|software]] to assist geneticists with the acquisition, organization, and discovery of [[Infectious Disease|infectious disease]] [[Metadata|metadata]]. 

2. Second, to [[Curate|curate]] historically-meaningful [[Metadata|metadata]] for the available plague genomes, both [[Ancient|ancient]]and [[Modern|modern]], and provide an accompanying [[Bibliography|bibliography]]. 

3. And third, to integrate these data into an updated [[Global|global]] [[Phylogenetic|phylogeny]], to broaden the scope of historical [[Narrative|narratives]] present.

4. Digital Exhibit

## Data Collection

### What is a DNA archive?

<hr>

- International Nucleotide Sequence Database Collaboration:
	1. USA - [National Centre for Biotechnology Information](https://www.ncbi.nlm.nih.gov/)
	2. Europe - [European Nucleotide Archive](https://www.ebi.ac.uk/ena/)
	3. Japan - [DNA Data Bank of Japan](https://www.ddbj.nig.ac.jp/dra/index-e.html)
	
<img src="https://www.ddbj.nig.ac.jp/assets/images/center/insdc_shoukai.gif" width="40%">

<aside class="notes" style="visibility: hidden">
Just as historians dive into the literary archives, geneticist tackle the DNA archives.
</aside>

### How is the archive accessed?

<hr>

- Power: Rich in informative metadata!
- Problem: No inter-record comparison or bulk record retrieval.

<img src="https://github.com/ktmeaton/obsidian-public/raw/master/academic/NCBImeta%20Paper%20Header.png" style="width:60%;border: 1px solid #555">

### How is the data transformed?

<hr>

<img src="https://github.com/ktmeaton/obsidian-public/raw/master/academic/NCBImeta%20Data%20Conversion.png" style="width:80%;border: 1px solid #555">

### What has been learned?

<hr>

- Strategic and transparent data collection system, very useful for interdisciplinary work. 
- Staying up to date with the latest and greatest *[[Yersinia pestis|Y. pestis]]* research.
- Many research groups are re-inventing the wheel (myself included). 
- Search for ways to reduce redundancy, or if the uniqueness of each project and analysis precludes that.

## Data [[Curate\|Curation]]

### Collection Location

<hr>

1. Selecting a **nomenclature** system and coordinate reference.
	- Google Maps, MapBox, OpenStreetMap*


2. Select a geographic <u>**resolution**</u> that is appropriate for the study.

> Analyzing plague at the level of country produces strange results!

|                                                                                                           |                                                                                                            |
|:---------------------------------------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------------------------:|
| <img src="https://raw.githubusercontent.com/ktmeaton/obsidian-public/master/academic/russia_country.jpg"> | <img src="https://raw.githubusercontent.com/ktmeaton/obsidian-public/master/academic/russia_province.jpg"> |
|                                       <small>*Country (N=85)*</small>                                       |                                       <small>*Province (N=85)*</small>                                       |

### Collection Date

<hr>

- If you scour the internet, you will find it.

### Sequence Quality

<hr>

- [[nf-core/eager]]

### What has been learned?

<hr>

## Data Presentation

### Digital Exhibit

<hr>

## Conclusion

## References