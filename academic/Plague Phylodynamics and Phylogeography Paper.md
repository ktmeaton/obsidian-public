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

Plague has an impressively long and expansive history as a human pathogen. The earliest evidence of the plague bacterium *[[Yersinia pestis]]* comes from [[Ancient DNA\|ancient DNA]] studies, dating its emergence to at least the Neolithic [[Andrades Valtuena et al. 2017 Stone Age Plague\|[@andradesvaltuena2017StoneAgePlague; ]] [[Rascovan et al. 2019 Emergence Spread Basal\|@rascovan2019EmergenceSpreadBasal]]]. Since then, *[[Yersinia pestis\|Y. pestis]]* has traveled extensively due to ever-expanding global trade networks  and the ability to infect a diverse array of mammalian hosts [[Yue 2017 Trade Routes Plague\|[@yue2017TradeRoutesPlague;]] [[Perry 1997 Yersinia Pestis Etiologic\|@perry1997YersiniaPestisEtiologic]]]. Few regions of the ancient and modern world remain untouched by this disease, as plague has an established presence on every continent except Oceania [[WHO 2017 Plague\|[@who2017Plague]]].

Accompanying this prolific global presence is unnervingly high mortality. The infamous medieval Black Death is estimated to have killed more than half of Europe's population [[Benedictow 2004 Black Death 1346-1353\|[@benedictow2004BlackDeath13461353]]]. This virulence can still be observed in the post-antibiotic era, where case fatality rates range from 22-71% [@bertheratPlagueWorld2019]. As a result, plague maintains its status as a disease that is of vital importance to current public health initiatives.

This high priority disease status is unsurprising given that *[[Yersinia pestis\|Y. pestis]]* is a member of the [[Enterobacteriaceae]]  family. This family includes [[Enteric\|enteric]] [[Pathogen\|pathogens]] such as *[[Escherichia coli]]* and *[[Salmonella typhi]]* that are commonly transmitted by contaminated food and water. In comparison, the [[Plague\|plague]] bacterium is unique among this family due to a striking difference in [[Host\|host]] habitat and [[Transmission\|transmission]]. *[[Yersinia pestis\|Y. pestis]]* commonly resides in the blood of its mammalian hosts and can be transmitted to new hosts through an infectious [[Flea\|fleabite]] [[Gage 2006 Recent Trends Plague\|[@gage2006RecentTrendsPlague]]]. In addition to these tissues, the plague bacterium is also capable of colonizing parts of the mammalian immune system including the lymphatic and reticuloendothelial systems. The large diversity of media in which *[[Yersinia pestis\|Y. pestis]]* has adapted to colonize is particularly surprising given that it only recently (within the last 20,000 years) diverged as a clone of its parent species [[Yersinia pseudotuberculosis]] [[Achtman 1999 Yersinia Pestis Cause\|[@achtman1999YersiniaPestisCause]]]. 

Despite a close genetic similarity between *[[Yersinia pestis|Y. pestis]]* and *[[Yersinia pseudotuberculosis\|Y. pseudotuberculosis]]*, in which they share 97% gene identity, they differ widely in their [[Transmission\|transmission]] and [[Pathogenicity\|pathogenecity]] [[Chain 2004 Insights Evolution Yersinia\|[@chain2004InsightsEvolutionYersinia]]]. Whereas *[[Yersinia pseudotuberculosis\|Y. pseudotuberculosis]]* causes [[Gastrointestinal\|gastrointestinal]] disease and is transmitted by the food-borne route, *[[Yersinia pestis|Y. pestis]]* is primarily transmitted between mammalian hosts by fleas and causes septicemia, pneumonia, and lymphadenitis. Because of this apparent contradiction of genetic homogeneity and diverse phenotypes, an extensive body of research has formed to address how, when, and where, these epidemiological shifts occurred.

---

**TO BE DONE**:

- Introduce the topics [[phylodynamics]] and [[phylogeography]] and what is known so far.
- Introduce the major problem(s) and our objective(s).


### Objectives

1. Curate and critique publicly available [[Yersinia pestis|Y. pestis]] genomes. Discuss how sampling bias drives our current understanding of [[Plague\|plague]].
2. To propose a nuanced phylodynamics model.
3. To critique interpretations drawn from phylogeographic approaches?

## Materials and Methods {.page_break_before}

### Data Collection

*[[Yersinia pestis|Y. pestis]]* genome sequencing projects were retrieved from the [[National Centre for Biotechnology Information|NCBI]] databases using NCBImeta [[Eaton 2019 NCBImeta\|[@eaton2019NCBImeta]]]. 1657 projects were identified and comprised three genomic types: 

- 586 modern assembled
- 184 ancient unassembled
- 887 modern unassembled

The 887 modern unassembled genomes were excluded from this project, as the wide variety of laboratory methods and sequencing strategies precluded a standardized workflow. In contrast, the 184 ancient unassembled genomes were retained given the relatively standardized, albeit specialized, laboratory procedures required to process ancient tissues. Future work will investigate computationally efficient methods for integrating more diverse datasets.

Collection location, collection date, and collection host metadata were curated by cross-referencing the original publications. Collection location was transformed to latitude and longitude coordinates using [[GeoPy]] and the [[Nominatim|Nominatim API]] for [[OpenStreetMap]] [[Esmukov 2020 GeoPy Python Client\|[@esmukov2020GeoPyPythonClient;]] [[Hoffman 2020 Nominatim Tool Search\|@hoffman2020NominatimToolSearch;]] [[openstreetmapcontributors2017PlanetDumpRetrieved\|@openstreetmapcontributors2017PlanetDumpRetrieved]]]. Coordinates were standardized at a sub-country resolution, taking the centroid of the parent province/state. Collection dates were standardized according to their year, and recording uncertainty arising from missing data and radiocarbon estimates. Collection host was the most diverse field with regards to precision, ranging from colloquial nomenclature (*"rat"*) to a genus species taxonomy (*"Meriones libycus"*). For the purposes of this study, collection host was recorded as *Human*, *Non-Human*, or *Not Available*, given the inability to differentiate non-human mammalian hosts.

Genomes were removed if no associated date or location information could be identified in the literature, or if there was documented evidence of laboratory manipulation.

Two additional datasets were required for downstream analyses. First, *[[Yersinia pestis|Y. pestis]]* strain [[CO92]] (GCA_000009065.1) was used as the reference genome for sequence alignment and annotation. Second, *[[Yersinia pseudotuberculosis]]* strains [[NCTC10275]] (GCA_900637475.1) and [[IP32953]] (GCA_000834295.1) served as an outgroup to root the [[Maximum-likelihood\|maximum likelihood]] phylogeny.

### Sequence Quality Criteria

#### Alignment

Modern assembled genomes were aligned to the reference genome using [[Snippy]], a pipeline for core genome alignments [[Snippy 2020\|[@snippy2020]]]. Modern genomes were removed if the number of sites covered at a minimum depth of 10X was less than 70% of the reference genome.

Ancient unassembled genomes were downloaded from the SRA database in [[FASTQ]] format using the [[SRA Toolkit]] [[NCBI 2021 SRA Toolkit\|[@NCBI2021SRAToolkit]]]. Pre-processing and alignment to the reference genome was performed using the [[nf-core/eager]] pipeline, a reproducible workflow for ancient genome reconstruction [[Yates 2021 Reproducible Portable Efficient\|[@yates2021ReproduciblePortableEfficient]]]. Ancient genomes were removed if the number of sites covered at a minimum depth of 3X was less than 70% of the reference genome. It is a typical approach to relaxed coverage thresholds for ancient genomes relative to modern genomes ([[CITE]]). This threshold is commonly used, and aims to strike a balance between variant confidence and sample representation ([[CITE]]).

A multiple sequence alignment was constructed using the [[Snippy\|Snippy Core]] module of the [[Snippy]] pipeline. The output alignment was filtered to only include chromosomal variants and to exclude sites that had more than 5% missing data.

### Phylogenetic Reconstruction

Model selection was performed using [[Modelfinder]] which identified the K3Pu+F+I model as the optimal choice based on the [[Bayesian Information Criterion\|Bayesian Information Criterion (BIC)]] [[Kalyaanamoorthy 2017 ModelFinder Fast Model\|[@kalyaanamoorthy2017ModelFinderFastModel]]]. A [[Maximum-likelihood\|maximum-likelihood]] phylogeny was then estimated across 10 independent runs of [[IQTREE]] [[Minh 2020 IQTREE New Models\|[@minh2020IQTREENewModels]]]. Branch support was evaluated using 1000 iterations of the [[UFboot\|ultrafast bootstrap approximation]], with a threshold of 95% required for strong support [[Hoang 2018 UFBoot2 Improving Ultrafast\|[@hoang2018UFBoot2ImprovingUltrafast]]].

### Modified Datasets

To investigate the influence of between-clade variation in substitution rates, the multiple alignment was separated into the major clades of *[[Yersinia pestis\|Y. pestis]]*, which will be referred to as the *Clade* dataset. Clade and subclade labeling was derived from the five-branch population structure accompanied by a biovar abbreviation ([[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation]]]. Only one modification was made, in that the subclade associated with the [[Plague of Justinian]] ([[0.ANT4]]) was considered to be a distinct clade from its parent ([[0.ANT]]) due to its geographic, temporal, and ecological uniqueness. In total, 12 clades were considered and are described in Table @tbl:table_temporal_signal.

To improve the performance and convergence of [[Bayesian]] analysis, a subsampled dataset was constructed and will be referred to as the *Reduced* dataset. Clades that contained multiple samples drawn from the same geographic location and the same time period were reduced to one representative sample. The sample with the shortest terminal branch length was prioritized, to diminish the influence of uniquely derived mutations on the estimated substitution rate. An interval of 25 years was identified as striking an optimal balance, resulting in 200 representative samples.

### Phylodynamics

#### Temporal Signal

To explore the degree of temporal signal present in the data, two categories of tests were performed . The first was a [[Root to Tip Regression\|root-to-tip (RTT)]] regression on collection date. This linear model is a simple approach to explore whether the data follows a [[Clock Model|strict clock]] model. Uncertainty in the model parameters, namely the [[Substitution Rate\|mean substitution rate]] and [[tMRCA]], were estimated using 1000 iterations of the non-parametric bootstrap on the residuals.

While RTT is a practical approach, it has two main limitations: 1) No rate variation is accounted for, and 2) The data are not independent observations due to shared internal branch lengths. Therefore to complement this approach, a [[Bayesian Evaluation of Temporal Signal|bayesian evaluation of temporal signal (BETS)]] was performed.

#### Rate Variation

A [[Bayesian\|bayesian]] [[Timetree|timetree]] was estimated using ... as implemented in [[BEAST]].

#### Time Tree

A  [[Maximum-likelihood|maximum-likelihood]] [[Timetree|timetree]] was estimated using a [[Least Square Dating\|least-squares approach]] as implemented in [[LSD2]] [[To 2016 Fast Dating Using\|[@to2016FastDatingUsing]]]. Rate variation was modeled using a [[Lognormal\|lognormal]] [[Clock Model|relaxed clock]] with default parameters for the mean (1.0) and the standard deviation (0.2). The outgroup *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]* was used to root the tree and then subsequently removed.

> Note: I'm still pondering the best choice of parameters for the LSD2 relaxed clock.

### Phylogeography

Geographic location was modeled as a discrete state with transitions following a [[GTR]] [[Mugration\|mugration]] model as implemented in [[TreeTime]] [[Sagulenko et al. 2018 TreeTime Maximum-Likelihood Phylodynamic\|[@sagulenko2018TreeTimeMaximumlikelihoodPhylodynamic]]].

## Results {.page_break_before}

### Descriptive Summary

After curation, 600 genomes remained, with 539 (90%) being modern in origin and 61 (10%) being ancient. The geographic distribution of samples is shown in Figure @fig:fig_map_all. Three important findings can be drawn from a descriptive summary of the data.

>Note: I want to have a timeline histogram to show the date variation.

The first finding is that the geographic sampling strategy of *[[Yersinia pestis|Y. pestis]]* genomes does not reflect the known distribution of modern plague [[Xu 2019 Historical Genomic Data\|[@xu2019HistoricalGenomicData]]]. Nor does it adequately characterize the most heavily affected regions of the world, namely [[Madagascar]] and the [[Democratic Republic of the Congo]] [[WHO 2017 Plague\|[@who2017Plague]]]. The [[Over-Represented|over-sampling]] of [[East Asia]] has been previously described by [[Spyrou 2016 Historical Pestis Genomes|@spyrou2016HistoricalPestisGenomes]] and considerably drives the hypothesis that *[[Yersinia pestis\|Y. pestis]]* originated in [[China]] [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]]. This once established hypothesis is now in contention, as the most basal strains of *[[Yersinia pestis|Y. pestis]]* (0.PRE and 0.PE) have been isolated from all across [[Eurasia]] (Figure @fig:fig_map_all).

The second observation is that the temporal structure of genomic data reflects greater interest in *[[Yersinia pestis|Y. pestis]]* as a historical pathogen, rather than a public health threat to modern humans. One example of this is that the [[Medieval Plague]] in [[Western Europe]] has more representative samples than all of the African continent. Sequencing initiatives are greatly needed that shift the balance away from Eurocentrism and encompass a greater diversity of affected populations.

The final takeaway is a highly complex pattern of geographic clustering or lack-thereof. Many regions have been colonized by diverse strains of *[[Yersinia pestis|Y. pestis]]*. This diversity can be contemporaneous, such as endemic foci in the [[Caucausus]] and [[Western China]], that are routinely under biosurveillance. Alternatively, this diversity may occur over multiple centuries through distinct re-introductions and extinctions, as seen in the historical epidemics of Europe. In these examples, a relatively large amount of genetic diversity appears in a small geographic range (Figure @fig:fig_ibd_all : blue). In contrast, regions such as the Americas have been colonized by a single strain of *[[Yersinia pestis|Y. pestis]]*, which shows a relatively small amount of genetic diversity over a tremendously large geographic range (Figure @fig:fig_ibd_all : orange). 

Taken together, these findings should be taken as a cautionary warning. Given the biases documented here, extrapolating the data runs the risk of reconstructing the *sampling history* of plague researchers, rather than the *natural history* of the disease. This is particularly relevant for analyses that assume an absence of evidence is evidence of absence, such as in phylogeographic reconstruction.

![Geographic distribution of *[[Yersinia pestis|Y. pestis]]* genomes](https://rawcdn.githack.com/ktmeaton/obsidian-public/b68709889cd450acb654666f0362d664d4733cd2/academic/Auspice%20Map%20Draft.png){#fig:fig_map_all}

> Note: I feel a little suspicious of this figure having such a high R2 value...

![Isolation by Distance (IBD) of *[[Yersinia pestis|Y. pestis]]* genomes.](https://rawcdn.githack.com/ktmeaton/obsidian-public/49fe1338ac25adafb07669075474bc0a35277790/academic/Isolation%20By%20Distance%20All%20Annotate.png){#fig:fig_ibd_all}

<!--
<iframe id="igraph" scrolling="no" seamless="seamless" src="https://nextstrain.org/community/ktmeaton/plague-phylogeography-projects@v0.2.7/main/full/all?d=map&onlyPanels&p=full&sidebar=closed&transmissions=hide" width=800px height=400px ></iframe>
-->

### [[Phylogeny]]

What can we learn from the maximum-likelihood phylogeny (Figure @fig:fig_divtree_all)?

- **Problems of the Three Pandemic Structure**: There are three historically documented pandemics of plague but...
- **Rate Variation**: *[[Yersinia pestis|Y. pestis]]* shows extraordinary rate variation. This can most clearly be seen in samples from the Bronze Age accumulating more substitutions than several modern clades.
- **Ecological Structure**: There is no obvious clustering by host. If there is, its reflects the sampling strategy (ex. Ancient DNA from skeletal remains) rather than the natural history.

![
*[[Yersinia pestis\|Y. pestis]]* maximum-likelihood phylogeny. |800
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/960159274f4adbb4f78d170d8526499bf8916c36/main/auspice/all/chromosome/full/filter5/divtree.png){#fig:fig_divtree_all}

### [[Phylodynamics]]  {.page_break_before}

#### [[Clock Model\|Temporal Signal]]

- *[[Yersinia pestis|Y. pestis]]* has extreme [[rate variation]]. 
- A [[Root to Tip Regression]] on collection date confirms this, as the [[Coefficient of Determination]] (R<sup>2</sup> ) is 0.09, revealing a poor fit to a [[simple  linear model]] (Table @tbl:table_temporal_signal). 
- To some extent, this variation can be explained by examining the clades in isolation (Figure @fig:fig_rate_boxplot_all).
- Finding an appropriate evolutionary model is key to estimating historic events, like clade emergence (Figure @fig:fig_tmrca_boxplot_all).

| Branch | Clade      | Origin          | RTT R<sup>2</sup> | RTT p-value | BETS Bayes Factor |
| ------ | ---------- | --------------- | ----------------- | ----------- | ----------------- |
| all    | all        | Ancient, Modern | 0.09              | 3.81E-14*   |                   |
| 0      | [[0.PRE]]  | Ancient         | 0.91              | 1.53E-04*   |                   |
| 0      | [[0.PE]]   | Modern          | 0.01              | 2.25E-01    |                   |
| 0      | [[0.ANT4]] | Ancient         | 0.66              | 7.84E-04*   |                   |
| 0      | [[0.ANT]]  | Modern          | -0.01             | 7.35E-01    |                   |
| 1      | [[1.ANT]]  | Modern          | 0.45              | 2.03E-01    |                   |
| 1      | [[1.IN]]   | Modern          | 0.0               | 3.24E-01    |                   |
| 1      | [[1.ORI]]  | Modern          | 0.04              | 1.32E-02*   |                   |
| 1      | [[1.PRE]]  | Ancient         | 0.76              | 1.68E-13*   |                   |
| 2      | [[2.ANT]]  | Modern          | 0.05              | 5.96E-02    |                   |
| 2      | [[2.MED]]  | Modern          | 0.01              | 1.86E-01    |                   |
| 3      | [[3.ANT]]  | Modern          | -0.04             | 4.39E-01    |                   |
| 4      | [[4.ANT]]  | Modern          | -0.11             | 8.80E-01    |                   |

Table: Temporal signal statistics by clade based on a [[Root to Tip Regression\|root-to-tip linear regression]].
{#tbl:table_temporal_signal}

![
Substitition rate uncertainty by clade based on a [[Root to Tip Regression\|root-to-tip linear regression]]. Highlighted clades are known to be associated with human pandemics.
](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/09171cdb19/main/iqtree/all/chromosome/full/filter5/filter-taxa/rate_boxplot_all.png){#fig:fig_rate_boxplot_all}

#### Relaxing the Clock

- [[Clock Model#Relaxed Clock|Relaxed clock]] [[MCMC]] runs produce a high [[Coefficient of Variation]] indicating a relaxed model is favored over a strict model (Figure @fig:fig_coefficient_variation). However, these runs do not converge, suggesting there is too much [[rate variation]] to confidently estimate key parameters such as the mean [[Substitution Rate]] or [[MRCA|tMRCA]].

![Coefficient of variation.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Coefficient%20of%20Variation.png){#fig:fig_coefficient_variation width="100%"}

- A [[Clock Model#Strict Clock|strict clock]] and [[Clock Model#Relaxed Clock|relaxed clock]] have overlapping distributions with similar peaks for the [[Tree Height]] (blue: strict, green: relaxed) (Figure @fig:fig_tree_height_compare).

![Tree height comparison.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Tree%20Height%20Comparison.png){#fig:fig_tree_height_compare width="100%"}

- When estimating a [[Substitution Rate]] for all of *[[Yersinia pestis|Y. pestis]]*, a [[Clock Model|strict clock]] and [[Clock Model|relaxed clock]] produce different estimates (green: strict, orange: relaxed) (Figure @fig:fig_sub_rate_compare).

![Substitution rate comparison.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Substitution%20Rate%20Comparison.png){#fig:fig_sub_rate_compare width="100%"}
	
- There doesn't appear to be clustering of rates. Branches with high rates are next to those with low rates  (Figure @fig:fig_timetree_color_rate).

![Time tree colored by rate.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Time%20Tree%20Colored%20by%20Rate.png){#fig:fig_timetree_color_rate width="100%"}

## Conclusion {.page_break_before}

## Appendix

## References {.page_break_before}