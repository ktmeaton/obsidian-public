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
  - name: [[Ann Carmichael]]
    affiliations: [
      "[[Indiana University Bloomington]]"
    ]	
  - name: [[Nükhet Varlık]]
    orcid: 0000-0001-6870-5945
    affiliations: [
      "[[University of South Carolina]]"
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
title: Plagued by a cryptic clock
subtitle: New insights from the global phylogeny of *[[Yersinia pestis|Y. pestis]]* 
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

## Introduction

Plague has an impressively long and expansive history as a human disease. The earliest evidence of the plague bacterium, *[[Yersinia pestis]]*, comes from [[Ancient DNA\|ancient DNA]] studies, dating its emergence to at least the Neolithic [[Andrades Valtuena et al. 2017 Stone Age Plague\|[@andradesvaltuena2017StoneAgePlague; ]] [[Rascovan et al. 2019 Emergence Spread Basal\|@rascovan2019EmergenceSpreadBasal]]]. Since then, *[[Yersinia pestis\|Y. pestis]]* has traveled extensively due to ever-expanding global trade networks  and the ability to infect a wide variety of mammalian hosts [[Yue 2017 Trade Routes Plague\|[@yue2017TradeRoutesPlague;]] [[Perry 1997 Yersinia Pestis Etiologic\|@perry1997YersiniaPestisEtiologic]]]. Few regions of the ancient and modern world remain untouched by this disease, as plague has an established presence on every continent except Oceania [[WHO 2017 Plague\|[@who2017Plague]]].

Accompanying this prolific global presence is unnervingly high mortality. The infamous medieval Black Death is estimated to have killed more than half of Europe's population [[Benedictow 2004 Black Death 1346-1353\|[@benedictow2004BlackDeath13461353]]]. This virulence can still be observed in the post-antibiotic era, where case fatality rates range from 22-71% [[@bertherat2019PlagueWorld]]. As a result, plague maintains its status as a disease that is of vital importance to current public health initiatives.

This high priority disease status is unsurprising given that *[[Yersinia pestis\|Y. pestis]]* is a member of the [[Enterobacteriaceae]]  family. This family includes other notable [[Pathogen\|pathogens]] such as *[[Escherichia coli]]* and *[[Salmonella typhi]]* that are commonly transmitted by contaminated food and water. In comparison, the [[Plague\|plague]] bacterium is unique among this family due to a striking difference in [[Host\|host]] habitat and [[Transmission\|transmission]]. *[[Yersinia pestis\|Y. pestis]]* commonly resides in the blood of its mammalian hosts and can be transmitted to new hosts through an infectious [[Flea\|fleabite]] [[Gage 2006 Recent Trends Plague\|[@gage2006RecentTrendsPlague]]]. Furthermore, this unique mechanism evolved relatively recently, possibly around the 1st millennium BC [[Rasmussen 2015 Early Divergent Strains|[@rasmussen2015EarlyDivergentStrains]]], long after *[[Yersinia pestis|Y. pestis]]* emerged as a monomorphic clone of the enteric pathogen *[[Yersinia pseudotuberculosis]]* [[Achtman 1999 Yersinia Pestis Cause\|[@achtman1999YersiniaPestisCause]]]. 

While the population structure of *[[Yersinia pseudotuberculosis\|Y. pseudotuberculosis]]* is well-defined, [[Laukkanen-Ninios 2011 Population Structure Yersinia\|[@laukkanen-ninios2011PopulationStructureYersinia;]] [[Seecharran 2017 Phylogeographic Separation Formation\|@seecharran2017PhylogeographicSeparationFormation]]], the phylogenetic patterning of *[[Yersinia pestis|Y. pestis]]* remains cryptic. Populations of *[[Yersinia pestis|Y. pestis]]* have been historically categorized according to a a vast array of historical, ecological, biochemical, and molecular characteristics. As a result, disparate sub-typing systems have emerged over the years to differentiate lineages of plague [[[Qi 2016 Taxonomy Yersinia Pestis\|[@qi2016TaxonomyYersiniaPestis]]].  It has thus been argued that the taxonomy of *[[Yersinia pestis|Y. pestis]]* should be revised and consolidated according to the latest global phylogenetic analysis [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia]]]. 

Unfortunately, there are a number of obstacles that have stalled large-scale phylogenetic analysis. The first challenge is data availability, both in terms of the genomic sequences, as well as the metadata required for interpretation. Genomic sampling of *[[Yersinia pestis|Y. pestis]]* has recently intensified
 [[Zhou 2020 EnteroBase User Guide\|[@zhou2020EnteroBaseUserGuide]]], thus providing exceptional new datasets for statistical inference. This intensive sampling has produced over 1000  *[[Yersinia pestis|Y. pestis]]* genomes that are now publicly available, with tremendous diversity spanning five continents and 5000 years of human history. Unfortunately, the majority of these genomic records lack curated metadata, such as sampling date and location, which are crucial variables in testing population structure.
 
 The second major obstacle is an apparent lack of temporal structure in *[[Yersinia pestis|Y. pestis]]*. Detecting temporal signal and estimating a molecular clock model are general pre-requisites for sophisticated methods of quantifying population structure [[volz2020IdentificationHiddenPopulation\|[@volz2020IdentificationHiddenPopulation]]].
 However, there has been significant debate concerning whether *[[Yersinia pestis|Y. pestis]]* can be appropriately modeled using the available clock methods [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Wagner et al. 2014 Yersinia Pestis Plague|@wagner2014YersiniaPestisPlague;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]]. 
 To some extent, this debate can be explained by different *[[Yersinia pestis|Y. pestis]]* datasets, which have been shown to produce dramatically different patterns of temporal signal [[Duchene 2016 Genome-scale Rates Evolutionary|[@duchene2016GenomescaleRatesEvolutionary]]]. Therefore, it is uncertain whether the new intensively sampled genomes will bring clarity or greater uncertainty.

In response to these debates and obstacles, this paper proposes a theoretical and methodological shift in plague genomics. Rather than conceptualizing *[[Yersinia pestis\|Y. pestis]]* as a conglomerate species, we highlight how novel insight emerges through analyzing *[[Yersinia pestis\|Y. pestis]]* sub-populations in isolation. To accomplish this shift in discourse, we focus on four objectives, specifically to:

1. Curate and contextualize the most recent *[[Yersinia pestis\|Y. pestis]]* genomic metadata.
2. Review and critique our current understanding of *[[Yersinia pestis\|Y. pestis]]* population structure.
3. Conduct robust and nuanced molecular clock analyses.
4. Identify key areas of phylogenetic uncertainty to be expanded on in future research.

Progress towards these key objectives is anticipated to benefit both prospective studies of plague, such as environmental surveillance and outbreak monitoring, and retrospective studies, which seek to date emergence and spread of past pandemics.

## Results and Discussion  {.page_break_before}

### Phylogeny

A maximum-likelihood phylogeny was estimated from 603 genomes (600 *[[Yersinia pestis|Y. pestis]]* isolates,  1 *[[Yersinia pestis|Y. pestis]]* reference, and 2 *[[Y. pseudotuberculosis]]* outgroup taxa). Following removal of the outgroup taxa, the alignment was composed of 10,249 variant positions with 3,844 sites shared by at least two genomes. In Figure @fig:divtree_branch-major, the maximum-likeilhood phylogeny is visualized alongside the four major taxonomic systems currently used to define the population structure of *[[Yersinia pestis|Y. pestis]]*. These include the major phylogenetic branches, biovars, subspecies, and historical time periods/pandemics.

![
The maximum-likelihood phylogeny depicts the global population structure of *[[Yersinia pestis\|Y. pestis]]*. The divisions of the four major sub-typing systems are provided.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/e0542fd/main/auspice/all/chromosome/full/filter5/divtree_branch_major.png){#fig:divtree_branch-major}

### Population Structure

A comparison of sub-typing systems reveals great uncertainty with regards to *[[Yersinia pestis|Y. pestis]]* population structure. The global phylogeny of *[[Yersinia pestis|Y. pestis]]* can be divided into ```major branches``` according to the relative position of the [[Big Bang Polytomy\|"big bang" polytomy]] [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation]]]. All lineages that diverged prior to this multifurcation are grouped into ```[[Branch 0]]``` and those emerging after are the monophyletic clades ```Branches 1-4```. Because the [[Big Bang Polytomy\|"big bang" polytomy]] plays such a central role in this system, there is growing interest in estimating its timing and geographic origins [[Green 2020 How Microbe Becomes\|[@green2020HowMicrobeBecomes]]]. However, an inability to identify phenotypes distinguishing these ```major branches``` poses a significant challenge, and thus the exact epidemiological significance of the [[Big Bang Polytomy\|"big bang" polytomy]] remains unclear.

An example of this challenge can be seen in the population structure defined by the ```biovar``` system. *[[Yersinia pestis|Y. pestis]]* can be categorized using a suite of metabolic properties into the classical biovars: *antiqua* (```ANT```), *medievalis* (```MED```), *orientalis* (```ORI```), and *microtus*/*pestoides* (```PE```) [[Devignat 1951 Varietes Espece Pasteurella\|[@devignat1951VarietesEspecePasteurella;]] [[Zhou 2004 Comparative Evolutionary Genomics\|@zhou2004ComparativeEvolutionaryGenomics;]] [[Li 2009 Genotyping Phylogenetic Analysis\|@li2009GenotypingPhylogeneticAnalysis]]]. While these divisions don't fully contradict the ```major branches```, they do considerably shift the defining boundaries between *[[Yersinia pestis|Y. pestis]]* populations. 

To further complicate matters, researchers from the Commonwealth of Independent State (CIS) have observed biovar inconsistencies in plague foci surveillance [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia]]]. In response, the ```subspecies``` taxonomy was created to distinguish a main subspecies (*pestis*) that is highly virulent in humans with wide geographic spread, from five or more non-main subspecies that have limited geographic ranges and attenuated virulence in humans [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia]]]. The ```subspecies``` structure is highly convenient for laboratory diagnostics in the CIS, but struggles to differentiate the immense diversity represented by the larger *pestis* subspecies.

The challenge of categorizing plague by metabolism is, unsurprisingly, also an obstacle when analyzing extinct lineages. Ancient DNA (aDNA) researchers have opted to either extrapolate an existing biovar designation [[Wagner et al. 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]] or create a new one [[Rasmussen 2015 Early Divergent Strains\|[@rasmussen2015EarlyDivergentStrains]]]. However, it is more common in aDNA studies to define population structure by time period and associations with historically documented pandemics. The known genetic diversity of *[[Yersinia pestis|Y. pestis]]* thus far has been broadly grouped into four time periods and three pandemics (Figure @fig:timeline).

![
The temporal distribution of *[[Yersinia pestis\|Y. pestis]]* genomes.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/timeline_all.png){#fig:timeline}

The [[First Pandemic]] (6th - 8th century CE) began with the [[Plague of Justinian]] and proceeded to devastate the Byzantine Empire of the Mediterranean world [@cite]. The [[Late Antiquity]] clade found within ```[[Branch 0]]``` (```[[0.ANT4]]```) is associated with this pandemic given spatiotemporal overlap of the skeletal remains from which this lineage was retrieved [[Wagner et al. 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague;]] [[Keller 2019 Ancient Yersinia Pestis\|@keller2019AncientYersiniaPestis]]].  Similarly, the [[Medieval\|medieval]] clade ```[[1.PRE]]``` from ```[[Branch 1]]``` is thought to derive from the [[Second Pandemic\|Second Pandemic of Plague]]. This well-documented pandemic began with the infamous [[Black Death]] and swept across most of Eurasia from the 14th to 19th centuries [@cite]. The third documented pandemic of plague, alias the *Modern Pandemic*, spread globally from the end of the [[18th Century]] and until the mid-[[20th Century]]. There is little dispute that a new lineage of plague emerging from [[Branch 1]] as biovar *orientalis* (```1.ORI```) was the causative agent of this pandemic. While the World Health Organization (WHO) declared the third pandemic over in 1950 [@cite], this lineage continues to re-emerge to cause localized epidemics such as the [[2010 plague in Peru]] [@cite] and the [[Madagascar Outbreaks of 2017]] [@cite].

While the pandemic clade nomenclature provides an excellent foundation for historical discussion, there are several emergent problems with this system. First is the growing awareness of the spatiotemporal overlap of the Second and the Third Pandemic [@cite]. Previously, the temporal extents of these events were mutually exclusive, dating from the 14th-18th century, and the 19th-20th century respectively. Recent historical scholarship has contested this claim, and demonstrated that these constraints are a product of a Eurocentric view of plague [@cite]. The Second Pandemic is now known to have extended into the 19th Century in parts of the Ottoman Empire, with the latest epidemics dating to 1819 [@cite]. Similarly, the Third Pandemic is now hypothesized to have began as early as 1772 in southern China [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]]. It remains unclear where to draw the distinction, if it even exists, between the Second and Third Pandemic.

Another limitation of the pandemic nomenclature is the complete disconnection of ```Branch 2``` to any historical pandemics. This is surprising given that several criteria of a pandemic pathogen are fulfilled by ```Branch 2``` lineages, namely extensive spread and virulence. ```Branch 2``` genomes of *[[Yersinia pestis|Y. pestis]]* have been collected from all throughout Eurasia, stretching from at least the Caucasus, to India, and to eastern China (Figure @fig:map_branch2). Furthermore, lineages of ```Branch 2``` have been associated with high mortality epidemics [[Eroshenko 2021 Evolution Circulation Yersinia\|[@eroshenko2021EvolutionCirculationYersinia]]] and were observed to have the highest spread velocity of any *[[Yersinia pestis|Y. pestis]]* clade [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]] As historical plague scholarship extends beyond the bounds of Western Europe, it will be important to consider the role these lineages played, and adjust nomenclature accordingly.

![The geographic distribution of *[[Yersinia pestis|Y. pestis]]* ```[[Branch 2]]```. (PLACEHOLDER)](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/e0d84a1/main/auspice/all/chromosome/full/filter5/2_map.PNG){#fig:map_branch2 style="border:1px solid black"}

However, a significant obstacle to understanding the global spread and virulence of past plagues lies in *[[Yersinia pestis|Y. pestis]]*'s weak host associations and a lack of geographic structure. Similar to its parent species, *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]*  [[Laukkanen-Ninios 2011 Population Structure Yersinia\|[@laukkanen-ninios2011PopulationStructureYersinia]]], *[[Yersinia pestis|Y. pestis]]* is capable of infecting a wide variety of mammalian hosts [@cite]. But while isolates of *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]* cluster by host group [[Williamson 2016 Genomic Insights Sustained\|[@williamson2016GenomicInsightsSustained]]], the host structure of *[[Yersinia pestis|Y. pestis]]* is cryptic (Figure @fig:divtree_host). Most clades are isolated from both humans and non-human animals, although the ancient lineages ```[[0.PRE]]```, ([[LNBA\|Bronze Age]]), ```[[0.ANT4]]``` (Late Antiquty) and ```[[1.PRE]]``` (Medieval/Early Modern) are exclusively associated with humans. However, this particular exception is largely due to sampling biases, as paleogenomic investigations have historically prioritized human skeletal remains over faunal remains [@cite].

![
The maximum-likelihood phylogeny of *[[Yersinia pestis\|Y. pestis]]* according to isolation host.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/5af901d/main/auspice/all/chromosome/full/filter5/divtree_host.png){#fig:divtree_host}


In addition to a cryptic host structure, the geographic patterning of *[[Yersinia pestis|Y. pestis]]*, or lack thereof, reflects a complex dispersal history (Figure @fig:map_all_branch-major). Many regions have been colonized by diverse strains of *[[Yersinia pestis|Y. pestis]]*. This diversity can be contemporaneous, such as endemic foci in the [[Caucausus]] and [[Western China]] (```[[0.PE]]```). Alternatively, this diversity may accrue over multiple centuries through distinct re-introductions and extinctions, as seen through historical clades in Europe (```[[0.ANT]]```, ```[[1.PRE]]```). In these examples, a relatively large amount of genetic diversity appears in a small geographic range (Figure @fig:mantel_all_branch-major). In contrast, regions such as the Americas have been colonized by a single strain of *[[Yersinia pestis|Y. pestis]]* (```[[1.ORI]]```) which shows a relatively small amount of genetic diversity over a tremendously large geographic range. 

This geographic complexity is unsurprising given that *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]*, the parent species of plague, also does not exhibit strong geographic structure. Outbreak strains of *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]* are particularly challenging to cluster, with non-outbreak lineages showing only slightly more geographic signal [[Williamson 2016 Genomic Insights Sustained\|[@williamson2016GenomicInsightsSustained]]]. In this line of reasoning, the patterning observed in Figure @fig:map_all_branch-major and @fig:mantel_all_branch-major likely reflects the complex ecology of plague which cycles between endemic reservoirs and epidemic periods.

![
The geographic distribution of *[[Yersinia pestis\|Y. pestis]]* genomes. 
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/augur/all/chromosome/full/filter5/map_all.png){#fig:map_all_branch-major}

![
Geographic distance vs. genetic distance. Statistical results come from a mantel test at α <= 0.05.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/mantel_all.png){#fig:mantel_all_branch-major}


However, it would be amiss to not acknowledge one of the largest caveats in genomic analyses, which is the issue of sampling bias. The geographic sampling strategy of *[[Yersinia pestis|Y. pestis]]* genomes (Figure @fig:map_all_branch-major) does not reflect the known distribution of modern plague [[Xu 2019 Historical Genomic Data\|[@xu2019HistoricalGenomicData]]]. The [[Over-Represented|over-sampling]] of [[East Asia]] has been previously described by [[Spyrou 2016 Historical Pestis Genomes|@spyrou2016HistoricalPestisGenomes]] and considerably drives the hypothesis that *[[Yersinia pestis\|Y. pestis]]* originated in [[China]] [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]]. This once established hypothesis is now in contention, as the most basal strains of *[[Yersinia pestis|Y. pestis]]* (Clades 0.PRE and 0.PE) have been isolated from all across [[Eurasia]]. 

The sampling strategy of ancient DNA also does not reflect the hypothesized distribution of ancient plague. Historical genomes of *[[Yersinia pestis\|Y. pestis]]* have primarily been collected from European archaeological sites, with the most heavily sampled region being Western Europe (See Figure @map_all_branch-major, [[1.PRE]]).

> **Kat's Notes:**<br>
> - This section lacks an explicit conclusion and a transition to the next section.

### [[Phylodynamics]] {.page_break_before}

#### Detecting Temporal Signal

Previous work has documented substantial rate variation both between and within clades of *[[Yersinia pestis|Y. pestis]]* [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]]. A [[Root to Tip Regression|root-to-tip regression]] on sampling date for the *full* dataset (N=601) reproduces this finding as the [[Coefficient of Determination\|coefficient of determination]] (R<sup>2</sup>) is extremely low at 0.09 (Figure @fig:rtt_all_branch-major). A  [[Bayesian Evaluation of Temporal Signal]] (BETS) also indicates poor support for a strict clock as the [[Coefficient of Variation\|coefficient of variation]] was consistently estimated to be greater than 1. Taken together, the [[Root to Tip Regression|root-to-tip regression]] and [[BETS]] analysis suggest that alternative clock models, such as the uncorrelated relaxed log normal (UCLN) model, should be preferred when accounting for the high degree of rate variation. 

![ [[Root to Tip Regression\|Root-to-tip regression]]. The solid line represents the linear model for the entire dataset. The dashed lines present linear models for clades with significant p values.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt_all_branch_major.png){#fig:rtt_all_branch-major width=75%}

However, the [[Bayesian Evaluation of Temporal Signal|BETS]] analysis exhibited poor sampling of the relaxed clock model parameters, even when using a fixed topology (Figure @fig:mean_rate_trace_kde). This suggests there may be too much [[rate variation]] to confidently estimate key parameters such as the mean [[Substitution Rate\|substitution rate]] and the time to the most recent common ancestor ([[MRCA|tMRCA]]). This observation is consistent with previous analyses [[Wagner 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]] where robust estimates of model parameters could not be estimated, thus leading to the conclusion that *[[Yersinia pestis|Y. pestis]]* lacks temporal signal. At the same time, other studies have suggested data composition is a strong determinant of temporal signal [[Duchene 2016 Genomescale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]] and thus we investigated alternative approaches.

![MCMC parameter estimation of the mean substitution rate for the reduced dataset (N=191). Left: Poor mixing of the MCMC Chain, Right: The resulting multimodal estimate of the rate.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/c12ba4b/main/beast/all/chromosome/prune/filter5/mean_rate_trace_kde.png){#fig:mean_rate_trace_kde width=75%}

To identify patterns in rate variation that may improve the clock model, we first performed visual inspection of the [[Root to Tip Regression\|root-to-tip regression]] residuals (Figure @fig:rtt_all_branch-major). 3/12 clades appeared to have temporal signal according to a linear model, namely the ancient clades isolated from human skeletal remains: ```[[0.PRE]]``` (Bronze Age),  ```[[0.ANT4]]``` (Late Antiquity), and ```[[1.PRE]]``` (Medieval/Early Modern). Indeed, when the [[Root to Tip Regression|root-to-tip regression]] was performed on clades in isolation, these three clades demonstrated strong evidence of strict-clock behavior (Table @tbl:rtt_statistics, Figure @fig:rtt_clades). A [[Bayesian Evaluation of Temporal Signal|BETS]] analysis by clade proved even more sensitive as temporal signal was detected in 7/12 clades (Table @tbl:bets_temporal_signal). Furthermore, for all clades with temporal signal, the [[Clock Model\|relaxed clock]] model (UCLN) had higher support than the strict clock. 

The ubiquitous support for a relaxed clock model was initially surprising, as the [[Root to Tip Regression\|root-to-tip regression]] suggested strict clock-like behavior in several clades. However, this disparity can largely be explained by the known statistical limitations of a [[Root to Tip Regression\|root-to-tip regression]] [[Duchene 2020 Bayesian Evaluation Temporal|[@duchene2020BayesianEvaluationTemporal]]] which assumes either 1) no temporal structure, or 2) temporal structure following a linear model. Thus, a [[Root to Tip Regression\|root-to-tip regression]] is strictly a test of the linear model, and will give no indication that other models are a better fit to the data, ie. a relaxed lognormal model. From this finding, we conclude that **a [[Root to Tip Regression\|root-to-tip regression]] is a poor statistical test of temporal signal in *[[Yersinia pestis|Y. pestis]]*,** and great caution should be taken in interpreting the associated statistics.


> **Kat's Notes:**<br>
> 1. Could I get finalized Bayes Factors for the full dataset and clades?<br>
> 2. Could I get log files for all clades, even those without temporal signal?

|   Clade    |  N  | SC Bayes Factor | UCLN Bayes Factor | Clock Model |
|:----------:|:---:|:---------------:|:-----------------:|:-----------:|
| [[1.ORI]]  | 117 |      29.6*      |       35.7*       |    UCLN     |
|  [[1.IN]]  | 39  |      -3.9       |       -10.2       |    UCLN     |
| [[1.ANT]]  |  4  |      8.9*       |       12.6*       |    UCLN     |
| [[1.PRE]]  | 40  |      10.1*      |       44.1*       |    UCLN     |
| [[2.MED]]  | 116 |       TBD       |        TBD        |     TBD     |
| [[2.ANT]]  | 54  |      -20.8      |       -13.7       |    UCLN     |
| [[4.ANT]]  | 11  |      -2.9       |       3.7*        |    UCLN     |
| [[3.ANT]]  | 11  |      -9.6       |       -11.4       |    UCLN     |
| [[0.ANT]]  | 103 |      -2.3       |       -6.5        |    UCLN     |
| [[0.ANT4]] | 12  |      5.3*       |       5.9*        |    UCLN     |
|  [[0.PE]]  | 83  |      -82.1      |       12.4*       |    UCLN     |
| [[0.PRE]]  |  8  |       TBD       |        TBD        |     TBD     | 

Table:  Temporal signal detection and clock model selection with [[Bayesian Evaluation of Temporal Signal]] (BETS) {#tbl:bets_temporal_signal}

#### Rate Variation  {.page_break_before}

Our approach of fitting nuanced models segregated by clade reveals that **the 'true' substitution rates of *[[Yersinia pestis|Y. pestis]]* may be much higher than previously thought.** Previous work estimated that *[[Yersinia pestis|Y. pestis]]* has one of the slowest observed substitution rates, around  1-2 x 10<sup>-8</sup>, which is on par with the exceptionally slow-evolving *[[Mycobacterium leprae]]* [[Duchene 2016 Genome-scale Rates Evolutionary|[@duchene2016GenomescaleRatesEvolutionary;]] [[Cui 2013 Historical Variations Mutation|@cui2013HistoricalVariationsMutation]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]]. The [[Bayesian Evaluation of Temporal Signal|BETS]] analysis on the non-segregated data, which was highly unstable, fell within this published range with a 95% HPD between 1.16 x 10<sup>-8</sup> and 1.95 x 10<sup>-8</sup>. However, this global rate is a considerable underestimate, as clades with detectable temporal signal ranged from 2.33 x 10<sup>-8</sup> to 7.70 x 10<sup>-7</sup> (Table @tbl:bets_rate_cov_tmrca, Figure @fig:substitution_rate_boxplot).

> **Kat's Notes:**<br>
> - [[0.PE]] appears to be an outlier, but wait for finalized logs.<br>
> - No differences with regards to rate/variation between pandemic and non-pandemic clades.<br>
>- I really want to see [[1.IN]], is there a progressive increase in rate along Branch 1?

It is interesting to note that several clades have distinctly different substitution rates (ie.non-overlapping estimates of the mean substitution rate in Figure @fig:substitution_rate_boxplot) and yet the relative amount of rate variation within a clade is similar (ie. overlapping coefficients of variation in Figure @fig:coefficient_of_variation_boxplot).

We hypothesize that outlier clades which are challenging to model (ex. [[2.MED]]) have artificially decreased estimates of the mean substitution rate in past studies. This study therefore reports the substitution rate of *[[Yersinia pestis|Y. pestis]]* to be much higher than previously thought and more comparable to bacteria such as *[[Mycobacterium tuberulcosis]]*.

|   Clade    |  N  |                 Substitution Rate                 | Coefficient of Variation |     tMRCA     |
|:----------:|:---:|:-------------------------------------------------:|:------------------------:|:-------------:|
|    All     | 191 |  1.16 x 10<sup>-8</sup> : 1.95 x 10<sup>-8</sup>  |       1.35 : 2.10        | -7400 : -3289 |
| [[1.ORI]]  | 117 |  1.04 x 10<sup>-7</sup> : 1.53 x 10<sup>-7</sup>  |       1.02 :  1.87       |  1802 : 1907  |
|  [[1.IN]]  | 39  |                        --                         |            --            |      --       |
| [[1.ANT]]  |  4  |  3.61 x 10<sup>-8</sup> : 9.63 x 10<sup>-8</sup>  |       0.00 : 2.12        |  1645 : 1889  |
| [[1.PRE]]  | 40  |  3.69 x 10<sup>-8</sup> : 5.90 x 10<sup>-8</sup>  |       1.22 : 3.24        |  995 : 1324   |
| [[2.MED]]  | 116 |  1.91 x 10<sup>-7</sup>, 3.01 x 10<sup>-7</sup>   |       2.23 : 3.50        |  1547 : 1867  |
| [[2.ANT]]  | 54  |                        --                         |            --            |      --       |
| [[4.ANT]]  | 11  |  3.59 x 10<sup>-8</sup> :  1.57 x 10<sup>-7</sup>  |       1.22 : 3.59        |  1847 : 1975  |
| [[3.ANT]]  | 11  |                        --                         |            --            |      --       |
| [[0.ANT]]  | 103 |                        --                         |            --            |      --       |
| [[0.ANT4]] | 12  |  2.33 x 10<sup>-8</sup> : 4.68 x 10<sup>-8</sup>  |       1.40 : 3.94        |   39 : 237    |
|  [[0.PE]]  | 83  | 4.32 x 10<sup>-7</sup> :   7.70 x 10<sup>-7</sup> |       1.70 : 2.78        |  1565 : 1892  |
| [[0.PRE]]  |  8  | 3.95 x 10<sup>-8</sup> : 6.48  x 10<sup>-8</sup>  |       0.84 : 3.13        | -3070 : -2776 |

Table:  Estimate variation on the rate and tMRCA based on the 95% HPD. {#tbl:bets_rate_cov_tmrca}

![Mean substitution rate uncertainty by clade.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/4a67df7c718b/main/beast/all/chromosome/clade/logs_noHyperPrior/substitution_rate.png){#fig:substitution_rate_boxplot}

![Coefficient of variation uncertainty by clade.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/4a67df7c718b/main/beast/all/chromosome/clade/logs_noHyperPrior/coefficient_of_variation.png){#fig:coefficient_of_variation_boxplot}

#### Node Dating

To evaluate the dates associated with ancestral events, we annotated the maximum likelihood phylogeny with the estimated tMRCAs for clades with temporal signal (Figure @fig:divtree_node_dating). When re-contextualized into the global phylogeny, the node dates are topologically non-conflicting, meaning that parent nodes correctly pre-date child nodes. The sole exception is the estimated divergence of modern [[0.PE]] which conflicts with the dates associated with the [[First Pandemic\|First]] and [[Second Pandemic]] clades. This conflict can be explained by several observations:

1. Clade [[0.PE]] has the largest amount of uncertainty concerning the substitution rate.
1. Clade [[0.PE]] has the greatest pairwise genetic distances, and longest root-to-tip distances to their MRCA.

>1. The single ancient sample of [[0.PE]] was excluded from the BEAST analysis! This was partly by mistake, as for other clades, I separated out the ancient and modern samples based on their drastically different sampling periods. But for [[0.PE]], there's only one ancient sample and it got dropped.

![The maximum likelihood phylogeny annotated with the 95% HPD on clade root date.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/206f481/main/auspice/all/chromosome/full/filter5/divtree_node-dating.png){#fig:divtree_node_dating}

This drastic improvement in model performance reveals four intriguing aspects about the evolution of *[[Yersinia pestis|Y. pestis]]*.

The first aspect is that **fitting a single clock model to the global phylogeny of *[[Yersinia pestis|Y. pestis]]* is not statistically supported**. This can be observed in the relative instability of the [[MCMC]] analyses on the *reduced*  dataset, which fails to converge in parameter space. In contrast, successfully fitting models on a clade-by-clade basis reveals that **<i>[[Yersinia pestis|Y. pestis]]</i> has more temporal signal than previously thought.** The observation that different populations have evolved at drastically different rates may explain the previous finding that the apparent structure in *[[Yersinia pestis\|Y. pestis]]* is dependent on dataset composition [[Duchene 2016 Genome-scale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]]. 


The final finding from constructing nuanced models concerns the outlier clades for which no detectable signal could be found, namely [[0.ANT]], [[2.ANT]], [[3.ANT]], [[2.MED]], and [[1.IN]]. The reason for this lack of signal is unclear, but one explanation may be that **these *[[Yersinia pestis|Y. pestis]]* populations are inappropriately separated based on the ```major branch``` and ```biovar``` systems**. We hypothesis that alternative strategies to subdivide these populations will yield greater insight, based on the methodological improvements demonstrated in this study.

### [[Phylogeography]] 

> **Kat's Notes**:
> 1. The root/basal clade is a bit "off" for [[1.ORI]], [[2.MED]], and [[1.PRE]]. This could be because: 
> - There is little temporal signal (ex. [[2.MED]]) or, 
> - The first divergence "should" be a multifurcation.
> 2.  Given the caveat of root placement, the tMRCAs are in the right range based on what we know from historical data.


#### The [[Third Pandemic]]: [[1.ORI]]

The geographic history of the [[Third Pandemic]] is characterized by radial expansions both between and within continents.  Several divergence events, including a multifurcation, are estimated to have occurred around the beginning of the 20th century, which is consistent with epidemiological reports on the global dispersal of modern plague. These early divergences are estimated to begin with a burst radiation of lineages dispersing out of China. Several of these migrations are widely supported in the literature, such as the single entry of *[[Yersinia pestis|Y. pestis]]* into North America in the early 20th Century.

![[1.ORI Bayesian Phylogeography.png]]{#fig:1.ORI_timetree_continent}

#### [[Medievalis]]: [[2.MED]]

##### Country Resolution

![[2.MED Bayesian Phylogeography.png]]

##### Province Resolution

![[2.MED Distribution and Tree.png]]

> *"In the late 19th and early 20th centuries, there were outbreaks of plague with high mortality rates in the Caspian Sea region"* (2) [[@eroshenko2021EvolutionCirculationYersinia]]
> Last epizootics recorded in 1940-1950s
> *"At the beginning of the second half of the 20th century, in 1963–1979, plague epizootics began to reoccur"*

### [[Second Pandemic]]: [[1.PRE]]

![[1.PRE Bayesian Phylogeography.png]]

### [[First Pandemic]]: [[0.ANT4]]

![[0.ANT4 Bayesian Phylogeography.png]]

### [[Bronze Age]]: [[0.PRE]]

![[0.PRE Bayesian Phylogeography.png]]

## Conclusion {.page_break_before}

>1. **Fitting a single clock model to the global phylogeny of *[[Yersinia pestis|Y. pestis]]* is not statistically supported**. <br> This can be observed in the relative instability of the [[MCMC]] analyses on the *reduced*  dataset, which fails to converge in parameter space. <br>

>1. ***[[Yersinia pestis|Y. pestis]]* has much more temporal signal than previously thought.**<br>   
> Separating the genomic dataset by clade recovers robust temporal signal for the majority of clades.<br> 

>1. **The true substitution rates of *[[Yersinia pestis|Y. pestis]]* are much higher than previously thought.**<br> 
> The mean substitution rate of all global populations (1.59E-8) is a drastic underestimate compared to the rates observed by clade which range from 3.51E-8 to 1.29E-7. The clades without temporal signal are pulling down the mean estimate. Previous work estimated that *[[Yersinia pestis|Y. pestis]]* has one of the lowest observed substitution rates, on par with the exceptionally slow-evolving *[[Mycobacterium leprae]]* [[Duchene 2016 Genome-scale Rates Evolutionary|[@duchene2016GenomescaleRatesEvolutionary]]]. This study instead reports the substitution rate of *[[Yersinia pestis|Y. pestis]]* to be much higher, and comparable to *[[Mycobacterium tuberulcosis]]*.<br>

>1. **[[Root to Tip Regression|Root-to-tip regression]] is a poor statistical test of temporal signal compared to [[Bayesian Evaluation of Temporal Signal|BETS]]**.<br> 
> The [[Root to Tip Regression|root-to-tip regression]] has several known limitations, namely the underlying assumption of strict clock-behavior and the non-independence of data points [[Duchene 2020 Bayesian Evaluation Temporal|[@duchene2020BayesianEvaluationTemporal]]]. A [[Bayesian Evaluation of Temporal Signal|BETS]] analysis counters these statistical violates, and is overall more sensitive given that multiple clock models can be tested.  In this study, [[root-to-tip regression]] indicated temporal signal in 3/12 lineages while the [[BETS]] analysis detected signal in 7/12 lineages.<br>


## Methods {.page_break_before}

A visual overview of the computational methods is provided in Figure @fig:workflow and is available as a [[Snakemake|snakemake]] pipeline (https://github.com/ktmeaton/plague-phylogeography/).

![Computational methods workflow.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/6d9ab2e/main/report/workflow.png){#fig:workflow}

### Data Collection  {.page_break_before}

*[[Yersinia pestis|Y. pestis]]* genome sequencing projects were retrieved from the [[National Centre for Biotechnology Information|NCBI]] databases using NCBImeta [[Eaton 2019 NCBImeta\|[@eaton2019NCBImeta]]]. 1657 projects were identified and comprised three genomic types: 

- 586 modern assembled
- 184 ancient unassembled
- 887 modern unassembled

The 887 modern unassembled genomes were excluded from this project, as the wide variety of laboratory methods and sequencing strategies precluded a standardized workflow. In contrast, the 184 ancient unassembled genomes were retained given the relatively standardized, albeit specialized, laboratory procedures required to process ancient tissues. Future work will investigate computationally efficient methods for integrating more diverse datasets.

Collection location, collection date, and collection host metadata were curated by cross-referencing the original publications. Collection location was transformed to latitude and longitude coordinates using [[GeoPy]] [[Esmukov 2020 GeoPy Python Client\|[@esmukov2020GeoPyPythonClient]]]  and the [[Nominatim|Nominatim API]] [[Hoffman 2020 Nominatim Tool Search\|[@hoffman2020NominatimToolSearch]]] for [[OpenStreetMap]]  [[openstreetmapcontributors2017PlanetDumpRetrieved\|[@openstreetmapcontributors2017PlanetDumpRetrieved]]]. Coordinates were standardized at a sub-country resolution, taking the centroid of the parent province/state. Collection dates were standardized according to their year, and recording uncertainty arising from missing data and radiocarbon estimates. Collection host was the most diverse field with regards to precision, ranging from colloquial nomenclature (*"rat"*) to a genus species taxonomy (*"Meriones libycus"*). For the purposes of this study, collection host was recorded as *Human*, *Non-Human*, or *Not Available*, given the inability to differentiate non-human mammalian hosts.

Genomes were removed if no associated date or location information could be identified in the literature, or if there was documented evidence of laboratory manipulation.

Two additional datasets were required for downstream analyses. First, *[[Yersinia pestis|Y. pestis]]* strain [[CO92]] (GCA_000009065.1) was used as the reference genome for sequence alignment and annotation. Second, *[[Yersinia pseudotuberculosis]]* strains [[NCTC10275]] (GCA_900637475.1) and [[IP32953]] (GCA_000834295.1) served as an outgroup to root the [[Maximum-likelihood\|maximum likelihood]] phylogeny.

### Alignment

Modern assembled genomes were aligned to the reference genome using [[Snippy]], a pipeline for core genome alignments [[Snippy 2020\|[@snippy2020]]]. Modern genomes were removed if the number of sites covered at a minimum depth of 10X was less than 70% of the reference genome.

Ancient unassembled genomes were downloaded from the SRA database in [[FASTQ]] format using the [[SRA Toolkit]] [[NCBI 2021 SRA Toolkit\|[@NCBI2021SRAToolkit]]]. Pre-processing and alignment to the reference genome was performed using the [[nf-core/eager]] pipeline, a reproducible workflow for ancient genome reconstruction [[Yates 2021 Reproducible Portable Efficient\|[@yates2021ReproduciblePortableEfficient]]]. Ancient genomes were removed if the number of sites covered at a minimum depth of 3X was less than 70% of the reference genome. It is a typical approach to relax coverage thresholds for ancient genomes relative to their modern counterparts [@cite]. The threshold chosen here is commonly used, and aims to strike a balance between variant confidence and sample representation [@cite].

A multiple sequence alignment was constructed using the [[Snippy\|Snippy Core]] module of the [[Snippy]] pipeline [[Snippy 2020\|[@snippy2020]]]. The output alignment was filtered to only include chromosomal variants and to exclude sites that had more than 5% missing data.

### Modified Datasets

To investigate the influence of between-clade variation in substitution rates, the multiple alignment was separated into the major clades of *[[Yersinia pestis\|Y. pestis]]*, which is referred to as the *clade* dataset. Clade labeling was derived from the five-branch population structure accompanied by a biovar abbreviation [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation]]]. Only one modification was made, in that the subclade associated with the [[Plague of Justinian]] ([[0.ANT4]]) was considered to be a distinct clade from its parent ([[0.ANT]]) due to its geographic, temporal, and ecological uniqueness.

To improve the performance and convergence of [[Bayesian]] analysis, a subsampled dataset was constructed and is referred to as the *reduced* dataset. Clades that contained multiple samples drawn from the same geographic location and the same time period were reduced to one representative sample. The sample with the shortest terminal branch length was prioritized, to diminish the influence of uniquely derived mutations on the estimated substitution rate. An interval of 25 years was identified as striking an optimal balance, resulting in 191 representative samples.

### Phylogenetics

Model selection was performed using [[Modelfinder]] which identified the K3Pu+F+I model as the optimal choice based on the [[Bayesian Information Criterion\|Bayesian Information Criterion (BIC)]] [[Kalyaanamoorthy 2017 ModelFinder Fast Model\|[@kalyaanamoorthy2017ModelFinderFastModel]]]. A [[Maximum-likelihood\|maximum-likelihood]] phylogeny was then estimated across 10 independent runs of [[IQTREE]] [[Minh 2020 IQTREE New Models\|[@minh2020IQTREENewModels]]]. Branch support was evaluated using 1000 iterations of the [[UFboot\|ultrafast bootstrap approximation]], with a threshold of 95% required for strong support [[Hoang 2018 UFBoot2 Improving Ultrafast\|[@hoang2018UFBoot2ImprovingUltrafast]]].

### Phylodynamics

To explore the degree of temporal signal present in the data, two categories of tests were performed . The first was a [[Root to Tip Regression\|root-to-tip (RTT)]] regression on collection date using the python package ```statsmodels``` [[Seabold 2010 Statsmodels Econometric Statistical\|[@seabold2010StatsmodelsEconometricStatistical]]]. Given the relative simplicity of a regression model, the *full* dataset of 601 genomes was used. For the second test of temporal signal, a [[Bayesian Evaluation of Temporal Signal|Bayesian Evaluation of Temporal Signal (BETS)]] was conducted. As the complexity of Bayesian modeling is computationally intensive, the *reduced* dataset (N=191) was used.

> **Kat's Notes**:<br>
> - I will need Sebastian and Leo's input here to write the BEAST methods section.

### Public Resource

The maximum likelihood and Bayesian phylogenetic trees were uploaded to the [[Nextstrain]] visualization platform at https://nextstrain.org/community/ktmeaton/plague-phylogeography-projects@main. All curated metadata is available for download via Nextstrain, Github, and Zenodo.

> **Kat's Notes**:<br>
> - I'll need to prepare stable and archived hosting links before submission.

## References {.page_break_before}

<div id="refs"></div>

## Appendix

### [[Phylodynamics]]

#### [[Root to Tip Regression]]

| Clade  |  N  | Coefficient |     p      |
|:------:|:---:|:-----------:|:----------:|
|  All   | 601 |    0.09     | 4.959e-13* |
| 1.ORI  | 117 |    0.04     | 1.184e-01  |
|  1.IN  | 39  |    -0.0     |    1.0     |
| 1.ANT  |  4  |    0.45     |    1.0     |
| 1.PRE  | 40  |    0.76     | 2.022e-12* |
| 2.MED  | 116 |    0.01     |    1.0     |
| 2.ANT  | 54  |    0.05     | 4.764e-01  |
| 4.ANT  | 11  |    -0.11    |    1.0     |
| 3.ANT  | 11  |    -0.04    |    1.0     |
| 0.ANT  | 103 |    -0.01    |    1.0     |
| 0.ANT4 | 12  |    0.66     | 7.842e-03* |
|  0.PE  | 83  |    0.01     |    1.0     |
| 0.PRE  |  8  |    0.91     | 1.678e-03* |

Table:  [[Root to Tip Regression\|Root-to-tip regression]] statistics. {#tbl:rtt_statistics}

![Root To Tip Regression by clade.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt_clades.png){#fig:rtt_clades}
