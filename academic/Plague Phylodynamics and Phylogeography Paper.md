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
repo: ktmeaton/obsidian-public
filepath: academic/[[Plague Phylodynamics and Phylogeography Paper]]
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
compile-manubot: "conda activate manubot && pandoc/manubot.sh 'Plague Phylodynamics and Phylogeography Paper.md' pandoc/bib/library.json ../../rootstock"
compile-pandoc: "conda activate pandoc && pandoc/convert_wikilinks.py --input 'Plague Phylodynamics and Phylogeography Paper.md' --output 'Plague Phylodynamics and Phylogeography Paper_convert.md' && ;"
---

## Keywords

- [[Plague]]
- [[Yersinia pestis]]
- [[Phylodynamics]]
- [[Phylogeography]]

## Introduction {.page_break_before}

Plague has an impressively long and expansive history as a human pathogen. The earliest evidence of the plague bacterium [[Yersinia pestis]] comes from [[Ancient DNA\|ancient DNA]] studies dating its emergence to at least the Neolithic [[Andrades Valtuena et al. 2017 Stone Age Plague\|[@andradesvaltuena2017StoneAgePlague; ]] [[Rascovan et al. 2019 Emergence Spread Basal\|@rascovan2019EmergenceSpreadBasal]]]. Since then, [[Yersinia pestis\|Y. pestis]] has traveled extensively due to ever-expanding global trade networks [[Yue 2017 Trade Routes Plague\|[@yue2017TradeRoutesPlague]]] and the ability to infect a diverse array of mammalian hosts [[Perry 1997 Yersinia Pestis Etiologic\|[@perry1997YersiniaPestisEtiologic]]]. Few regions of the ancient and modern world remain untouched by this disease, as plague has an established presence on every continent except Oceania [[WHO 2017 Plague\|[@who2017Plague]]].

Accompanying this prolific global presence is unnervingly high mortality. The infamous medieval Black Death is estimated to have killed more than half of Europe's population [@benedictowBlackDeath2004]. This virulence can still be observed in the post-antibiotic era, where case fatality rates range from 22-71% [@bertheratPlagueWorld2019]. As a result, plague maintains its status as a disease that is of vital importance to current public health initiatives.

The intriguingly high mortality that is repeatedly seen throughout history brings together diverse researchers with interests spanning the modern period, history, and even prehistory. This intersection has brought about novel insight to render what was once invisible, visible. For example, investigating the ecology of ancient rats [@mccormickRatsCommunicationsPlague2003] and reconstructing the genome of Black Death-era Y. pestis [@bosDraftGenomeYersinia2011]. However, this breadth of research also reflects the observation that plague has traveled through immensely diverse populations, cultures, and landscapes. Thus it is unsurprising that any consensus on 'universal' disease dynamics or experiences are rare to uncover. For example, within China alone there are 11 natural plague foci, each characterized by distinct environmental factors, bacteriological properties, and host-vector interactions [@zhouComparativeEvolutionaryGenomics2004]. As a result, significant debate has emerged on topics such as the severity of past pandemics [@mordechaiJustinianicPlagueInconsequential2019], their geographic origins [@schmidClimatedrivenIntroductionBlack2015], and the mechanisms of spread [@deanHumanEctoparasitesSpread2018].

**TO BE DONE**:

- Introduce the genomic composition of [[Y. pestis]] and mechanism of evolution.
- Introduce the topics [[phylodynamics]] and [[phylogeography]] and what is known so far.
- Introduce the problem(s) and our objective(s).

## Materials and Methods {.page_break_before}

### Data Collection

### Data Quality Criteria

### Subsampled Datasets

### Phylogenetic Reconstruction

### Phylodynamics

### Phylogeography

## Results {.page_break_before}

### Composition

### [[Phylogeny]]

Divergence-scaled phylogeny of [[Yersinia pestis\|Y. pestis]] (Figure @fig:fig_divtree_all).

![
*Yersinia pestis* phylogeny. (Significant SVG editing required)|800
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/58183a9490e26d25f7d28ed471c91085b78213b5/main/auspice/all/chromosome/full/filter5/divtree.png){#fig:fig_divtree_all}

### [[Phylodynamics]]  {.page_break_before}

#### [[Molecular Clock]]

- *[[Yersinia pestis|Y. pestis]]* has extreme [[rate variation]]. 
- A [[Root to Tip Regression]] on collection date confirms this, as the [[Coefficient of Determination]] (R<sup>2</sup> ) is 0.09, revealing a poor fit to a [[simple  linear model]] (Table @tbl:table_temporal_signal). 
- To some extent, this variation can be explained by examining the clades in isolation (Figure @fig:fig_rate_boxplot_all).
- Finding an appropriate evolutionary model is key to estimating historic events, like clade emergence (Figure @fig:fig_tmrca_boxplot_all).

| Branch | Clade      | Origin          | R<sup>2</sup> | p-value   |
| ------ | ---------- | --------------- | ------------- | --------- |
| all    | all        | Ancient, Modern | 0.09          | 3.81E-14  |
| 0      | [[0.PRE]]  | Ancient         | 0.91          | 1.53E-04* |
| 0      | [[0.PE]]   | Modern          | 0.01          | 2.25E-01  |
| 0      | [[0.ANT4]] | Ancient         | 0.66          | 7.84E-04* |
| 0      | [[0.ANT]]  | Modern          | -0.01         | 7.35E-01  |
| 1      | [[1.ANT]]  | Modern          | 0.45          | 2.03E-01  |
| 1      | [[1.IN]]   | Modern          | 0.0           | 3.24E-01  |
| 1      | [[1.ORI]]  | Modern          | 0.04          | 1.32E-02* |
| 1      | [[1.PRE]]  | Ancient         | 0.76          | 1.68E-13* |
| 2      | [[2.ANT]]  | Modern          | 0.05          | 5.96E-02  |
| 2      | [[2.MED]]  | Modern          | 0.01          | 1.86E-01  |
| 3      | [[3.ANT]]  | Modern          | -0.04         | 4.39E-01  |
| 4      | [[4.ANT]]  | Modern          | -0.11         | 8.80E-01  |

Table: Temporal signal statistics by clade
{#tbl:table_temporal_signal}

![
Rate variation by clade.
](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/f09d5aa6/main/iqtree/all/chromosome/full/filter5/filter-taxa/rate_boxplot_all.png){#fig:fig_rate_boxplot_all}

![
tMRCA by clade.
](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/f09d5aa6/main/iqtree/all/chromosome/full/filter5/filter-taxa/tmrca_boxplot_all.png){#fig:fig_tmrca_boxplot_all}

#### Relaxing the Clock

- [[Clock Model#Relaxed Clock|Relaxed clock]] [[MCMC]] runs produce a high [[Coefficient of Variation]] indicating a relaxed model is favored over a strict model (Figure @fig:fig_coefficient_variation). However, these runs do not converge, suggesting there is too much [[rate variation]] to confidently estimate key parameters such as the mean [[Substitution Rate]] or [[MRCA|tMRCA]].

![Coefficient of variation.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Coefficient%20of%20Variation.png){#fig:fig_coefficient_variation width="100%"}

- A [[Clock Model#Strict Clock|strict clock]] and [[Clock Model#Relaxed Clock|relaxed clock]] have overlapping distributions with similar peaks for the [[Tree Height]] (blue: strict, green: relaxed) (Figure @fig:fig_tree_height_compare).

![Tree height comparison.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Tree%20Height%20Comparison.png){#fig:fig_tree_height_compare width="100%"}

- When estimating a [[Substitution Rate]] for all of *[[Yersinia pestis|Y. pestis]]*, a [[Clock Model|strict clock]] and [[Clock Model|relaxed clock]] produce different estimates (green: strict, orange: relaxed) (Figure @fig:fig_sub_rate_compare).

![Substitution rate comparison.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Substitution%20Rate%20Comparison.png){#fig:fig_sub_rate_compare width="100%"}
	
- There doesn't appear to be clustering of rates. Branches with high rates are next to those with low rates  (Figure @fig:fig_timetree_color_rate).

![Time tree colored by rate.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Time%20Tree%20Colored%20by%20Rate.png){#fig:fig_timetree_color_rate width="100%"}

## Discussion {.page_break_before}

## Conclusion {.page_break_before}

## References {.page_break_before}