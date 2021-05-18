---
project: [[plague-phylogeography]]
due: May 20 2020
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
compile-pandoc: "conda activate pandoc && pandoc/convert_wikilinks.py --input 'Plague Phylodynamics and Phylogeography Paper.md' --output 'Plague Phylodynamics and Phylogeography Paper_convert.md';"
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

*[[Yersinia pestis|Y. pestis]]* genome sequencing projects were retrieved from the [[National Centre for Biotechnology Information|NCBI]] databases using NCBImeta [[Eaton 2019 NCBImeta\|[@eaton2019NCBImeta]]]. 1657 projects were identified and comprised three genomic types: 586 modern assembled, 184 ancient unassembled, and 887 modern unassembled genomes. The 887 modern unassembled genomes were excluded from this project, as the wide variety of laboratory methods and sequencing strategies precluded a standardized workflow. Future work will investigate computationally efficient methods for integrating this data.

Collection location, collection date, and collection host metadata were curated by cross-referencing the original publications. Collection location was transformed to latitude and longitude coordinates using [[GeoPy]] and the [[Nominatim|Nominatim API]] for [[OpenStreetMap]] [[Esmukov 2020 GeoPy Python Client\|[@esmukov2020GeoPyPythonClient;]] [[Hoffman 2020 Nominatim Tool Search\|@hoffman2020NominatimToolSearch;]] [[openstreetmapcontributors2017PlanetDumpRetrieved\|@openstreetmapcontributors2017PlanetDumpRetrieved]]]. Coordinates were standardized at a sub-country resolution, taking the centroid of the parent province/state. Collection dates were standardized according to their year, and recording uncertainty arising from missing data and radiocarbon estimates. Collection host was the most diverse field with regards to precision, ranging from colloquial nomenclature (*"rat"*) to a genus species taxonomy (*"Meriones libycus"*). For the purposes of this study, collection host was recorded as *Human*, *Non-Human*, or *Not Available*, given the inability to differentiate non-human mammalian hosts.

Genomes were removed if no associated date or location information could be identified in the literature, or if there was documented evidence of laboratory manipulation. After curation, 600 genomes remained, with 539 (90%) being modern in origin and 61 (10%) being ancient.

Two additional datasets were required for downstream analyses. First, *[[Yersinia pestis|Y. pestis]]* strain [[CO92]] (GCA_000009065.1) was used as the reference genome for sequence alignment and variant annotation. Second, *[[Yersinia pseudotuberculosis]]* strains [[NCTC10275]] (GCA_900637475.1) and [[IP32953]] (GCA_000834295.1) served as an outgroup to root the [[Maximum-likelihood\|maximum likelihood]] phylogeny.

### Sequence Quality Criteria

#### Alignment

Ancient unassembled genomes were downloaded from the SRA databases in [[FASTQ]] format using the [[SRA Toolkit]] [[NCBI 2021 SRA Toolkit\|[@NCBI2021SRAToolkit]]]. Pre-processing and alignment to the reference genome was performed using the [[nf-core/eager]] pipeline, a reproducible workflow for ancient genome reconstruction [[Yates 2021 Reproducible Portable Efficient\|[@yates2021ReproduciblePortableEfficient]]]. Ancient genomes were removed if the number of sites covered at a minimum depth of 3X was less than 70% of the reference genome.

Modern assembled genomes were aligned to the reference genome using [[Snippy]], a pipeline for core genome alignments [[Snippy 2020\|[@snippy2020]]]. Modern genomes were removed if the number of sites covered at a minimum depth of 10X was less than 70% of the reference genome.

A multiple sequence alignment was constructed using the [[Snippy\|Snippy Core]] module of the [[Snippy]] pipeline. The output alignment was filtered to only include chromosomal variants and to exclude sites that had more than 5% missing data.

### Phylogenetic Reconstruction

Model selection was performed using [[Modelfinder]] which identified the K3Pu+F+I model as the optimal choice based on the [[Bayesian Information Criterion\|Bayesian Information Criterion (BIC)]] [[Kalyaanamoorthy 2017 ModelFinder Fast Model\|[@kalyaanamoorthy2017ModelFinderFastModel]]]. A [[Maximum-likelihood\|maximum-likelihood]] phylogeny was then estimated across 10 independent runs of [[IQTREE]] [[Minh 2020 IQTREE New Models\|[@minh2020IQTREENewModels]]]. Branch support was evaluated using 1000 iterations of the [[UFboot\|ultrafast bootstrap approximation]], with a threshold of 95% required for strong support [[Hoang 2018 UFBoot2 Improving Ultrafast\|[@Hoang 2018 UFBoot2 Improving Ultrafast]]].

### Modified Datasets

To investigate the influence of between-clade variation in substitution rates, the multiple alignment was separated into the 12 major clades of [[Y. pestis]], which will be referred to as the *Clade* dataset.

To improve the performance and convergence of [[Bayesian]] analysis, a subsampled dataset was constructed.
Clades that contained multiple samples drawn from the same geographic location and the same time period were reduced to one representative sample. The sample with the shortest terminal branch length was prioritized, to diminish the influence of derived mutations on the estimated substitution rate. An interval of 25 years was identified as striking an optimal balance, resulting in 200 representative samples.

### Phylodynamics

To investigate the degree of temporal signal present in the data, two tests were formed . The first is a [[Root to Tip Regression\|root-to-tip (RTT)]] regression on collection date. This linear model is a simple approach to explore whether the data follows a [[Clock Model|strict clock]] model. Uncertainty in the model parameters, namely the [[Substitution Rate\|mean substitution rate]] and [[tMRCA]], was estimated using 1000 iterations of the non-parametric bootstrap on the residuals.

While RTT is a practical approach, it has two main limitations: 1) No rate variation is accounted for, and 2) The data are not independent observations due to the shared internal branch lengths. Therefore to complement this approach, a [[Bayesian Evaluation of Temporal Signal|bayesian evaluation of temporal signal (BETS)]] was performed.

A [[Timetree|timetree\|time-scaled phylogeny]] was estimated using a [[Least Square Dating\|least-squares approach]] as implemented in [[LSD2]] [[To 2016 Fast Dating Using\|[@to2016FastDatingUsing]]]. 

### Phylogeography

Geographic location was modeled as a discrete state with transitions following a [[GTR]] [[Mugration\|mugration]] model as implemented in [[TreeTime]] [[Sagulenko et al. 2018 TreeTime Maximum-Likelihood Phylodynamic\|[@sagulenko2018TreeTimeMaximumlikelihoodPhylodynamic]]].

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