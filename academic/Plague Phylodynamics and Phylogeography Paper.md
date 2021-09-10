---
project: [[plague-phylogeography]]
due: Sept 15, 2021
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
  - name: [[Eddie Holmes]]
    orcid: 0000-0001-9596-3552
    affiliations:
      [
        "[[University of Sydney]]",
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
subtitle: Insight and issues from the global phylogeny of _[[Yersinia pestis|Y. pestis]]_.
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

## Introduction {.page_break_before}

- Plague has a powerful and lasting legacy. Tremendous societal change.
- Humanity has been visited by many waves of plague pandemics
- Bronze Age to current epidemics, has visited every continent, and remains endemic in x of those.

## Results and Discussion {.page_break_before}

### Population Structure 

A critical step in reconstructing the evolutionary history of an organism is exploring the degree of population or genetic structure. When populations subdivide and diversify in isolation, the 

can add nuance to spatiotemporal analyses, particularly when populations

through population-specific models [[Williamson 2016 Genomic Insights Sustained\|[@williamson2016GenomicInsightsSustained]]]. For example...
On the other hand, failing to account for how population subdivide and diversify in isolation can result in fundamentally different interpretations [[Scerri 2018 Did Our Species\|[@scerri2018DidOurSpecies]]]. Such as... . We therefore began by examining how existing classification systems...

To explore the global population structure of _Y. pestis_, we estimated a maximum-likelihood phylogeny from 601 genomes, including 540 modern (89.9%) and 61 ancient (10.1%) strains. In addition,  two genomes of the outgroup taxa *[[Yersinia pseudotuberculosis\|Yersinia pseudotuberculosis]]* were included to root the tree. The alignment consisted of 10,249 variant positions exclusive to *[[Yersinia pestis|Y. pestis]]*, with 3,844 sites shared by at least two strains. Following phylogenetic estimation, we pruned the outgroup taxa *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]* from the tree to more closely examine the genetic diversity of *[[Yersinia pestis|Y. pestis]]*.

In Figure @fig:divtree_map_timeline, we contextualize the maximum-likelihood phylogeny using three nomenclature systems: the major branches, biovars, and time periods.  In the following section, we compare how each system defines the population structure of *[[Yersinia pestis|Y. pestis]]*, and the uncertainty surrounding these incongruent divisions.

--> Brief critique of the strengths and weaknesses of each.

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

### Molecular Clock {.page_break_before}

A long-standing line of inquiry in plague phylogenetics has been estimating evolutionary rates in order to date internal nodes. Key areas of the phylogeny that have been intensively researched are the first emergence of _[[Yersinia pestis|Y. pestis]]_ in human populations [@rasmussen2015EarlyDivergentStrains], the "Big Bang" polytomy [@green2020HowMicrobeBecomes], and the onset of past pandemics [@bos2011DraftGenomeYersinia; @cui2013HistoricalVariationsMutation; @wagner2014YersiniaPestisPlague]. 
Recent technological advancements, such as ancient DNA sequencing and new molecular clock methods, have enabled researchers to reach further back in time with increasingly complex models. But despite this intensive interest and methodological advancement,  _[[Yersinia pestis\|Y. pestis]]_ remains notoriously difficult to model using a molecular clock approach. 

This difficulty can largely be attributed to the substantial rate variation that has been documented across the phylogeny of *[[Yersinia pestis\|Y. pestis]]* [@cui2013HistoricalVariationsMutation; @spyrou2019PhylogeographySecondPlague]. As a result, considerable debate has emerged over whether *[[Yersinia pestis|Y. pestis]]* has absolutely no temporal signal [[Wagner et al. 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]], or if populations have such distinct rates that a species-wide signal is obscured [[Spyrou 2019 Phylogeography Second Plague\|[@spyrou2019PhylogeographySecondPlague;]] [[Duchene 2016 Genome-scale Rates Evolutionary\|@duchene2016GenomescaleRatesEvolutionary]]]. This uncertainty has produced radically different temporal models between studies, with node dates shifted by as much as several millennia [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Rasmussen 2015 Early Divergent Strains\|@rasmussen2015EarlyDivergentStrains]]]. Thus a comprehensive understanding of plague's molecular clock, or lack thereof, is necessary before we can begin to untangle when and where this disease appeared in the past.

#### Rate Variation

In light of this evolutionary debate, we began by exploring the extent of rate variation present in our updated genomic dataset, which is notably larger and more diverse than those used in previous studies [@spyrou2019PhylogeographySecondPlague]. Given this expanded diversity, it is unsurprising that a root-to-tip regression on collection date reproduces the finding that substitution rates in *[[Yersinia pestis|Y. pestis]]* are poorly represented by a simple linear model or "strict clock" (Figure @fig:rtt). While there is a statistically significant relationship between date and genetic distance (P-value=4.959 x 10<sup>-13</sup>), an extremely low [[Coefficient of Determination\|coefficient of determination]] (R<sup>2</sup>=0.09) indicates there is tremendous variation that is not accounted for. 

Thus far, the hypotheses proposed to explain this variation have primarily focused on biological processes, such as the cycling between endemic and epidemic phases [@cite] and adaptations to new environments [@cite]. However, we argue that several methodological factors must first be taken into account, before investigating more complex ecological factors such as host and landscape. 

#### Time Dependency

One striking factor that is methodological in nature is the [[Time Dependency of Molecular Rate Estimates|time dependency of molecular rates]]. In Figure @fig:rtt, we show how rate variation in _Yersinia pestis_ correlates with the sampling time frame, in which populations sampled over several millennia (Bronze Age) have less variation than those sampled over multiple centuries (Second Pandemic) or decades (*medievalis*). This correlation is a well-known and widely-documented phenomenon in many organisms [[Ho 2005 Time Dependency Molecular\|[@ho2005TimeDependencyMolecular]]] and occurs due to two conflicting signals: a slower, long-term [[Substitution Rate|substitution rate]] combined with a higher, short-term [[mutation rate]]. 

Separating out these signals can be extremely challenging and failure to do so can have significant consequences when estimating and interpreting a molecular clock. Of particular concern for epidemiological investigations is the risk of artificially inflating the substitution rate due to transient mutations, which will lead to underestimating internal node dates. With regards to plague genomics, this may result in incorrect molecular dates linked to key historical events, such as the emergence of pandemic populations. Because of this risk, we first evaluate the presence of spurious mutations in our dataset before attempting to estimate a molecular clock model.

<div style="page-break-after: always;"></div>

![Rate variation in _Yersinia pestis_ as observed through a regression of root-to-tip distances on collection date. Top: A species-wide model using all genomes from the maximum-likelihood phylogeny. Middle: Population-specific models based on extracted subtrees from the phylogeny. Bottom: The time-dependency of population-specific rate variation on the sampling time frame. ](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/5a924bf6/main/iqtree_stats/all/chromosome/full/filter5/rtt.png){#fig:rtt width=100%}

<div style="page-break-after: always;"></div>

#### Slow, Long-Term Substitution Rate

_[[Yersinia pestis\|Y. pestis]]_ is particularly susceptible to the time-dependency of molecular rates, as it has one of the slowest substitution rates observed among bacterial pathogens [[Duchene 2016 Genome-scale Rates Evolutionary|[@duchene2016GenomescaleRatesEvolutionary]]]. The substitution rate of _[[Yersinia pestis|Y. pestis]]_ has previously been estimated to range from 1 x 10<sup>-8</sup> to 2 x 10<sup>-8</sup> substitutions/site/year, [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]] or 1 substitution every 10 - 25 years. In application, this means that  _[[Y. pestis]]_ lineages often cannot be differentiated until multiple decades have passed, a concept generally referred to as the phylodynamic threshold [@duchene2020TemporalSignalPhylodynamic].

A historical example of this can be seen during the Second Pandemic, where isolates dated to the medieval [[Black Death]] (1348-1353) are nearly indistinguishable clones (Figure @fig:rtt). A modern example is the *medievalis* population, where the youngest samples (2010s) have diverged little compared to those from a century prior (1910s). This highlights a significant limitation and cautionary note for _[[Yersinia pestis|Y. pestis]]_ phylogenetics, as comparisons over short time scales (10 to 100 years) may have limited resolving power.  

#### High, Short Term Mutation Rate

Furthermore, the little phylogenetic signal (ie. substitutions) that accumulates in the population may be easily obscured by spurious mutations in a single sample. The *medievalis* population is an extreme example of this, as several samples collected between 1970 and 1980 are exceptionally divergent. This short-term diversity is largely due to mutations observed in only a single-isolate, which manifests as long terminal branches in the maximum-likelihood phylogeny (Figure @fig:divtree_map_timeline). The presence of transient mutations, or long branches, is not isolated to the *medievalis* population and also strongly impacts the *pestoides* [[0.PE]], *intermedium* [[1.IN]], and *orientalis* ([[1.ORI]]) populations (Figure @fig:long_branches SI). Given the extensive presence of these apparent outliers, inclusion or exclusion of these samples may have profound impacts on the models used to estimate a molecular clock.

> So what?

#### Bayesian Clock Model

To investigate the degree of temporal signal in the genomic data, we performed a Bayesian evaluation of temporal signal (BETS) test. In brief, this method compares the likelihoods of two different phylogenetic models, one where the true collection dates are used and the other where all collection dates are assumed to be contemporaneous. A comparison of the model likelihoods, or Bayes Factors, is then used to assess the degree of temporal signal in the dataset.

Unfortunately, a BETS test was inconclusive when attempting to fit a clock model to all _Y. pestis_ populations combined. The Bayesian analysis exhibited poor sampling of the clock parameters, for both a strict and relaxed clock, even when attempting to reduce sources of variation such as down-sampling the number of genomes, using fixed tip dates, and fixing the tree topology to the maximum-likelihood phylogeny. This observation is consistent with previous analyses [[Wagner 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]] where robust estimates of model parameters could not be estimated, thus leading to the conclusion that *[[Yersinia pestis|Y. pestis]]* lacks temporal signal. However, as other studies have suggested data composition is a strong determinant of temporal signal [[Duchene 2016 Genomescale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]] we then repeated the BETS test by modeling each of the 12 populations of _Y. pestis_ in isolation.

A [[Bayesian Evaluation of Temporal Signal|BETS]] analysis by population proved even more sensitive, as temporal signal was detected in 9/12 populations. Furthermore, for all populations with temporal signal, the [[Clock Model\|relaxed clock]] model (UCLN) had higher support than the strict clock (SC).


### Phylogeography {.page_break_before}


## Conclusions {.page_break_before}

## Methods {.page_break_before}

## References {.page_break_before}

<div id="refs"></div>

## Figures and Tables  {.page_break_before}

![The phylogenetic, temporal, and geographic structure of _Yersinia pestis_. Top: The maximum-likelihood phylogeny. Middle: The timeline of collection dates. Bottom: The global geographic distribution.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/e54d891/main/auspice/all/chromosome/full/filter5/ml/divtree_map_timeline.png){#fig:divtree_map_timeline width=90%}

<div style="page-break-after: always;"></div>

![The mean substitution rate (left) and coefficient of rate variation (right) by population. Each distribution is annotated with the peak value. ](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/bd0b9da2/main/beast/all/chromosome/clade/log/meanRate_stdev.png){#fig:rate_stdev width=60%}

## Supplementary Information   {.page_break_before}

![The distribution of external branch length (left) and the prevalence of long external branches across _Y. pestis_ populations (right).](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/5eafc0a/main/iqtree_stats/all/chromosome/full/filter5/long_branches.png){#fig:long_branches width=100%}



| Population | SC Ultrametric | SC Dates                                          | UCLN Ultrametric | UCLN Dates   | BETS Model | Bayes Factor |
| ---------- | -------------- | ------------------------------------------------- | ---------------- | ------------ | ---------- | ------------ |
| 0.ANT4     | -5889525.703   | -5889520.445                                      | -5889501.725     | -5889495.805 | ULCN_dates |              |
| 0.ANT      | -5896014.089   | -5896016.472	-5895879.702	-5882581.985	ULCN_dates |                  |              |            |              |
0.PE	-5945602.843	-5945574.023	-5944626.698	-5944614.32	UCLN_dates
0.PRE	-5892925.901	-5892842.899	-5892738.563	-5892741.377	ULCN_ultra
1.ANT	-5882596.155	-5882586.874	-5882594.555	-5882581.864	ULCN_dates
1.IN	-5891399.168	-5891402.697	-5891344.183	-5891354.514	ULCN_ultra
1.ORI	-5899691.115	-5899661.493	-5899601.413	-5899565.743	UCLN_dates
1.PRE	-5888139.985	-5888129.886	-5888082.134	-5888038.053	ULCN_dates
2.ANT	-5892876.227	-5892894.924	-5892791.269	-5892804.654	ULCN_ultra
2.MED	-5920837.35	-5920732.774	-5919662.038	-5919658.136	UCLN_dates
3.ANT	-5887496.544	-5887506.036	-5887494.669	-5887505.841	ULCN_ultra
4.ANT	-5886031.423	-5886034.116	-5886025.578	-5886021.969	ULCN_dates
