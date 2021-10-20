---
title: "1000 Plagues in the Genomics Era"
subtitle: "Exhibiting Biographies of Bacteria"
aliases:
  - Kalamazoo 2021 Presentation
  - "1000 Plagues in the Genomics Era"
  - "Exhibiting Biographies of Bacteria"
author:
  - [ [ Katherine Eaton ] ]
  - [ [ Ann Carmichael ] ]
  - [ [ Edward Holmes ] ]
  - [ [ Brian Golding ] ]
  - [ [ Sebastian Duchene ] ]
  - [ [ Leo Featherstone ] ]
  - [ [ Hendrik Poinar ] ]
venue: "Curating Medieval Plague and Pestilence"
progress: true
slideNumber: true
slideLevel: 3
tags:
  - 📝/🌱
  - ✨
status: done
type: [ [ Slides ] ]
due: 2021-05-15
time: 12:30
date: 15 May 2021
toc: false
compile-revealjs: "conda activate pandoc && pandoc/convert_wikilinks.py --input
  'Kalamazoo 2021 Presentation.md' --output 'Kalamazoo 2021
  Presentation_convert.md' && pandoc --standalone -o 'Kalamazoo 2021
  Presentation.html' -t revealjs --slide-level 3 --template
  pandoc/templates/revealjs-obsidian/template.html --css
  pandoc/templates/revealjs-obsidian/simple.css --filter pandoc-crossref
  --citeproc --bibliography pandoc/bib/library.bib --csl
  pandoc/csl/apa-numeric-superscript.csl 'Kalamazoo 2021
  Presentation_convert.md' && rm 'Kalamazoo 2021 Presentation_convert.md';"
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
1. **WHERE** has [[plague]] appeared [[Bos et al. 2011 Draft Genome Yersinia\|[@bos2011DraftGenomeYersinia]]] ?
1. **HOW** has [[plague]] moved across the landscape [[Guellil 2020 Genomic Historical Synthesis\|[@guellil2020GenomicHistoricalSynthesis]]] ?


<img src="https://github.com/ktmeaton/obsidian-public/raw/master/academic/guellil2020GenomicHistoricalSynthesis_fig2.jpg" width="40%" />

<small>*[[Guellil 2020 Genomic Historical Synthesis\|Guellil et al. (2020)]]*</small>

### What evidence is needed?

<hr>

<span style="color:#00008B">[[Robust comparative datasets]]</span>

1. Extensive sampling across time and place.
1. Careful [[Curation|curation]] of DNA sequences and metadata. 

> Fortunately, recent advances in DNA [[Sequencing|sequencing]] technology have facilitated efforts to conduct this extensive sampling on a [[Global\|global]] scale, and [[data repositories]] continue to grow at unprecedented rates.

### What are some obstacles?

<hr>

- This technological progress has created an avalanche of data.

- Challenging to <u>**collect**</u>, <u>**[[curate]]**</u>, and <u>**present**</u> this information. 

- 1600+ publicly available [[plague]] [[Genome|genomes]].

- Only 200-300 are routinely used in comparative frameworks. 

### What can we do?

<hr>

| Step            | Task            |
| --------------- | --------------- |
| 1. Data Collection | Design [[Database\|database]] [[Software\|software]] to assist geneticists with data collection.                |
| 2. Curation        |  [[Curate\|Curate]] historically-meaningful [[Metadata\|metadata]] for the available plague genomes.                 |
| 3. Dissemination     | Construction of digital exhibits. | 

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

- The web browser experience is rich in informative metadata.
- But there is little inter-record comparison or bulk record retrieval.

<img src="https://github.com/ktmeaton/obsidian-public/raw/master/academic/NCBI Search Bar.png" style="width:60%;border: 1px solid #555">

- In response, I designed database software!

<img src="https://github.com/ktmeaton/obsidian-public/raw/master/academic/NCBImeta%20Paper%20Header.png" style="width:60%;border: 1px solid #555">

### How is the data transformed?

<hr>

<img src="https://github.com/ktmeaton/obsidian-public/raw/master/academic/NCBImeta%20Data%20Conversion.png" style="width:80%;border: 1px solid #555">

### What has been learned?

<hr>

**The "Good"**

- Developed a strategic and reproducible data collection process. 
- Staying up to date with the latest and greatest *[[Yersinia pestis|Y. pestis]]* research.

**The "Bad"**

- Yet Another Software Tool (YAST).
- Time will tell if this tool has longevity and wider applicability.

<aside class="notes" style="visibility: hidden">
Strategic plan is very helpful for coordinating interdisciplinary projects.
</aside>

## Data [[Curate\|Curation]]

### Process

<hr>

#### 1. Cross-reference the automated database with primary sources.

- Correct discrepancies and gather additional context.

> *Never blindly trust an automatation tool. Even one you wrote yourself :) *

#### 2. Select a metadata "resolution" and standardize fields for analysis.

- Collection Location: "*Peru Chota, San Juan de Licupis*"

- Collection Date: "*1999-04-10*"

- Collection Host: "*Neopsylla setosa*"

#### 3. Examine and filter the DNA sequence data based on quality.

### Collection Location

<hr>

 1. Select a <u>**geographic resolution**</u> that is appropriate for the study.

	- Country, Province*, City, etc.

|                                                                                                           |                                                                                                            |
|:---------------------------------------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------------------------:|
| <img src="https://raw.githubusercontent.com/ktmeaton/obsidian-public/master/academic/russia_country.jpg"> | <img src="https://raw.githubusercontent.com/ktmeaton/obsidian-public/master/academic/russia_province.jpg"> |
|                                       <small>*Country (N=85)*</small>                                       |                                       <small>*Province (N=85)*</small>                                       |

2. Select a **nomenclature** system and coordinate reference.

	- Google Maps, MapBox, OpenStreetMap*, etc.
    - Raw: *Peru Chota, San Juan de Licupis, Los Porongos*
    - Standardized: *Peru, Cajamarca, Province of Chota, San Juan de Licupis*
    - Coordinates: *-6.25, -78.833333*

### Collection Date

<hr>

1. Select a <u>**temporal resolution**</u> that is appropriate for the study.

	- Millennia, Century, Year*, Month, Day, etc.
	- Raw: *1999-04-10*
	- Standardized: *1999*

2. Research how your analytical tools will handle <u>**uncertainty**</u>.

	- Raw: *Between -2876 BCE and -2677 BCE.*
	- Standardized: *-2776 BCE +/ 100*

3. Research how your analytical tools will handle years <u>**[[BCE]]**</u>.

	- Raw: *-2776 BCE +/ 100*
	- Standardized: *4797 YBP +/100*

### Collection Host

<hr>

1. Select a <u>**biological resolution**</u> that is appropriate for the study.

	- Family, Genus, Species etc.
	- Human vs. Non-Human*

2. This is an extremely complex field because:

	- Plague Ecology: Wild Rodents -- Insects -- Other Mammals
	- Taxonomic identification of a wide range of mammals is hard!
	- "*Meriones libycus*" vs. "*rat*"

<img src="https://www.worldlifeexpectancy.com/images/a/w/b/meriones-libycus/meriones-libycus.jpg" width=30%>

### DNA Sequence Quality

<hr>

1. Select a <u>**genetic resolution**</u> that is appropriate for the study.

	- Millennia, Century, Decade*, Year, Month, Day, etc.

2. Process the DNA sequences using standardized workflows.

<img src="https://github.com/nf-core/eager/raw/master/docs/images/usage/eager2_workflow.png" width="50%" >

3. Verify the results are congruent with the original publications.


### What has been learned?

<hr>

**The "Good"**

- Most missing metadata fields could be recovered from the primary sources.
- Curation is very subjective, but the process can still be transparent.

**The "Bad"**

- How are we to integrate curated and standardized metadata across projects?

<img src="https://raw.githubusercontent.com/ktmeaton/obsidian-public/master/academic/AncientMetagenomeDir Paper Header.png" style="width:40%;border: 1px solid #555">

## Dissemination

### Digital Exhibit

<hr>

*"To facilitate [[Curate|curation]] and to promote engagement with the project, two [[Digital Exhibit|digital exhibits]] are planned."*

#### 1. [[Nextstrain]] [[Phylogenetic]] Presentation.

- [[Interactive]] display of [[Disease\|disease]] relationships between regions and over time.

#### ~~2. [[ArcGIS]] [[Interactive]] [[StoryMap]]~~

- Spatial distribution can be interrogated along with an accompanying presentation of relevant historical records and archaeologically artifacts.

### [[Nextstrain]] Maps

<hr>

<!--
<iframe id="igraph" scrolling="no" style="border:1px;" src="https://nextstrain.org/community/ktmeaton/plague-phylogeography-projects@main/main/full/all?d=map&p=full" height="500px" width=800px ></iframe>

<iframe id="igraph" scrolling="no" style="border:1px;" src="http://localhost:4000/all?d=map&p=full" height="500px" width=800px ></iframe>

-->

### [[Nextstrain]] Phylogeny

<hr>

<!--
<iframe id="igraph" scrolling="no" style="border:1px;" src="https://nextstrain.org/community/ktmeaton/plague-phylogeography-projects@main/main/full/all?d=tree&p=full" height="500px" width=800px ></iframe>

<iframe id="igraph" scrolling="no" style="border:1px;" src="http://localhost:4000/all?d=tree&p=full" height="500px" width=800px ></iframe>

-->

### [[Nextstrain]] Narrative

<!--

<iframe id="igraph" scrolling="no" style="border:1px;" src="https://nextstrain.org/community/narratives/ktmeaton/plague-phylogeography/DHSI2020Remote?n=6" height="500px" width=800px ></iframe>

-->

### What has been learned?

<hr>

**The "Good"**

- Digital exhibits are not just for polished, final products.
- Useful in collaborative work, discussing how interpretations connect with the data.

**The "Bad"**

- Web servers and web pages require maintenance, can be fragile, and can crash!
- Requires extensive documentation to be accessible for the target audience.

## Conclusion

### Contributions

<hr> 

#### 1. Data Collection

> Automated database tools <u>**save time and reduce error**</u> in parsing DNA archives.

#### 2. Curation

>Curated is subjective and produces project-specific metadata. But this subjective process can be transparent and standardized!
>
> Geocoding plague genomes will pave the way for in-depth geospatial analysis.

#### 3. Dissemination

> Digital exhibits are a fun way to share data, and pair well with scholarly publication.
> 
> The interactive nature is powerful for large sample sizes with a lot of contextual metadata.

## Acknowledgements

<img src="https://raw.githubusercontent.com/ktmeaton/obsidian-public/master/academic/Acknowledgements.png" style="width:100%">



## References