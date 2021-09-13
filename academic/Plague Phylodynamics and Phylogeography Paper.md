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

A critical step in reconstructing the evolutionary history of an organism is exploring the degree of population or genetic structure [@scerri2018DidOurSpecies]. This structure develops as a populations subdivide and diversify in isolation, producing a pattern of lower diversity within groups and higher diversity between them. This knowledge can then be used to add nuance to phylogenetic analyses and interpretations, by explicitly modeling these unique evolutionary histories. However, there is little consensus concerning the genetic structure of _Y. pestis_ on a global scale, and it was recently proposed [@kutyrev2018PhylogenyClassificationYersinia] that our understanding of population structure should be revised according to the latest genomic data. 

We therefore began by estimating a maximum-likelihood phylogeny, using 601 global isolates including 540 modern (89.9%) and 61 ancient (10.1%) strains. In addition, two genomes of the outgroup taxa *[[Yersinia pseudotuberculosis\|Yersinia pseudotuberculosis]]* were included to root the tree. The alignment consisted of 10,249 variant positions exclusive to *[[Yersinia pestis|Y. pestis]]*, with 3,844 sites shared by at least two strains. Following phylogenetic estimation, we pruned the outgroup taxa from the tree to more closely examine the genetic diversity of *[[Yersinia pestis|Y. pestis]]*.

In Figure @fig:divtree_map_timeline, we contextualize the global phylogeny using three widely-used nomenclature systems: the major branches, metabolic biovars, and historical time periods.  In the following section, we compare and critique each system, identify any incongruent divisions and uncertainty, and explore an integrative approach for spatiotemporal analyses.

![The phylogenetic, temporal, and geographic distribution of _Yersinia pestis_ genomes. Top: The maximum-likelihood phylogeny. Middle: The timeline of collection dates. Bottom: The global geographic distribution.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/15ded0c/main/auspice/all/chromosome/full/filter5/ml/divtree_map_timeline.png){#fig:divtree_map_timeline width=90%}

<div style="page-break-after: always;"></div>


#### Biovar

The oldest system to date is the biovar nomenclature, which uses metabolic differences to define population structure. *[[Yersinia pestis|Y. pestis]]* can be categorized into four classical biovars: *antiqua* (ANT), *medievalis* (MED), *orientalis* (ORI), and *microtus*/*pestoides* (PE) [@devignat1951VarietesEspecePasteurella; @zhou2004ComparativeEvolutionaryGenomics]. Non-classical biovars have also been introduced, such as the *intermedium* biovar (IN), which reflects a transitional state from *antiqua* to *orientalis* [[Li 2009 Genotyping Phylogenetic Analysis\|[@li2009GenotypingPhylogeneticAnalysis]]]. The biovar system is simple in application, as it largely focuses on two traits: the ability to ferment glycerol and reduce nitrate [[Zhou 2004 Comparative Evolutionary Genomics\|[@zhou2004ComparativeEvolutionaryGenomics]]]. However, this simplicity is offset by the growing recognition of regional inconsistencies in metabolic profiles [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia]]], which weakens its broader applicability. This is further exacerbated by the sequencing of non-viable, ‘extinct’ *Y. pestis*, for which metabolic sub-typing is impossible [[Bos 2011 Draft Genome Yersinia\|[@bos2011DraftGenomeYersinia]]]. Researchers have responded to this uncertainty in a variety of ways, by creating pseudo-biovars (PRE) [[Rasmussen 2015 Early Divergent Strains\|[@rasmussen2015EarlyDivergentStrains]]] or extrapolating existing ones [[Wagner 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]]. Other still have foregone the *biovar* nomenclature altogether in favor of locally-developed taxonomies [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia]]]. Despite extensive research, it remains unclear which metabolic traits, if any, can be used to classify *[[Yersinia pestis|Y. pestis]]* into distinct populations at a global scale.

#### Major Branch

In contrast to the biovar nomenclature which emphasizes phenotype, the major branch nomenclature focuses on the evolutionary relationships between strains. This system divides the global phylogeny of *[[Yersinia pestis\|Y. pestis]]* into populations according to their relative position to the “Big Bang” polytomy  [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation]]]. All lineages that diverged prior to this polytomy are grouped into Branch 0 and those diverging after form Branches 1-4. Because this multifurcation plays such a central role in this system, there is great interest in estimating its timing and geographic origins [[Green 2020 How Microbe Becomes\|[@green2020HowMicrobeBecomes]]]. However, the epidemiological significance of the “Big Bang” polytomy remains unclear, as no definitive phenotype has been identified that correlates with the observed branching pattern [@cite]. While the major branch system excels at reconstructing the evolutionary relationships between candidate populations, it struggles to connect these relationships to other biological changes.

#### Time Period

As previously mentioned, the sequencing of ancient *[[Y. pestis]]* poses a problem for classification, as direct metabolic testing is impossible for these non-viable samples. Ancient DNA researchers thus use an alternative strategy, by incorporating contextual evidence such as the collection date or associated time period. The known genetic diversity of *[[Y. pestis]]* has been most commonly divided into four time periods: the Bronze Age (3rd - 1st millenium BCE) [[Rasmussen 2015 Early Divergent Strains\|[@rasmussen2015EarlyDivergentStrains]]] , the First Pandemic, (6th - 8th century CE) [[Wagner 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]], the Second Pandemic (14th - 18th century CE) [[Spyrou 2019 Phylogeography Second Plague\|[@spyrou2019PhylogeographySecondPlague]]], and the Third Pandemic (19th - 20th century CE) [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation]]]. 

The key strength of this nomenclature is that it provides an excellent foundation for interdisciplinary discourse. However, this system runs the risk of grouping unrelated populations, as contemporaneous strains have been observed to have distinct evolutionary histories [[Spyrou 2018 Analysis 3800-year-old Yersinia\|[@spyrou2018Analysis3800yearoldYersinia]]]. Furthermore, there is growing awareness of the temporal overlap of the Second and the Third Pandemics. Previously, the temporal extents of these events were mutually exclusive, dating from the 14th to 18th century, and the late 19th to mid-20th century respectively [@gage2005NaturalHistoryPlague]. Recent historical scholarship has contested this claim, and demonstrated that these constraints are a product of a Eurocentric view of plague [[Varlik 2014 New Science Old\|[@varlik2014NewScienceOld]]]. The Second Pandemic is now recognized to have extended into at least the 19th Century  [@bolanos2019OttomansGlobalCrises; @varlik2020PlagueThatNever] and the Third Pandemic is hypothesized to have began as early as the 18th century in southern China [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]].  Unfortunately, this period of overlap remains genomically unsampled, thus it is unclear where exactly to draw a genetic distinction, if it even exists, between these pandemic events.

Another limitation of this system is that several populations are curiously excluded from the time period nomenclature which emphasizes historically documented pandemics. For example, Branch 2 populations emerged at the same time as, but separate from, the Second Pandemic and have been associated with high mortality epidemics [[Eroshenko 2021 Evolution Circulation Yersinia\|[@eroshenko2021EvolutionCirculationYersinia]]]. In particular, the *medievalis* population (2.MED) has spread throughout Asia (Figure @fig:divtree_map_timeline) and was observed to have the fastest spread velocity of any *[[Yersinia pestis|Y. pestis]]* lineage [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]]. Given this epidemiological significance, it is surprising that Branch 2 populations have been largely overlooked in the pandemic taxonomy of *[[Yersinia pestis|Y. pestis]]*. As ancient DNA sampling strategies expand in geographic scope, it will be important to consider how to adapt and expand the historical period nomenclature to encompass this new diversity.

#### Uncertainty

In light of this uncertainty and inconsistencies, no classification system comprehensively represents  the global population structure of *[[Yersinia pestis|Y. pestis]]*. Instead, integrative approaches have been previously used in large comparative studies of *[[Yersinia pestis|Y. pestis]]* [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]]. We therefore take the intersection of the three taxonomic systems discussed previously, to define 12 populations for statistical analysis (Figure @fig:divtree_map_timeline Legend). In the following sections, we highlight the novel insight and issues that arise when this population structure is incorporated into spatiotemporal analysis.

### Phylodynamics {.page_break_before}

A long-standing line of inquiry in plague phylogenetics has been estimating evolutionary rates in order to date internal nodes. Key areas of the phylogeny that have been intensively researched are the first emergence of _[[Yersinia pestis|Y. pestis]]_ in human populations [@rasmussen2015EarlyDivergentStrains], the "Big Bang" polytomy [@green2020HowMicrobeBecomes], and the onset of past pandemics [@bos2011DraftGenomeYersinia; @cui2013HistoricalVariationsMutation; @wagner2014YersiniaPestisPlague]. Recent technological advancements, such as ancient DNA sequencing and new molecular clock methods, have enabled researchers to reach further back in time with increasingly complex models. But despite this intensive interest and methodological advancement,  _[[Yersinia pestis\|Y. pestis]]_ remains notoriously difficult to model using a molecular clock approach. 

This difficulty can largely be attributed to the substantial rate variation that has been documented across the phylogeny of *[[Yersinia pestis\|Y. pestis]]* [@cui2013HistoricalVariationsMutation; @spyrou2019PhylogeographySecondPlague]. As a result, considerable debate has emerged over whether *[[Yersinia pestis|Y. pestis]]* has absolutely no temporal signal [[Wagner et al. 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]], or if populations have such distinct rates that a species-wide signal is obscured [[Spyrou 2019 Phylogeography Second Plague\|[@spyrou2019PhylogeographySecondPlague;]] [[Duchene 2016 Genome-scale Rates Evolutionary\|@duchene2016GenomescaleRatesEvolutionary]]]. This uncertainty has produced radically different temporal models between studies, with node dates shifted by as much as several millennia [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Rasmussen 2015 Early Divergent Strains\|@rasmussen2015EarlyDivergentStrains]]]. Thus a comprehensive understanding of plague's molecular clock, or lack thereof, is necessary before we can begin to untangle when and where this disease appeared in the past.

#### Rate Variation

In light of this evolutionary debate, we began our temporal analysis by exploring the extent of rate variation present in our updated genomic dataset, which is notably larger and more diverse than those used in previous studies [@spyrou2019PhylogeographySecondPlague]. Given this expanded diversity, it is unsurprising that a root-to-tip regression on collection date reproduces the finding that substitution rates in *[[Yersinia pestis|Y. pestis]]* are poorly represented by a simple linear model or "strict clock" (Figure @fig:rtt). While there is a statistically significant relationship between collection date and genetic distance to the root (P-value=4.959 x 10<sup>-13</sup>), an extremely low [[Coefficient of Determination\|coefficient of determination]] (R<sup>2</sup>=0.09) indicates there is tremendous variation that is not accounted for. 

Thus far, the hypotheses proposed to explain this variation have primarily focused on ecological processes, such as the cycling between endemic and epidemic phases [@cui2013HistoricalVariationsMutation] and geographic expansions over large distances [Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]. However, we argue that several methodological factors must first be taken into account, before investigating more complex ecological factors such as host and landscape. 

#### Time Dependency

One striking factor that is methodological in nature is the [[Time Dependency of Molecular Rate Estimates|time dependency of molecular rates]]. In Figure @fig:rtt, we show how rate variation in _Yersinia pestis_ correlates with the sampling time frame, in which populations sampled over several millennia (Bronze Age) have less variation than those sampled over multiple centuries (Second Pandemic) or decades (*medievalis*). This correlation is a well-known and widely-documented phenomenon in many organisms [[Ho 2005 Time Dependency Molecular\|[@ho2005TimeDependencyMolecular]]] and occurs due to two conflicting signals: a slower, long-term [[Substitution Rate|substitution rate]] combined with a higher, short-term [[mutation rate]]. 

Separating out these signals can be extremely challenging and failure to do so can have significant consequences when estimating and interpreting a molecular clock. Of particular concern for epidemiological investigations is the risk of artificially inflating the substitution rate due to transient mutations, which will lead to underestimating internal node dates. With regards to plague genomics, this may result in incorrect molecular dates linked to key historical events, such as the emergence of pandemic populations. Because of this risk, we first evaluate the presence of spurious mutations in our dataset before attempting to estimate a molecular clock model.

<div style="page-break-after: always;"></div>

![Rate variation in _Yersinia pestis_ as observed through a regression of root-to-tip distances on collection date. Top: A species-wide model using all genomes from the maximum-likelihood phylogeny. Middle: Population-specific models based on extracted subtrees from the phylogeny. Bottom: The time-dependency of population-specific rate variation on the sampling time frame. ](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/5a924bf6/main/iqtree_stats/all/chromosome/full/filter5/rtt.png){#fig:rtt width=100%}

<div style="page-break-after: always;"></div>

#### Slow, Long-Term Substitution Rate

_[[Yersinia pestis\|Y. pestis]]_ is particularly susceptible to the time-dependency of molecular rates, as it has one of the slowest substitution rates observed among bacterial pathogens [[Duchene 2016 Genome-scale Rates Evolutionary|[@duchene2016GenomescaleRatesEvolutionary]]]. The substitution rate of _[[Yersinia pestis|Y. pestis]]_ has previously been estimated to range from 1 x 10<sup>-8</sup> to 2 x 10<sup>-8</sup> substitutions/site/year [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]], or 1 substitution every 10 to 25 years. In application, this means that  _[[Y. pestis]]_ lineages often cannot be differentiated until multiple decades have passed, a concept generally referred to as the phylodynamic threshold [@duchene2020TemporalSignalPhylodynamic].

A historical example of this can be seen during the Second Pandemic, where isolates dated to the medieval [[Black Death]] (1348-1353) are nearly indistinguishable clones (Figure @fig:rtt). A modern example is the *medievalis* population, where the youngest samples (2010s) have diverged little compared to those from a century prior (1910s). This highlights a significant limitation and cautionary note for _[[Yersinia pestis|Y. pestis]]_ phylogenetics, as comparisons over short time scales (10 to 100 years) may have limited resolving power.  Furthermore, the little phylogenetic signal that accumulates in the population may be easily obscured or biased by spurious mutations in a single sample. 

#### High, Short Term Mutation Rate

The *medievalis* population is an extreme example of mutational bias, as several samples collected between 1970 and 1980 are exceptionally divergent (Figure @fig:rtt). This short-term diversity is largely due to mutations observed in only a single isolate, which manifest as long terminal branches in the maximum-likelihood phylogeny (Figure @fig:divtree_map_timeline, Figure @fig:long_branches). The presence of transient mutations, or long branches, is not isolated to the *medievalis* population and also strongly impacts the *pestoides* ([[0.PE]]), *intermedium* ([[1.IN]]), and *orientalis* ([[1.ORI]]) populations (Figure @fig:meanRate_stdev_tmrca). Given the extensive presence of these apparent outliers, inclusion or exclusion of these samples may have profound impacts on spatiotemporal analyses. Specifically, these populations may appear to have more rate acceleration events, a faster rate of spread, and unexpectedly young node dates.

#### Species-Wide Molecular Clock

As the root-to-tip regression revealed poor support for a strict clock (Figure @fig:rtt), our next step was modeling the observed rate variation using relaxed clocks. To investigate the degree of temporal structure in _Y. pestis_, we performed a Bayesian evaluation of temporal signal (BETS) test [@duchene2020BayesianEvaluationTemporal]. In brief, this method compares the likelihoods of two different phylogenetic models, one where the true collection dates are used and the other where all collection dates are assumed to be contemporaneous. A comparison of the model likelihoods, or Bayes factors, is then used to assess the degree of temporal signal in the dataset.

Unfortunately, a BETS test was inconclusive when attempting to fit a clock model to all _Y. pestis_ populations combined. The Bayesian analysis exhibited poor sampling of the clock parameters, for both a strict and relaxed clock, even when attempting to reduce sources of variation such as decreasing the number of genomes, using fixed tip dates, and fixing the tree topology. This observation is consistent with previous analyses [[Wagner 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]] where robust estimates of model parameters could not be estimated, thus leading to the conclusion that *[[Yersinia pestis|Y. pestis]]* lacks temporal signal. However, as other studies have suggested data composition is a strong determinant of temporal signal [[Duchene 2016 Genomescale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]] we then repeated the BETS test by modeling each of the 12 populations of _Y. pestis_ in isolation.

#### Population-Specific Molecular Clocks

In contrast to the species-wide model, separating the genomic dataset by population dramatically stabilized the Bayesian analysis. All clock model parameters were well-sampled with effective sample sizes (ESS) greater than 200 and temporal signal detected in 9 out of 12 populations (Figure @fig:meanRate_stdev_tmrca, Table @tbl:bets). However, this improved model performance came at the cost of model accuracy. Without the calibrating influence of ancient DNA samples, the modern populations were frequently estimated to have dates associated with their most recent common ancestor (MRCA) that violated the ancestor-descendant relationships present in the maximum-likelihood phylogeny (Figure @fig:meanRate_stdev_tmrca, Figure @fig:divtree_map_timeline). Thus despite having measurable temporal signal and objectively good model performance according to Bayesian criteria, the population-specific models were highly incongruent with each other. In the following sections, we interpret these incongruencies in light of the time-dependency of molecular rates, and discuss their ramifications.

![The 95% HPD estimates of the substitution rate and the date of the most recent common ancestor (MRCA) by population. Each distribution is annotated with the peak value. ](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/bb508ce/main/beast/all/chromosome/clade/log/meanRate_stdev_tmrca.png){#fig:meanRate_stdev_tmrca width=90%}

#### Sampling Time Frame

The time-dependency of molecular rates

For example, all clock model parameters appeared to be robust according to objective Bayesian criteria, such as the degree of chain mixing and ESS scores. However, ... had dates for the most recent common ancestor (MRCA) that violated the ancestor-descendant relationships present in the maximum-likelihood phylogeny. For example, the root of the *pestoides* biovar ([[0.PE]]) is ancestral to the First Pandemic population ([[0.ANT4]]) and thus must pre-date the 6<sup>th</sup> century. Instead, the MRCA of the *pestoides* population was dated to approximately 1814. Similarly, the [[0.ANT]] population is also ancestral to the First Pandemic, but has an estimated root date of 1698. Finally, the *intermedium* ([[1.IN]]) population is ancestral to the Third Pandemic population ([[1.ORI]] biovar and yet their root node dates are contemporaneous (1882 and 1885 respectively).

To some extent, these inconsistencies can be explained by the presence of transient mutations. The populations with the five highest mean substitution rates and standard deviations also have the five highest number of long, external branches ([[0.PE]],  [[2.MED]], [[2.ANT]], [[1.ORI]], [[1.IN]]) As discussed previously, a higher prevalence of transient mutations can lead to artificially inflated substitution rates rates and estimated node dates that are too young. By this logic, we caution that node dates associated with these populations should be treated as highly suspect, and likely underestimates of the true divergence dates.

- Accurate clock model estimates for _Y. pestis_ require long-term heterochronous sampling. On the order of multiple centuries. More exact estimates of the phylodynamic threshold could be 
 

#### Rate Overestimation

The first finding is that several populations have anomalously high substitution rates, namely the *pestoides* ([[0.PE]]) and *medievalis* ([[2.MED]]) biovars. As previously mentioned, this pattern may be explained by a high number of transient mutations. Indeed, the five populations with the highest number of long terminal branches ([[0.PE]], [[2.MED]], [[1.ORI]], [[1.IN]], [[2.ANT]]), have the five highest mean rates and standard deviations. Furthermore, two of these populations ([[1.IN]], [[2.ANT]]) have no detectable temporal signal. As discussed previously, if these inflated rates are due to spurious mutations rather than fixed substitutions, internal node dates will be unexpectedly young. Fortunately, this can be critiqued using the branching order of the maximum-likelihood phylogeny, as many of these populations are not monophyletic, and have ancestor-descendant relationships between them.

The most striking example of inconsistent node dating is the *pestoides* biovar ([[0.PE]]). The date of this population's root node, or most recent common ancestor (MRCA), was estimated at approximately 1814. However, this date is topologically inconsistent, as the root of the *pestoides* population falls ancestral to the Plague of Justinian (6<sup>th</sup> century) and thus must pre-date this event (Figure @fig:divtree_map_timeline). Similarly, the *intermedium* ([[1.IN]]) population falls ancestral to the *orientalis* biovar ([[1.ORI]]) and yet their root node dates are contemporaneous (1882 and 1885 respectively). The remaining two possible outliers, [[2.MED]] and [[2.ANT]], are monophyletic clades and thus have no descendant populations to serve as an upper bound. But we cautiously propose that the root  dates of these two populations, 1796 and 1798 respectively, should be treated as highly suspect and likely an underestimate of the true divergence dates.

This means that 68% of the phylogeny (411/601  genomes) has unreliable clock estimates. So where does that leave us?

Without the calibrating influencing of ancient DNA samples or the larger phylogeny, the rates and dates associated with the *pestoides* biovar should be treated as highly suspect.

> Should be very cautious trying to date inter-population nodes, ie. the Big Bang Polytomy. Because we don't fully understand how the rate changes in between them.


#### A New Global Rate

The second finding is that substitution rates in _Y. pestis_ have been previously underestimated. The mean substitution rate we estimated from all populations combined, which was highly unstable, was 1.6 x 10<sup>-8</sup>, which falls within published range of 1 to 2 x 10<sup>-8</sup>. However, no _Y. pestis_ population was observed to have a mean substitution rate this slow. Instead ranged from 3.6 x 10<sup>-8</sup> during the First Pandemic ([[0.ANT4]] to 6.16 x 10<sup>-7</sup> in the *pestoides* biovar ([[0.PE]]). This study therefore reports the substitution rate of *[[Yersinia pestis|Y. pestis]]* to be much higher than previously thought and more comparable to bacteria such as *[[Mycobacterium tuberulcosis]]* [[Duchene 2016 Genome-scale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]].

As mentioned previously, inaccurate substitution rates have important consequences for node-dating. Specifically, underestimating the global rate leads to overestimating the age of the MRCA.

### Phylogeography {.page_break_before}


## Conclusions {.page_break_before}

## Methods {.page_break_before}

## References {.page_break_before}

<div id="refs"></div>

## Supplementary Information   {.page_break_before}

![The distribution of external branch lengths across the maximum-likelihood phylogeny. The threshold to be considered a long external branch is set at 1e-5 substitutions/site.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/f2ff841/main/iqtree_stats/all/chromosome/full/filter5/long_branches.png){#fig:long_branches width=50%}

| Population |  N  | Time Span (Years) |  Best Model   | Bayes Factor | Strict Clock No Dates | Strict Clock Dates | Relaxed Clock No Dates | Relaxed Clock Dates |
|:----------:|:---:|:-----------------:|:-------------:|:------------:|:---------------------:|:------------------:|:----------------------:|:-------------------:|
|   1.ORI    | 117 |        118        | Relaxed Clock |      36      |       -5899691        |      -5899661      |        -5899601        |      -5899566       |
|    1.IN    | 39  |        54         |      --       |     -10      |       -5891399        |      -5891403      |        -5891344        |      -5891355       |
|   1.ANT    |  4  |        50         | Relaxed Clock |      13      |       -5882596        |      -5882587      |        -5882595        |      -5882582       |
|   1.PRE    | 40  |        530        | Relaxed Clock |      44      |       -5888140        |      -5888130      |        -5888082        |      -5888038       |
|   2.MED    | 116 |        106        | Relaxed Clock |      4       |       -5920837        |      -5920733      |        -5919662        |      -5919658       |
|   2.ANT    | 54  |        110        |      --       |     -13      |       -5892876        |      -5892895      |        -5892791        |      -5892805       |
|   4.ANT    | 11  |        38         | Relaxed Clock |      4       |       -5886031        |      -5886034      |        -5886026        |      -5886022       |
|   3.ANT    | 11  |        56         |      --       |     -11      |       -5887497        |      -5887506      |        -5887495        |      -5887506       |
|   0.ANT4   | 12  |        666        | Relaxed Clock |      6       |       -5889526        |      -5889520      |        -5889502        |      -5889496       |
|   0.ANT    | 103 |        72         | Relaxed Clock |    13298     |       -5896014        |      -5896016      |        -5895880        |      -5882582       |
|    0.PE    | 85  |        64         | Relaxed Clock |      12      |       -5945603        |      -5945574      |        -5944627        |      -5944614       |
|   0.PRE    |  8  |       1250        | Relaxed Clock |     83*      |       -5892926        |      -5892843      |        -5892739        |      -5892741       |

Table: Model selection and log marginal likelihoods obtained from a Bayesian evaluation of temporal signal (BETS) test. \*0.PRE had temporal signal according to a strict clock, although the relaxed clock with no dates model had the highest likelihood. {#tbl:bets}


