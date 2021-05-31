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
  - [[Paper]]
numberSections: False
autoSectionLabels: True
sectionsDepth: 3
tblPrefix: Table
figPrefix: Figure
secPrefix: Section
compile-manubot: "conda activate manubot && pandoc/manubot.sh 'Plague Phylodynamics and Phylogeography Paper.md' pandoc/bib/library.json ../../rootstock"
compile-pandoc: "conda activate pandoc && pandoc/convert_wikilinks.py --input 'Plague Phylodynamics and Phylogeography Paper.md' --output 'Plague Phylodynamics and Phylogeography Paper_convert.md';"
url: https://ktmeaton.github.io/obsidian-public/academic/Plague%20Phylodynamics%20and%20Phylogeography%20Paper.html
---

## Keywords

- [[Plague]]
- [[Yersinia pestis]]
- [[Phylodynamics]]
- [[Phylogeography]]

## Abstract  {.page_break_before}

> - *[[Yersinia pestis|Y. pestis]]* exhibits greater temporal signal than previously thought.
> - Clades associated with pandemics exhibit strict clock-like behavior.
> - Sampling bias significantly impacts phylogeography reconstructions.

## Introduction {.page_break_before}

Plague has an impressively long and expansive history as a human disease. The earliest evidence of the plague bacterium, *[[Yersinia pestis]]*, comes from [[Ancient DNA\|ancient DNA]] studies, dating its emergence to at least the Neolithic [[Andrades Valtuena et al. 2017 Stone Age Plague\|[@andradesvaltuena2017StoneAgePlague; ]] [[Rascovan et al. 2019 Emergence Spread Basal\|@rascovan2019EmergenceSpreadBasal]]]. Since then, *[[Yersinia pestis\|Y. pestis]]* has traveled extensively due to ever-expanding global trade networks  and the ability to infect a wide variety of mammalian hosts [[Yue 2017 Trade Routes Plague\|[@yue2017TradeRoutesPlague;]] [[Perry 1997 Yersinia Pestis Etiologic\|@perry1997YersiniaPestisEtiologic]]]. Few regions of the ancient and modern world remain untouched by this disease, as plague has an established presence on every continent except Oceania [[WHO 2017 Plague\|[@who2017Plague]]].

Accompanying this prolific global presence is unnervingly high mortality. The infamous medieval Black Death is estimated to have killed more than half of Europe's population [[Benedictow 2004 Black Death 1346-1353\|[@benedictow2004BlackDeath13461353]]]. This virulence can still be observed in the post-antibiotic era, where case fatality rates range from 22-71% [@bertheratPlagueWorld2019]. As a result, plague maintains its status as a disease that is of vital importance to current public health initiatives.

This high priority disease status is unsurprising given that *[[Yersinia pestis\|Y. pestis]]* is a member of the [[Enterobacteriaceae]]  family. This family includes other notable [[Pathogen\|pathogens]] such as *[[Escherichia coli]]* and *[[Salmonella typhi]]* that are commonly transmitted by contaminated food and water. In comparison, the [[Plague\|plague]] bacterium is unique among this family due to a striking difference in [[Host\|host]] habitat and [[Transmission\|transmission]]. *[[Yersinia pestis\|Y. pestis]]* commonly resides in the blood of its mammalian hosts and can be transmitted to new hosts through an infectious [[Flea\|fleabite]] [[Gage 2006 Recent Trends Plague\|[@gage2006RecentTrendsPlague]]]. In addition to these tissues, the plague bacterium is also capable of colonizing parts of the mammalian immune system including the lymphatic and reticuloendothelial systems. The large diversity of media in which *[[Yersinia pestis\|Y. pestis]]* has adapted to colonize is particularly surprising given that it only recently (within the last 20,000 years) diverged as a monomorphic clone of its parent species *[[Yersinia pseudotuberculosis]]* [[Achtman 1999 Yersinia Pestis Cause\|[@achtman1999YersiniaPestisCause]]]. 

Despite a close genetic similarity between *[[Yersinia pestis|Y. pestis]]* and *[[Yersinia pseudotuberculosis\|Y. pseudotuberculosis]]*, in which they share 97% gene identity, they differ widely in their [[Transmission\|transmission]] and [[Pathogenicity\|pathogenecity]] [[Chain 2004 Insights Evolution Yersinia\|[@chain2004InsightsEvolutionYersinia]]]. Whereas *[[Yersinia pseudotuberculosis\|Y. pseudotuberculosis]]* causes [[Gastrointestinal\|gastrointestinal]] disease and is transmitted by the food-borne route, *[[Yersinia pestis|Y. pestis]]* is primarily transmitted between mammalian hosts by fleas and causes septicemia, pneumonia, and lymphadenitis. Because of this apparent contradiction of genetic homogeneity and diverse phenotypes, an extensive body of research has formed to address how, when, and where, these epidemiological shifts occurred.

Two epidemiological transitions that have been extensively researched are the time to Most Recent Common Ancestor (tMRCA) and the advent of historically documented plague pandemics. Substantial progress on these topics has been made as *[[Yersinia pestis|Y. pestis]]* is the most intensively sequenced ancient pathogen, and over 100 ancient genomes are available to serve as fossil calibrations. Furthermore, there are now over 1000 publicly-available modern *[[Yersinia pestis|Y. pestis]]* genomes [[Zhou 2020 EnteroBase User Guide|[@zhou2020EnteroBaseUserGuide]]], offering the potential to  model rate variations and dating uncertainty with greater nuance. However, it is unclear whether this additional data will prove useful as it is contentious whether *[[Yersinia pestis|Y. pestis]]* demonstrates sufficient temporal signal to robustly estimate a clock model [[Wagner et al. 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]]. Different *[[Yersinia pestis|Y. pestis]]* datasets have been shown to produce dramatically different patterns of temporal signal from weak support to a complete absence of temporal structure [[Duchene 2016 Genome-scale Rates Evolutionary|@duchene2016GenomescaleRatesEvolutionary]]. It was thus posited that variations in temporal signal "*may be a property of  individual data sets rather than a true species effect*.

While powerful in potential, this recent avalanche of data comes with new challenges inherent to Big Data, with curation of the geospatial metadata proving to be a substantial obstacle.


---

**TO BE DONE**:

- Introduce the debate on whether *[[Yersinia pestis|Y. pestis]]* has temporal signal and why incongruent findings have emerged.
- Introduce the issue of sampling bias in [[Phylogeography|phylogeography]].


### Objectives

1. Curate and critique publicly available [[Yersinia pestis|Y. pestis]] genomes. Discuss how sampling bias drives our current understanding of [[Plague\|plague]].
2. To propose a nuanced phylodynamics model.
3. To critique interpretations drawn from phylogeographic approaches?

## Materials and Methods {.page_break_before}

### Workflow Overview

![Computational methods workflow.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/6d9ab2e/main/report/workflow.png){#fig:fig_workflow}

### Data Collection {.page_break_before}

*[[Yersinia pestis|Y. pestis]]* genome sequencing projects were retrieved from the [[National Centre for Biotechnology Information|NCBI]] databases using NCBImeta [[Eaton 2019 NCBImeta\|[@eaton2019NCBImeta]]]. 1657 projects were identified and comprised three genomic types: 

- 586 modern assembled
- 184 ancient unassembled
- 887 modern unassembled

The 887 modern unassembled genomes were excluded from this project, as the wide variety of laboratory methods and sequencing strategies precluded a standardized workflow. In contrast, the 184 ancient unassembled genomes were retained given the relatively standardized, albeit specialized, laboratory procedures required to process ancient tissues. Future work will investigate computationally efficient methods for integrating more diverse datasets.

Collection location, collection date, and collection host metadata were curated by cross-referencing the original publications. Collection location was transformed to latitude and longitude coordinates using [[GeoPy]] and the [[Nominatim|Nominatim API]] for [[OpenStreetMap]] [[Esmukov 2020 GeoPy Python Client\|[@esmukov2020GeoPyPythonClient;]] [[Hoffman 2020 Nominatim Tool Search\|@hoffman2020NominatimToolSearch;]] [[openstreetmapcontributors2017PlanetDumpRetrieved\|@openstreetmapcontributors2017PlanetDumpRetrieved]]]. Coordinates were standardized at a sub-country resolution, taking the centroid of the parent province/state. Collection dates were standardized according to their year, and recording uncertainty arising from missing data and radiocarbon estimates. Collection host was the most diverse field with regards to precision, ranging from colloquial nomenclature (*"rat"*) to a genus species taxonomy (*"Meriones libycus"*). For the purposes of this study, collection host was recorded as *Human*, *Non-Human*, or *Not Available*, given the inability to differentiate non-human mammalian hosts.

Genomes were removed if no associated date or location information could be identified in the literature, or if there was documented evidence of laboratory manipulation.

Two additional datasets were required for downstream analyses. First, *[[Yersinia pestis|Y. pestis]]* strain [[CO92]] (GCA_000009065.1) was used as the reference genome for sequence alignment and annotation. Second, *[[Yersinia pseudotuberculosis]]* strains [[NCTC10275]] (GCA_900637475.1) and [[IP32953]] (GCA_000834295.1) served as an outgroup to root the [[Maximum-likelihood\|maximum likelihood]] phylogeny.

### Alignment

Modern assembled genomes were aligned to the reference genome using [[Snippy]], a pipeline for core genome alignments [[Snippy 2020\|[@snippy2020]]]. Modern genomes were removed if the number of sites covered at a minimum depth of 10X was less than 70% of the reference genome.

Ancient unassembled genomes were downloaded from the SRA database in [[FASTQ]] format using the [[SRA Toolkit]] [[NCBI 2021 SRA Toolkit\|[@NCBI2021SRAToolkit]]]. Pre-processing and alignment to the reference genome was performed using the [[nf-core/eager]] pipeline, a reproducible workflow for ancient genome reconstruction [[Yates 2021 Reproducible Portable Efficient\|[@yates2021ReproduciblePortableEfficient]]]. Ancient genomes were removed if the number of sites covered at a minimum depth of 3X was less than 70% of the reference genome. It is a typical approach to relax coverage thresholds for ancient genomes relative to their modern counterparts ([[CITE]]). The threshold chosen here is commonly used, and aims to strike a balance between variant confidence and sample representation ([[CITE]]).

A multiple sequence alignment was constructed using the [[Snippy\|Snippy Core]] module of the [[Snippy]] pipeline [[Snippy 2020\|[@snippy2020]]]. The output alignment was filtered to only include chromosomal variants and to exclude sites that had more than 5% missing data.

### Modified Datasets

To investigate the influence of between-clade variation in substitution rates, the multiple alignment was separated into the major clades of *[[Yersinia pestis\|Y. pestis]]*, which will be referred to as the *Clade* dataset. The partitioning of data by clade is a relatively new approach in [[Yersinia]] research and has been implemented used to... study epidemics of interest [[Williamson2016GenomicInsightsSustained\|[@williamson2016GenomicInsightsSustained;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]].

Clade and subclade labeling was derived from the five-branch population structure accompanied by a biovar abbreviation ([[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation]]]. Only one modification was made, in that the subclade associated with the [[Plague of Justinian]] ([[0.ANT4]]) was considered to be a distinct clade from its parent ([[0.ANT]]) due to its geographic, temporal, and ecological uniqueness. In total, 12 clades were considered and are described in Table @tbl:table_temporal_signal.

To improve the performance and convergence of [[Bayesian]] analysis, a subsampled dataset was constructed and will be referred to as the *Reduced* dataset. Clades that contained multiple samples drawn from the same geographic location and the same time period were reduced to one representative sample. The sample with the shortest terminal branch length was prioritized, to diminish the influence of uniquely derived mutations on the estimated substitution rate. An interval of 25 years was identified as striking an optimal balance, resulting in 200 representative samples.

### Phylogenetics

Model selection was performed using [[Modelfinder]] which identified the K3Pu+F+I model as the optimal choice based on the [[Bayesian Information Criterion\|Bayesian Information Criterion (BIC)]] [[Kalyaanamoorthy 2017 ModelFinder Fast Model\|[@kalyaanamoorthy2017ModelFinderFastModel]]]. A [[Maximum-likelihood\|maximum-likelihood]] phylogeny was then estimated across 10 independent runs of [[IQTREE]] [[Minh 2020 IQTREE New Models\|[@minh2020IQTREENewModels]]]. Branch support was evaluated using 1000 iterations of the [[UFboot\|ultrafast bootstrap approximation]], with a threshold of 95% required for strong support [[Hoang 2018 UFBoot2 Improving Ultrafast\|[@hoang2018UFBoot2ImprovingUltrafast]]].

### Phylodynamics

To explore the degree of temporal signal present in the data, two categories of tests were performed . The first was a [[Root to Tip Regression\|root-to-tip (RTT)]] regression on collection date. This linear model is a simple approach to explore whether the data follows a [[Clock Model|strict clock]] model. Uncertainty in the model parameters, namely the [[Substitution Rate\|mean substitution rate]] and [[tMRCA]], were estimated using 1000 iterations of the non-parametric bootstrap on the residuals.

While RTT is a practical approach, it has two main limitations: 1) No rate variation is accounted for, and 2) The data are not independent observations due to shared internal branch lengths. Therefore to complement this approach, a [[Bayesian Evaluation of Temporal Signal|bayesian evaluation of temporal signal (BETS)]] was performed.

A [[Bayesian\|bayesian]] [[Timetree|timetree]] was estimated using ... as implemented in [[BEAST]].

A  [[Maximum-likelihood|maximum-likelihood]] [[Timetree|timetree]] was estimated using a [[Least Square Dating\|least-squares approach]] as implemented in [[LSD2]] [[To 2016 Fast Dating Using\|[@to2016FastDatingUsing]]]. Rate variation was modeled using a [[Lognormal\|lognormal]] [[Clock Model|relaxed clock]] with default parameters for the mean (1.0) and the standard deviation (0.2). The outgroup *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]* was used to root the tree and then subsequently removed.

> Note: I'm still pondering the best choice of parameters for the LSD2 relaxed clock.

### Phylogeography

Geographic location was modeled as a discrete state with transitions following a [[GTR]] [[Mugration\|mugration]] model as implemented in [[TreeTime]] [[Sagulenko et al. 2018 TreeTime Maximum-Likelihood Phylodynamic\|[@sagulenko2018TreeTimeMaximumlikelihoodPhylodynamic]]].  A node was considered to have strong support if the inferred probability of the mugration state was >= 95% and the topological branch support (UFboot) was >= 95%.

## Results {.page_break_before}

### [[Population Structure]]

A maximum-likelihood phylogeny was estimated from 603 genomes (600 *[[Yersinia pestis|Y. pestis]]* isolates,  1 *[[Yersinia pestis|Y. pestis]]* reference, and 2 *[[Y. pseudotuberculosis]]* outgroup taxa). A total of 26,282 [[Single Nucleotide Polymorphism\| Single Nucleotide Polymorphisms (SNPs) ]] were identified with  17,333 sites present in at least two genomes and 16,370 sites present in only one. Following removal of the outgroup taxa, 10,249 sites remained with 3,844 sites shared by at least two genomes and 6,405 sites in only one.

The global population structure of *[[Yersinia pestis|Y. pestis]]*  is organized according to a vast array of historical, ecological, biochemical, and molecular characteristics (Figure @fig:fig_divtree_all). Arguably the most important event, in terms of phylogenetic structure, is the [[Big Bang Polytomy]] from which arose four monophyletic clades: ```Branches 1-4```. All lineages that diverged prior to this multifurcation are grouped into ```[[Branch 0]]```. 

![
The maximum-likeilhood tree, constructed from 10,249 SNPs, depicts the global population structure of *[[Yersinia pestis\|Y. pestis]]*.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/67dd984/main/auspice/all/chromosome/full/filter5/divtree.png){#fig:fig_divtree_all}

Each major branch is further subdivided into biovars according to metabolic properties [[Zhou 2004 Comparative Evolutionary Genomics\|[@zhou2004ComparativeEvolutionaryGenomics;]] [[Li 2009 Genotyping Phylogenetic Analysis\|@li2009GenotypingPhylogeneticAnalysis]]]. The oldest isolates of plague date to the [[LNBA|Late Neolithic Bronze Age]] following a divergence that pre-dates all known modern lineages [[Rasmussen 2015 Early Divergent Strains\|[@rasmussen2015EarlyDivergentStrains]]]. In the absence of metabolic evidence, this clade is designated ```[[0.PRE]]```.  The *microtus* biovar, alias *pestoides* (```PE```), is also a basal clade found in ```[[Branch 0]]``` and while it is typically avirulent in humans, sporadic cases can occur ([[CITE]]). 

The other inhabitant of ```[[Branch 0]]``` is biovar *antiqua* (```[[Antiqua\|ANT]]```) which is the ancestral state prior to the [[Big Bang Polytomy]] and continues to be isolated from all major branches. ```[[Branch 1 ]]``` encapsulates a transition from *antiqua* (```[[Antiqua\|ANT]]```) through the *intermedium* biovar (```[[Intermedium\|IN]]```) and into *orientalis* (```[[Orientalis\|ORI]]```). ```[[Branch 2]]``` includes the transition from *antiqua* (```[[Antiqua\|ANT]]```) to *medievalis* (```[[Medievalis\|MED]]```), which was once hypothesized to be associated with the [[Medieval]] [[Black Death]], but is now known to be a distinct emergence. ```[[Branch 3]]``` and  ```[[Branch 4]]``` are exclusively composed of *antiqua* (```[[Antiqua\|ANT]]```) strains.

#### Pandemics of Plague

Additionally, several lineages of plague have been associated with historically documented plague pandemics. The [[First Pandemic]] (6th - 8th century CE) began with the [[Plague of Justinian]] and proceeded to devastate the Byzantine Empire of the Mediterranean world ([[CITE]]). A unique emergence of *[[Yersinia pestis|Y. pestis]]* within the *antiqua* biovar of [[Branch 0]] (```[[0.ANT4]]```) is thought to derive from this pandemic given spatiotemporal overlap of the skeletal remains from which this lineage was retrieved [[Wagner et al. 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague;]] [[Keller 2019 Ancient Yersinia Pestis\|@keller2019AncientYersiniaPestis]]]. 

Similarly, variants of the the *antiqua* biovar of [[Branch 1]] are thought to have given rise to the [[Second Pandemic]]. This well-documented pandemic began with the infamous [[Black Death]] and swept across most of Eurasia from the 14th to 19th centuries ([[CITE]]). The divergence of ancient *[[Yersinia pestis|Y. pestis]]* dated to this time period pre-dates all other ```[[Branch 1]]``` lineages, with several samples placed directly at the base of ```[[Branch 1]]```. To mark this unique phylogenetic positioning, this clade is designated ```[[1.PRE]]``` rather than a subclade of  ```[[1.ANT]]```.

The third documented pandemic of plague, alias the *Modern Pandemic*, spread globally from the end of the [[18th Century]] and until the mid-[[20th Century]]. There is little dispute that a new lineage of plague emerging from [[Branch 1]] as biovar *orientalis* (```1.ORI```) was the causative agent of this pandemic. While the World Health Organization (WHO) declared the third pandemic over in 1950 ([[CITE)]]), this lineage continues to re-emerge to cause recent epidemics such as the [[2010 plague in Peru]] and the [[Madagascar Outbreaks of 2017]].

#### The Three Pandemic Problem

While the pandemic clade nomenclature provides an excellent foundation for historical discussion, there are several problems with this system. First is the growing awareness of the spatiotemporal overlap of the [[Second Pandemic\|Second]] and the [[Third Pandemic]]. Previously, the temporal extents of these events were mutually exclusive, dating from the 14th-18th century, and the 19th-20th century respectively. Recent historical scholarship has contested this claim, and demonstrated that these constraints are a product of a Eurocentric view of plague ([[CITE Nukhet]]). The [[Second Pandemic]] is now known to have extended into the [[19th Century]] in parts of the [[Ottoman Empire]], with the latest epidemics dating to 1819 ([[CITE]]). Similarly, the [[Third Pandemic]] is now hypothesized to have began as early as 1772 in southern China [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]]. It remains unclear where to draw the distinction, if it even exists, between the [[Second Pandemic\|Second]] and [[Third Pandemic]].

Another limitation of the pandemic nomenclature is the complete disconnection of ```[[Branch 2]]``` to any pandemic-related events. This is surprising given that several criteria of a pandemic pathogen are fulfilled by ```[[Branch 2]]``` lineages, namely extensive spread and virulence. ```[[Branch 2]]``` genomes of *[[Yersinia pestis|Y. pestis]]* have been collected from all throughout [[Eurasia]], stretching from the [[Caucasus]], to [[India]], and to eastern [[China]] (Figure @fig:fig_map_branch2). Furthermore, clade [[2.MED]] was demonstrated to have the highest spread velocity of any *[[Y. pestis]]* clade [[Xu et al. 2019 Historical Genomic Data\|[@xu2019HistoricalGenomicData]]]. And finally, while [[Branch 2]] isolates are not historically linked to the [[Third Pandemic]] Proper, clade [[2.MED]] has been implicated in numerous modern plague outbreaks. 

As historical plague scholarship extends beyonds the bounds of [[Western Europe]], the traditional narrative of three pandemic plague becomes unstable.

![The geographic distribution of *[[Yersinia pestis|Y. pestis]]* ```[[Branch 2]]```.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/e0d84a1/main/auspice/all/chromosome/full/filter5/2_map.PNG){#fig:fig_map_branch2 style="border:1px solid black"}

#### Hosts {.page_break_before}

Clades of *Y. pestis* are additionally defined by virulence in particular hosts. For example, the [[Pestoides]] clade is frequently avirulent in humans, although sporadic cases of human plague do still occur ([[CITE]]). In general, all branches of *Y. pestis* are capable of causing plague in humans and the species barrier between wild rodents and human popuations is crossed frequently ([[FIGURE]]).

While clades of ancient *Y. pestis* are exclusively associated with humans, this is more likely due to the sampling strategies of ancient DNA studies which have prioritized human skeletal remains over zooarchaeological remains. Given that no other clades across the *[[Yersinia pestis|Y. pestis]]* phylogeny show a specificty for human hosts, ... isolate aDNA *Y. pestis* from rats.

> Plague can cause disease in humans at any time, and from anywhere. There are virtually no lineages that are "safe" for humans. Thus plague as a disease is treated with exceptional caution.

> No lineage of modern plague has been observed to exclusively infect humans (?) and thus ... attention to multi-host ecology.

![
Distribution of human vs. non-human samples.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/1464d03/main/auspice/all/chromosome/full/filter5/divtree_map_host.png){#fig:fig_divtree_map_host}

### [[Phylodynamics]] {.page_break_before}

> How has the known diversity of plague changed over time?

#### Temporal Distribution

Historical strains of plague isolated prior to the 20th century cluster into three time periods: the [[LNBA|Late Neolithic Bronze Age (LNBA)]], Roman Period/Late Antiquity(?), and the Medieval Period (@fig:fig_timeline). 
For example, all strains of *Y. pestis* isolated in the [[Roman]] period group together in [[Branch 0]] and form a distinct subclade within [[0.ANT]]. Similarly, all [[Medieval]] strains of *Y. pestis* cluster together in [[Branch 1]] as clade [[1.PRE]]. The LNBA is a notable exception as mixing between clades [[0.PE]] and [[0.PRE]] is observed.

However, collection date and collection location are highly confounded as ancient DNA sampling strategies have predominantly targeted [[Western Europe]]. Due to this sampling bias, it is challenging to evaluate whether multiple strains of plague have co-occured in human populations in the past. 

An additional observation is that the temporal sampling strategy of genomic data  reflects greater interest in *[[Yersinia pestis|Y. pestis]]* as a historical pathogen, rather than a public health threat to modern humans. One example of this is that the [[Medieval Plague]] in [[Western Europe]] (Clade [[1.PRE]]) has more representative samples than all of the African continent (Clade [[1.ANT]]). Sequencing initiatives are greatly needed that shift the balance away from Eurocentrism and encompass a greater diversity of affected populations.

![
Temporal distribution of *[[Yersinia pestis\|Y. pestis]]* genomes.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/1464d035c4f364bd634e7081d46a978c1638246b/main/iqtree/all/chromosome/full/filter5/filter-taxa/timeline_all.png){#fig:fig_timeline}

#### Temporal Signal {#sec:temporal_signal}

> **TDLR;**
>
> - *[[Yersinia pestis|Y. pestis]]* has more temporal signal than previously thought.
> - A root-to-tip regression is a poor measure of [[Clock Model|temporal signal]]. 

*[[Yersinia pestis|Y. pestis]]* has been unambiguously shown to exhibit substantial rate variation both between and within clades [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]]. It is therefore unsurprising that extreme rate variation is also observed in this study. The [[Coefficient of Determination]] (R<sup>2</sup>) of the linear regression for the full dataset is extremely low at 0.09 (Table @tbl:table_temporal_signal). This suggests that a simple linear model, such as the strict clock model, is overall a poor fit for the data. 

> What were the BETS results for the reduced dataset? 

Taken together, these findings seem to support the observation that *[[Yersinia pestis|Y. pestis]]* as a whole does not demonstrate temporal signal.

However, visual inspection of the [[Root to Tip Regression]] hints that rate variation may be partially explained by clade-specific clocks (Figure @fig:fig_rtt_all). When examining each clade in isolation, evidence of strict clock-like behavior is recovered in both the [[Root to Tip Regression]] and the [[Bayesian Evaluation of Temporal Signal|BETS]] Bayes factors (Table @tbl:table_temporal_signal, Figure @fig:fig_rate_boxplot_all). Intriguingly, clades that have been associated with historically documented pandemics are well-modeled by a strict clock including the [[First Pandemic]] clade ```[[0.ANT4]]```, the [[Second Pandemic]] clade ```[[1.PRE]] ``` and the [[Third Pandemic]] clade ```[[1.OR1]]```. The final clade which demonstrates strict clock behavior is the [[LNBA|Late Neolithic Bronze Age]] group ```[[0.PRE]]```. As this time period pre-dates historical records, there is little opportunity to estimate mortality rates. However, this similarity may lend support to the hypothesis that an early pandemic of plague was occurring at that time [[Rascovan et al. 2019 Emergence Spread Basal\|@rascovan2019EmergenceSpreadBasal]]. It may be a useful avenue of research to investigate to what extent rate variation is a useful predictor for 'pandemic potential'.

While a [[Root to Tip Regression]] can be useful tool to explore temporal signal, it has several known limitations. Namely the underlying assumption of strict clock-behavior and the non-independence of data points [[Duchene 2020 Bayesian Evaluation Temporal|[@duchene2020BayesianEvaluationTemporal]]]. A [[Bayesian Evaluation of Temporal Signal|BETS]] analysis counters both of these limitations, and is overall more sensitive given that multiple clock models can be tested. The superior performance of the [[Bayesian Evaluation of Temporal Signal|BETS]] test can be seen in (Table @tbl:table_temporal_signal). The [[Root to Tip Regression]] detects temporal signal in 5/12 clades while [[Bayesian Evaluation of Temporal Signal|BETS]] detects signal in 7/12 clades. Furthermore, in all cases the [[Clock Model|relaxed clock]] proves to have stronger support, even when the regression [[Coefficient of Determination]] is high. The conclusion is that a root-to-tip regression is a relatively poor measure of [[Clock Model|temporal signal]] in *[[Yersinia pestis|Y. pestis]]*.

> Wait for an update on [[0.PRE]] to confirm this.

![ [[Root to Tip Regression]] of [[Yersinia pestis|Y. pestis]] on sampling date, colored by clade.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/4dcc459/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt_all_branch_major.png){#fig:fig_rtt_all}


> So what about Branch 2, since I was so adamant that it could be an undocumented historical pandemic?



#### Clock Model

- [[Clock Model#Relaxed Clock|Relaxed clock]] [[MCMC]] runs produce a high [[Coefficient of Variation]] indicating a relaxed model is favored over a strict model (Figure @fig:fig_coefficient_variation). However, these runs do not converge, suggesting there is too much [[rate variation]] to confidently estimate key parameters such as the mean [[Substitution Rate]] or [[MRCA|tMRCA]].

![Coefficient of variation.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Coefficient%20of%20Variation.png){#fig:fig_coefficient_variation width="100%"}

- When estimating a [[Substitution Rate]] for all of *[[Yersinia pestis|Y. pestis]]*, a [[Clock Model|strict clock]] and [[Clock Model|relaxed clock]] produce different estimates. This is observed in a Bayesian framework, where the strict clock underestimates the mean and the relaxed clock is multi-modal (Figure @fig:fig_sub_rate_compare). Also in a maximum likelihood framework (strict: 7.86E-09, relaxed: 1.63E-08)

![Substitution rate comparison (green: strict clock, orange: relaxed clock.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Substitution%20Rate%20Comparison.png){#fig:fig_sub_rate_compare width="100%"}
	
- There doesn't appear to be clustering of rates. Branches with high rates are next to those with low rates  (Figure @fig:fig_timetree_color_rate).

![Time tree colored by rate.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Time%20Tree%20Colored%20by%20Rate.png){#fig:fig_timetree_color_rate width="100%"}


#### Mean Substitution Rate

> **TLDR;**
>
> - The mean substitution rate of *[[Yersinia pestis|Y. pestis]]* is of little interpretive value given substantial rate variation and the time-dependency on sampling date.

*[[Yersinia pestis|Y. pestis]]* has one of the slowest substitution rates observed in a bacterial pathogen (Table @tbl:table_bacterial_rate_comparison). Given the tremendous variation observed in modern plague ecology, it is surprising that the evolutionary rate does not reflect this need to rapidly adapt to changing environments. However, this slow rate makes perfect sense when viewed in the context of rate *[[Time-Dependency\|time-dependency]]*, wherein the observed [[Substitution Rate\|substitution rate]] decreases as the sampling time frame increases. Furthermore, given that the full dataset shows no temporal signal, likely due to the lineage-specific variation showed in Figure @fig:fig_rate_boxplot_all, the mean substitution rate is of little interpretive value. 

> The time-dependency does not hold in the clade datasets! (Figure @fig:fig_time-dependency_clades)

| Organism                         | Disease      | Substitution Rate (subs/site year<sup>-1</sup>) | Sampling Time (years) | Study                                                                                        |
| -------------------------------- | ------------ | ----------------------------------------------- | --------------------- | -------------------------------------------------------------------------------------------- |
| *[[Mycobacterium leprae]]*       | Leprosy      | 1.56 x 10<sup>-8</sup>                          | 1993                  | [[Duchene 2016 Genome-scale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]] |
| *[[Yersinia pestis]]*            | Plague       | 1.63 x 10<sup>-8</sup>                          | 4687                  | This Study                                                                                 
| *[[Mycobacterium tuberulcosis]]* | Tuberculosis | 5.39 x 10<sup>-8</sup>                          | 895                   | [[Duchene 2016 Genome-scale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]] |
| *[[Neisseria meningitis]]*       | Meningitis   | 6.05 x 10<sup>-8</sup>                          | 59                    | [[Duchene 2016 Genome-scale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]] |
| *[[Salmonella enterica]]*        | Typhoid      | 7.60  x 10<sup>-8</sup>                         | 84                    | [[Duchene 2016 Genome-scale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]] |
| *[[Pseudomonas aeruginosa]]*     | Pneumonia    | 3.36 x 10<sup>-7</sup>                          | 35                    | [[Duchene 2016 Genome-scale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]] |

Table: Substitution rates of bacterial pathogens.
{#tbl:table_bacterial_rate_comparison}


> The [[Big Bang Polytomy]] is surrounded by clades with varying degrees of [[Clock Model|temporal signal]]. The branches surrounded the Big Bang Polytomy [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation]]] show some of the most dramatic rate acceleration to accomodate.

### [[Phylogeography]]   {.page_break_before}

#### Geographic Distribution

The geographic distribution of *[[Yersinia pestis|Y. pestis]]* reflects a complex dispersal history (Figure @fig:fig_map_ibd_timeline .B). Many regions have been colonized by diverse strains of *[[Yersinia pestis|Y. pestis]]*. This diversity can be contemporaneous, such as endemic foci in the [[Caucausus]] and [[Western China]] (Clade [[0.PE]]). Alternatively, this diversity may occur over multiple centuries through distinct re-introductions and extinctions, as seen in the historical epidemics of Europe (Clades [[0.ANT]] and [[1.PRE]]). In these examples, a relatively large amount of genetic diversity appears in a small geographic range. In contrast, regions such as the Americas have been colonized by a single strain of *[[Yersinia pestis|Y. pestis]]* (Clade [[1.ORI]]) which shows a relatively small amount of genetic diversity over a tremendously large geographic range.

An important consideration is that the geographic sampling strategy of *[[Yersinia pestis|Y. pestis]]* genomes (Figure @fig:fig_map_ibd_timeline .A) does not reflect the known distribution of modern plague [[Xu 2019 Historical Genomic Data\|[@xu2019HistoricalGenomicData]]], let alone historical pandemics. Nor does it adequately characterize the most heavily affected regions of the world, namely [[Madagascar]] and the [[Democratic Republic of the Congo]] [[WHO 2017 Plague\|[@who2017Plague]]]. The [[Over-Represented|over-sampling]] of [[East Asia]] has been previously described by [[Spyrou 2016 Historical Pestis Genomes|@spyrou2016HistoricalPestisGenomes]] and considerably drives the hypothesis that *[[Yersinia pestis\|Y. pestis]]* originated in [[China]] [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]]. This once established hypothesis is now in contention, as the most basal strains of *[[Yersinia pestis|Y. pestis]]* (Clades 0.PRE and 0.PE) have been isolated from all across [[Eurasia]].

> The geographic distribution of *[[Yersinia pestis|Y. pestis]]* genomes reflects the *sampling history* more so than the *natural history* of the disease.

![
Spatiotemporal distribution of *[[Yersinia pestis\|Y. pestis]]* genomes. 
**A**: Geographic distribution,
**B**: Isolation by distance as a function of geographic distance and genetic distance.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/152e6ac/main/iqtree/all/chromosome/full/filter5/filter-taxa/map_ibd.png){#fig:fig_map_ibd_timeline}

### Ancestral Reconstruction

The confidence with which ancestral location could be estimated is described in Table @tbl:table_discrete_phylogeography_confidence and visualized in Figure @fig:fig_phylogeography_confidence. Across the entire phylogeny, the location of 34% of internal nodes could be estimated with high confidence given the data. Uncertainty derives from X sources:

- Overall slow substitution rate.
- Rapid geographic spread with little SNP differentiation.

ie. Not great for pandemic spread, not measurable evolving across the landscape. Phylogeography is better suited to ...



## Conclusion {.page_break_before}

## Appendix

### [[Root to Tip Regression]]

![ Time to Most Recent Common Ancestor (tMRCA) by clade.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/b1bcfbc/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt_clades.png){#fig:fig_tmrca_boxplot_all}

### [[Isolation By Distance]]

![Isolation By Distance (IBD) by clade.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/4dcc459/main/iqtree/all/chromosome/full/filter5/filter-taxa/ibd_clades.png){#fig:fig_tmrca_boxplot_all}

### [[Time-Dependency]]

![Time-dependency of substitution rate on sampling time frame by clade.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/4dcc459/main/iqtree/all/chromosome/full/filter5/filter-taxa/time-dependency_clades.png){#fig:fig_time-dependency_clades}

### [[tMRCA]]

![ Time to Most Recent Common Ancestory (tMRCA) by clade.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/b1bcfbc/main/iqtree/all/chromosome/full/filter5/filter-taxa/tmrca_boxplot_all.png){#fig:fig_tmrca_boxplot_all}

### [[Phylodynamics]]

| Branch |   Clade    |     Origin      | RTT R<sup>2</sup> | RTT p-value | Strict Clock BF | Relaxed Clock BF |
|:------:|:----------:|:---------------:| -----------------:| -----------:| ---------------:| ----------------:|
|  All   |    All     | Ancient, Modern |              0.09 |   3.81E-14* |              -- |               -- |
|   1    | [[1.ORI]]  |     Modern      |              0.04 |   1.32E-02* |           29.6* |            35.7* |
|   1    |  [[1.IN]]  |     Modern      |               0.0 |    3.24E-01 |            -3.9 |            -10.2 |
|   1    | [[1.ANT]]  |     Modern      |              0.45 |    2.03E-01 |            8.9* |            12.6* |
|   1    | [[1.PRE]]  |     Ancient     |              0.76 |   1.68E-13* |           10.1* |            44.1* |
|   2    | [[2.MED]]  |     Modern      |              0.01 |    1.86E-01 |              -- |               -- |
|   2    | [[2.ANT]]  |     Modern      |              0.05 |    5.96E-02 |           -20.8 |            -13.7 |
|   4    | [[4.ANT]]  |     Modern      |             -0.11 |    8.80E-01 |            -2.9 |             3.7* |
|   3    | [[3.ANT]]  |     Modern      |             -0.04 |    4.39E-01 |            -9.6 |            -11.4 |
|   0    | [[0.ANT]]  |     Modern      |             -0.01 |    7.35E-01 |            -2.3 |             -6.5 |
|   0    | [[0.ANT4]] |     Ancient     |              0.66 |   7.84E-04* |            5.3* |             5.9* |
|   0    |  [[0.PE]]  |     Modern      |              0.01 |    2.25E-01 |           -82.1 |            12.4* |
|   0    | [[0.PRE]]  |     Ancient     |              0.91 |   1.53E-04* |           83.0* |             -2.9 |

Table: Temporal signal statistics by clade based on a [[Root to Tip Regression\|root-to-tip linear regression]]. A * indicates a significant p-value or bayes factor. {#tbl:table_temporal_signal}

![Mean substitition rate uncertainty by clade based on a non-parametric bootstrap of the [[Root to Tip Regression\|root-to-tip linear regression]]. Highlighted clades show statistical support for a strict clock.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/fe7091d/main/iqtree/all/chromosome/full/filter5/filter-taxa/rate_boxplot_all_highlight.png){#fig:fig_rate_boxplot_all}

### [[Phylogeography]]


![ Discrete state phylogeography confidence. High confidence branches (>=0.95) are colored black, low confidence branches are colored light grey.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/69cbfd3/main/auspice/all/chromosome/full/filter5/divtree_mugration_confidence.png){#fig:fig_phylogeography_confidence}


| Clade  | Internal Nodes | High Confidence (Nodes) | High Confidence (Percent) | IBD R<sup>2</sup> | IBD p-value |
| ------ | --------------:| -----------------------:| -------------------------:| ----------------- | ----------- |
| All    |            600 |                     202 |                     33.67 | --                | --          |
| 1.ORI  |            116 |                      29 |                     25.00 | 0.35              | 0.00E+00*   |
| 1.IN   |             39 |                      17 |                     43.59 | 0.08              | 6.68E-15*   |
| 1.ANT  |              3 |                       0 |                      0.00 | 0.21              | 3.55E-01    | 
| 1.PRE  |             40 |                      13 |                     32.50 | 0.05              | 6.23E-11*   |
| 2.MED  |            115 |                      34 |                     29.57 | 0.0               | 5.38E-06*   |
| 2.ANT  |             53 |                      23 |                     43.40 | 0.21              | 8.15E-76*   |
| 4.ANT  |             10 |                       3 |                     30.00 | 0.21              | 3.69E-04*   |
| 3.ANT  |             10 |                       6 |                     60.00 | 0.31              | 9.98E-06*   |
| 0.ANT  |            104 |                      26 |                     25.00 | 0.27              | 0.00E+00*   |
| 0.ANT4 |             11 |                       4 |                     36.36 | --                | --          |
| 0.PE   |             85 |                      43 |                     50.59 | 0.46              | 0.00E+00*   |
| 0.PRE  |              7 |                       3 |                     42.86 | 0.01              | 7.16E-01    |

Table: Discrete state phylogeography confidence.
{#tbl:table_discrete_phylogeography_confidence}

## References {.page_break_before}