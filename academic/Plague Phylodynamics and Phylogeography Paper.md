---
project: [[plague-phylogeography]]
due: June 15, 2021
time: 18:00
people:
  - [[Katherine Eaton]]
  - [[Hendrik Poinar]]
  - [[Sebastian Duchene]]
  - [[Leo Featherstone]]
authors:
  - name: [[Katherine Eaton]]
    orcid: 0000-0001-6862-7756
    affiliations:
      [
        "[[McMaster Ancient DNA Center]]",
        "[[Department of Anthropology]], [[McMaster University]]"
      ]
  - name: [[Leo Featherstone]]
    orcid: 0000-0002-8878-1758
    affiliations:
      [
        "[[The Peter Doherty Institute For Infection and Immunity ]],
          [[University of Melbourne]]"
      ]
  - name: [[Sebastian Duchene]]
    orcid: 0000-0002-2863-0907
    affiliations:
      [
        "[[The Peter Doherty Institute For Infection and Immunity ]],
          [[University of Melbourne]]"
      ]
  - name: [[Ann Carmichael]]
    affiliations: [ "[[Indiana University Bloomington]]" ]
  - name: [[Nükhet Varlık]]
    orcid: 0000-0001-6870-5945
    affiliations: [ "[[University of South Carolina]]" ]
  - name: [[Brian Golding]]
    orcid: 0000-0002-7575-0282
    affiliations:
      [
        "[[Department of Biology]], [[McMaster University]]"
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
filepath: academic/[[Plague Phylodynamics and Phylogeography Paper]]
tags: 🧨
status: priority
title: Plagued by a cryptic clock
subtitle: Uncovering hidden temporal signal in _[[Yersinia pestis|Y. pestis]]_.
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
compile-manubot: "conda activate manubot && pandoc/manubot.sh 'Plague
  Phylodynamics and Phylogeography Paper.md' pandoc/bib/library.json
  ../../rootstock"
compile-pandoc: "conda activate pandoc && pandoc/convert_wikilinks.py --input
  'Plague Phylodynamics and Phylogeography Paper.md' --output 'Plague
  Phylodynamics and Phylogeography Paper_convert.md';"
url: https://ktmeaton.github.io/obsidian-public/academic/Plague%20Phylodynamics%20and%20Phylogeography%20Paper.html
---

## Results and Discussion {.page_break_before}

### Population Structure 

A critical step in reconstructing the evolutionary history of an organism is exploring the degree of population or genetic structure. Knowledge of how populations subdivide and diversify in isolation can add nuance to spatiotemporal analyses, by creating population-specific models [[Williamson 2016 Genomic Insights Sustained\|[@williamson2016GenomicInsightsSustained]]]. On the other hand, failing to account for how population subdivide and diversify in isolation can result in fundamentally different interpretations [[Scerri 2018 Did Our Species\|[@scerri2018DidOurSpecies]]].

To explore the global population structure of _Y. pestis_, we estimated a maximum-likelihood phylogeny from 601 genomes, including 540 modern (89.9%) and 61 ancient (10.1%) strains. In addition,  two genomes of the outgroup taxa *[[Yersinia pseudotuberculosis\|Yersinia pseudotuberculosis]]* were included to root the tree. The alignment consisted of 10,249 variant positions exclusive to *[[Yersinia pestis|Y. pestis]]*, with 3,844 sites shared by at least two strains. Following phylogenetic estimation, we pruned the outgroup taxa *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]* from the tree to more closely examine the genetic diversity of *[[Yersinia pestis|Y. pestis]]*.

In Figure @fig:divtree_map_timeline, we contextualize the maximum-likelihood phylogeny using three nomenclature systems: the major branches, biovars, and time periods.  In the following section, we compare how each system defines the population structure of *[[Yersinia pestis|Y. pestis]]*, and the uncertainty surrounding these incongruent divisions.

#### Biovar

The oldest system to date is the biovar nomenclature, which uses phenotypic differences to define population structure. *[[Yersinia pestis|Y. pestis]]* can be categorized into four classical biovars: *antiqua* (ANT), *medievalis* (MED), *orientalis* (ORI), and *microtus*/*pestoides* (PE) [[Devignat 1951 Varietes Espece Pasteurella\|[@devignat1951VarietesEspecePasteurella]]] [[Zhou 2004 Comparative Evolutionary Genomics\|[@zhou2004ComparativeEvolutionaryGenomics]]] . Non-classical biovars have also been introduced, such as the *intermedium* biovar (IN), which reflects a transitional state from *antiqua* to *orientalis* [[Li 2009 Genotyping Phylogenetic Analysis\|[@li2009GenotypingPhylogeneticAnalysis]]]. The biovar system is simple and comprehensible as it largely focuses on two traits: the ability to ferment glycerol and reduce nitrate [[Zhou 2004 Comparative Evolutionary Genomics\|[@zhou2004ComparativeEvolutionaryGenomics]]]. However, this simplicity is offset by the growing recognition of regional inconsistencies in metabolic profiles [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia]]], which weakens its broader applicability. This is exacerbated by the sequencing of non-viable, ‘extinct’ *Y. pestis*, for which metabolic sub-typing is impossible [[Bos 2011 Draft Genome Yersinia\|[@bos2011DraftGenomeYersinia]]]. Researchers have responded to this uncertainty in a variety of ways, by creating pseudo-biovars (PRE) [[Rasmussen 2015 Early Divergent Strains\|[@rasmussen2015EarlyDivergentStrains]]] or extrapolating existing ones [[Wagner 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]]. Other still have foregone the *biovar* nomenclature altogether in favor of locally-developed taxonomies [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia]]]. Despite extensive research, it remains unclear which traits, if any, can be used to classify *[[Yersinia pestis|Y. pestis]]* into distinct populations at a global scale.

#### Major Branch

In contrast to the biovar nomenclature which emphasizes phenotypes, the major branch nomenclature focuses on the evolutionary relationships between strains. This system divides the global phylogeny of *[[Yersinia pestis\|Y. pestis]]* into populations according to their relative position to the “Big Bang” polytomy  [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation]]]. All lineages that diverged prior to this polytomy are grouped into Branch 0 and those diverging after form Branches 1-4. Because this multifurcation plays such a central role in this system, there is great interest in estimating its timing and geographic origins [[Green 2020 How Microbe Becomes\|[@green2020HowMicrobeBecomes]]]. However, the epidemiological significance of the “Big Bang” polytomy remains unclear, as no definitive phenotype has been identified that correlates with the observed branching pattern [@cite]. While the major branch system excels at reconstructing the evolutionary relationships between candidate populations, it struggles to connect these relationships to meaningful biological changes.

#### Time Period

As previously mentioned, the sequencing of ancient *[[Y. pestis]]* poses a problem for classification, as direct metabolic testing is impossible for these non-viable samples. Ancient DNA researchers thus use an alternative strategy, by incorporating contextual evidence such as the collection date or associated time period. The known genetic diversity of *[[Y. pestis]]* has been most commonly divided into four time periods: the Bronze Age (3rd - 1st millenium BCE) [[Rasmussen 2015 Early Divergent Strains\|[@rasmussen2015EarlyDivergentStrains]]] , the First Pandemic, (6th - 8th century CE) [[Wagner 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]], the Second Pandemic (14th - 18th century CE) [[Spyrou 2019 Phylogeography Second Plague\|[@spyrou2019PhylogeographySecondPlague]]], and the Third Pandemic (19th - 20th century CE) [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation]]]. 

The key strength of this nomenclature is that it provides an excellent foundation for interdisciplinary discourse. However, this system runs the risk of grouping unrelated populations, as contemporaneous strains have been observed to have distinct evolutionary histories [[Spyrou 2018 Analysis 3800-year-old Yersinia\|[@spyrou2018Analysis3800yearoldYersinia]]]. Furthermore, there is growing awareness of the temporal overlap of the Second and the Third Pandemics. Previously, the temporal extents of these events were mutually exclusive, dating from the 14th to 18th century, and the late 19th to mid-20th century respectively [[Gage 2005 Natural History of Plague\|@gage2005NaturalHistoryPlague]]. Recent historical scholarship has contested this claim, and demonstrated that these constraints are a product of a Eurocentric view of plague [[Varlik 2014 New Science Old\|[@varlik2014NewScienceOld]]]. The Second Pandemic is now recognized to have extended into at least the 19th Century in the Ottoman Empire [[Bolanos 2019 Ottomans Global Crises\|[@bolanos2019OttomansGlobalCrises;]] [[Varlik 2020 Plague That Never\|@varlik2020PlagueThatNever]]. Similarly, the Third Pandemic is now hypothesized to have began as early as the 18th century in southern China [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]].  Unfortunately, this period of overlap remains unsampled, thus it is unclear where exactly to draw a genetic distinction, if it even exists, between these pandemic events.

In addition, some populations are curiously excluded from the time period/pandemic nomenclature. In particular, Branch 2 populations emerged at the same time as, but separate from, the Second Pandemic and have been associated with high mortality epidemics [[Eroshenko 2021 Evolution Circulation Yersinia\|[@eroshenko2021EvolutionCirculationYersinia]]]. In particular, the *medievalis* population (2.MED) has spread throughout Asia (Figure @fig:divtree_branch_major) and was observed to have the fastest spread velocity of any *[[Yersinia pestis|Y. pestis]]* lineage [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]]. Given this epidemiological significance, it is surprising that Branch 2 populations have been largely overlooked in the pandemic taxonomy of *[[Yersinia pestis|Y. pestis]]*. As ancient DNA sampling strategies expand out of Europe, it will be important to consider how to adapt and expand the three pandemic nomenclature to encompass this new diversity.

#### Uncertainty

In light of this uncertainty and inconsistencies, no classification system comprehensively represents  the global population structure of *[[Yersinia pestis|Y. pestis]]*. However, a combined approach has been previously used in large comparative studies of *[[Yersinia pestis|Y. pestis]]* [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]]. We therefore take the intersection of the three taxonomic systems discussed previously, to define 12 populations for statistical analysis (Figure @fig:divtree_map_timeline). In the following sections, we highlight the novel insight that comes from explicitly incorporating this population structure, and the key areas of uncertainty that remain.

### Phylodynamics {.page_break_before}

> **Section Significance**:<br>Why do we care about node-dating, rate variation, and population sizes?

Previous work has documented substantial rate variation both between and within populations of *[[Yersinia pestis|Y. pestis]]* [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]]. We therefore began by testing if this characteristic was still present in our updated genomic dataset, which is notably larger and more diverse than those used in previous studies. Given this expanded diversity, it is unsurprising that a [[Root to Tip Regression|root-to-tip regression]] on collection date reproduces the finding that substitution rates in *[[Yersinia pestis|Y. pestis]]* are poorly represented by a simple linear model (ie. strict clock) (Figure @fig:rtt). While there is a statistically significant relationship between date and genetic distance (P-value=4.959 x 10<sup>-13</sup>), an extremely low [[Coefficient of Determination\|coefficient of determination]] (R<sup>2</sup>=0.09) indicates there is tremendous variation that is not accounted for. 

The rate variation observed in _Y. pestis_ presents a curious case of the [[Time Dependency of Molecular Rate Estimates|time dependency of molecular rates]] [[Ho 2005 Time Dependency Molecular\|[@ho2005TimeDependencyMolecular]]]. Rate variation correlates with the sampling time frame, in which populations sampled over several millennia ([[0.PRE]]), have less variation than those sampled over centuries ([[1.PRE]]), or only a few decades ([[2.MED]]) (Figure @fig:rtt). We propose three inter-related mechanisms that drive the observed patterns of rate variation in _[[Yersinia pestis|Y. pestis]]_: 1) a slow, long-term [[Substitution Rate|substitution rate]], 2) a high, short-term [[mutation rate]], and 3) population-specific rate variation.

#### Slow, Long-Term [[Substitution Rate|Substitution Rate]]

The [[substitution rate]] of _[[Yersinia pestis|Y. pestis]]_ has previously been estimated to range from 1 x 10<sup>-8</sup> to 2 x 10<sup>-8</sup> subs/site/year, [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]] or 1 substitution every 10-25 years. Amongst bacterial pathogens, this is one of the slowest rates observed [[Duchene 2016 Genome-scale Rates Evolutionary|[@duchene2016GenomescaleRatesEvolutionary]]] and means that  _[[Y. pestis]]_ lineages often cannot be differentiated until several decades have passed. In application, we see this in the finding that isolates from the Second Pandemic ([[1.PRE]]) dated to the medieval [[Black Death]] (1348-1353) are indistinguishable clones, whereas those from subsequent centuries are phylogenetically distinct (Figure @fig:rtt). This highlights a significant limitation of _[[Yersinia pestis|Y. pestis]]_ phylogenetics, as comparisons over short time scale (<10 years) may have limited resolution. Furthermore, the little phylogenetic signal (ie. substitutions) that accumulates in such a short time period may be obscured by transient mutations.


### High, Short-Term Mutation Rate 

Since it can take decades for a [[substitution]] to become fixed in _[[Yersinia pestis|Y. pestis]]_ populations, rate estimates are highly susceptible to the influence of transient [[mutations]]. In whole-genome sequencing, it is common to capture both fixed [[substitutions]] in the population and transient [[mutations]] found in a single isolate. These singleton mutations manifest as long external branches, and may arise from "true" biological variation, particularly when a population is experiencing exponential growth and is sparsely sampled, or from methodological "artifacts" due to sequencing error. 

The global phylogeny of _[[Yersinia pestis|Y. pestis]]_ is heavily impacted by these transient mutations or long external branches (Figure @fig:divtree_map_timeline). While these outliers are found ubiquitously throughout the phylogeny, several populations are disproportionately affected including *pestoides* ([[0.PE]]) and *medievalis* ([[2.MED]]), and to a lesser extent, *orientalis* ([[1.ORI]]), *intermedius* ([[1.IN]]) and *antiqua* ([[2.ANT]]) (Figure @fig:long_branches). Given the extensive presence of these apparent outliers, inclusion or exclusion of these samples may have profound impacts on the models used to estimate population sizes and molecular clocks.

### Population-Specific Rate Variation

The Bayesian analysis exhibited poor sampling of the relaxed clock model parameters, even when using a fixed topology. This suggests there may be too much [[rate variation]] to confidently estimate key parameters such as the mean [[Substitution Rate\|substitution rate]] and the time to the most recent common ancestor ([[MRCA|tMRCA]]). This observation is consistent with previous analyses [[Wagner 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]] where robust estimates of model parameters could not be estimated, thus leading to the conclusion that *[[Yersinia pestis|Y. pestis]]* lacks temporal signal. At the same time, other studies have suggested data composition is a strong determinant of temporal signal [[Duchene 2016 Genomescale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]] and thus we investigated alternative approaches.

A [[Bayesian Evaluation of Temporal Signal|BETS]] analysis by population proved even more sensitive, as temporal signal was detected in all populations with three exceptions: [[1.IN]], [[2.ANT]], and [[3.ANT]] (Table @tbl:bets_temporal_signal). Furthermore, for all populations with temporal signal, the [[Clock Model\|relaxed clock]] model (UCLN) had higher support than the strict clock (SC).


Figure @fig:rate_stdev

### Phylogeography {.page_break_before}


## Conclusions {.page_break_before}

## Methods {.page_break_before}

## References {.page_break_before}

<div id="refs"></div>

## Figures  {.page_break_before}

![The phylogenetic, temporal, and geographic structure of 601 _Yersinia pestis_ genomes. Top: The maximum-likelihood phylogeny. Middle: The timeline of collection dates. Bottom: The global geographic distribution.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/7311597/main/auspice/all/chromosome/full/filter5/ml/divtree_map_timeline.png){#fig:divtree_map_timeline width=90%}

<div style="page-break-after: always;"></div>

![The time-dependency of rate variation in _Yersinia pestis_ using root-to-tip regression.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/5a924bf/main/iqtree_stats/all/chromosome/full/filter5/rtt.png){#fig:rtt width=100%}

<div style="page-break-after: always;"></div>

![The mean substitution rate (left) and coefficient of rate variation (right) by population. Each distribution is annotated with the peak value. ](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/bd0b9da2/main/beast/all/chromosome/clade/log/meanRate_stdev.png){#fig:rate_stdev width=60%}

## Supplementary Information   {.page_break_before}

![Long external branches.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/5eafc0a/main/iqtree_stats/all/chromosome/full/filter5/long_branches.png){#fig:rtt width=100%}