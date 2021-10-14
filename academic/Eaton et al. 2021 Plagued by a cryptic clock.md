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
        "[[The Peter Doherty Institute for Infection and Immunity]],
          [[University of Melbourne]]"
      ]
  - name: [[Sebastian Duchene]]
    orcid: 0000-0002-2863-0907
    affiliations:
      [
        "[[The Peter Doherty Institute for Infection and Immunity]],
          [[University of Melbourne]]"
      ]	  	  
  - name: [[Ann Carmichael]]
    affiliations: [ "Department of History, [[Indiana University Bloomington]]" ]
  - name: [[Nükhet Varlık]]
    orcid: 0000-0001-6870-5945
    affiliations: [ "Department of History, [[Rutgers University-Newark ]]" ]
  - name: [[Brian Golding]]
    orcid: 0000-0002-7575-0282
    affiliations:
      [
        "[[Department of Biology]], [[McMaster University]]"
      ]	
  - name: [[Edward Holmes]]
    orcid: 0000-0001-9596-3552
    affiliations:
      [
        "Sydney Institute for Infectious Diseases, [[University of Sydney]]",
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
filepath: 'academic/Eaton et al. 2021 Plagued by a cryptic clock'
tags: 🧨
status: priority
title: Plagued by a cryptic clock
subtitle: Insight and issues from the global phylogeny of _Yersinia pestis_
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
compile-manubot: "conda activate manubot && pandoc/manubot.sh 'Eaton et al. 2021 Plagued by a cryptic clock.md' pandoc/bib/library.json ../../rootstock"
compile-pandoc: "conda activate pandoc && pandoc/convert_wikilinks.py --input
  'Eaton et al. 2021 Plagued by a cryptic clock.md' --output 'Eaton et al. 2021 Plagued by a cryptic clock_convert.md';"
url: https://ktmeaton.github.io/obsidian-public/academic/Eaton%20et%20al.%202021%20Plagued%20by%20a%20cryptic%20clock.html
---


## Abstract  {.page_break_before}

**Background**: A popular objective in plague research is dating historical events using a molecular clock. But despite intensive interest and methodological advancement, _Yersinia pestis_ remains notoriously difficult to model. As a result, debate has emerged concerning the applicability and accuracy of spatiotemporal analysis in plague phylogenetics. In response, we test a variety of molecular clock and migration models on an updated and curated _Y. pestis_ phylogeny.

**Results**: All iterations of a species-wide clock were analytically unstable. Partitioning the data by population improved modeling performance, but often resulted in divergence dates that were too young. This effect was most noticeable in populations with no ancient DNA calibrations, even when the sampling time frame was as long as 100 years. In addition, no migration events could be robustly inferred from a phylogeographic analysis of the Second Plague Pandemic.

**Conclusions**: The majority of _Y. pestis_ populations have detectable temporal signal. However, accurate node-dating presents a complex optimization problem, in which calibrating samples are maximized and rate variation is limited. Furthermore, the _Y. pestis_ genomic evidence in isolation is poorly suited to reconstructing point migrations between countries. Instead, the reconstruction of spread patterns may benefit tremendously from integrating higher-resolution evidence from interdisciplinary sources.


## Introduction {.page_break_before}

Plague has an impressively long and expansive history as a zoonosis of rodents. The earliest "fossil" evidence of the plague bacterium, *[[Yersinia pestis]]*, comes from [[Ancient DNA\|ancient DNA]] studies which date its first emergence in humans to the Late Neolithic Bronze Age (LNBA) [[Andrades Valtuena et al. 2017 Stone Age Plague\|[@andradesvaltuena2017StoneAgePlague; ]] [[Rascovan et al. 2019 Emergence Spread Basal\|@rascovan2019EmergenceSpreadBasal]]]. Over the last five thousand years, _Y. pestis_ has dispersed globally on numerous occasions, due to an ability to infect a variety of mammalian hosts  [@perry1997YersiniaPestisEtiologic] and ever-expanding trade networks [@yue2017TradeRoutesPlague]. Few regions of the ancient and modern world remain untouched by this disease, as plague has persisted until today on every continent except Australia and Antarctica [@who2017Plague].

Accompanying this prolific global presence is unnervingly high mortality. There have been at least three historically-documented pandemics of plague: the First Pandemic (6<sup>th</sup> to 8<sup>th</sup> century CE) [@wagner2014YersiniaPestisPlague; @mordechai2019JustinianicPlagueInconsequential], the Second Pandemic (14<sup>th</sup> to 19<sup>th</sup> century CE) [@varlik2014NewScienceOld], and the Third Pandemic (18<sup>th</sup> to 20<sup>th</sup> century CE) [@xu2014WetClimateTransportation]. The advent of each pandemic is marked by a devastating series of outbreaks, such as the medieval Black Death (1346-1353), which is estimated to have killed more than half of Europe's population  [@benedictow2021CompleteHistoryBlack].  This level of virulence is still observed today, as untreated pneumonic plague has a case fatality rate of nearly 100% [@prentice2007Plague; salam2020DeathsAssociatedPneumonic]. As a result, plague maintains its status as a disease that is of vital importance for public health research.

There are few other pathogens that have had such a lasting impact on past and present human populations, and thus

Despite, 

Another ... due to its enigmatic epidemiology.

Our knowledge of plague's epidemiology is far from complete, 

The epidemiology of plague is quite 

- Enigmatic epidemiology



- Several aspects of plague's epidemiology remain enigmatic.
- In particular, the emergence and spread of plague in pre
- Particularly where 

- There is still a lot we don't know.
- Because of little surviving historical evidence.
- Either pre-dates written history (Late Neolithic Bronze Age)
- 

---

A long-standing line of inquiry in plague research has been estimating the timing and location of past events. The most intensively researched events have been: (1) the first appearance of _Y. pestis_ in human populations [@rasmussen2015EarlyDivergentStrains], (2) the onset and progression of the three pandemics [@bos2011DraftGenomeYersinia; @cui2013HistoricalVariationsMutation; @wagner2014YersiniaPestisPlague], and (3) the inter-pandemic or "quiescent" periods where _Y. pestis_ recedes into wild rodent populations and disappears from the historical record [@zeppelini2018OngoingQuiescenceBorborema; @green2020HowMicrobeBecomes]. Our knowledge of these events has considerably deepened in recent years, owing in part to technological advancements such as the retrieval and sequencing of ancient DNA alongside new molecular clock dating methods. These advancements have thus empowered researchers to test hypotheses about plague's epidemiology further back in time with increasingly complex models. Despite this intensive interest and methodological advancement, the rate and time scale of evolution in _Y. pestis_ remains notoriously difficult to estimate.

This can largely be attributed to the substantial rate variation that has been documented across the phylogeny of *[[Yersinia pestis\|Y. pestis]]* [@cui2013HistoricalVariationsMutation; @spyrou2019PhylogeographySecondPlague]. As a result, considerable debate has emerged over whether *[[Yersinia pestis|Y. pestis]]* has no temporal signal [[Wagner et al. 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]], thereby preventing any meaningful rate estimate,  or if some _Y. pestis_ populations have such distinct rates that a species-wide signal is obscured [@duchene2016GenomescaleRatesEvolutionary]. This uncertainty has resulted in radically different rate and date estimates between studies, with node dates shifting by several millennia [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Rasmussen 2015 Early Divergent Strains\|@rasmussen2015EarlyDivergentStrains]]].

While there is little consensus concerning _Y. pestis_' absolute rates and dates, many studies agree that historical samples (ie. calibrations) strongly impact these estimates [@ho2009AccountingCalibrationUncertainty; @dornburg2012RelaxedClocksInferences]. Calibrating samples typically come from ancient DNA studies of archaeological populations, and help to account for sudden and extreme rate changes [@ho2009AccountingCalibrationUncertainty; @cui2013HistoricalVariationsMutation; @spyrou2019PhylogeographySecondPlague]. Experimental removal of these calibrations has been shown to reduce temporal signal [@duchene2016GenomescaleRatesEvolutionary] and thus heterochronous sampling is crucial when estimating rates and dates.


Fortunately, historical _Y. pestis_ samples have become abundant at an astonishing rate. The last decade has witnessed an explosion of ancient DNA studies, which have retrieved *[[Yersinia pestis|Y. pestis]]* from historical epidemics [[bos 2011 Draft Genome Yersinia\|[@bos2011DraftGenomeYersinia]]] and underrepresented regions [[Susat 2020 Yersinia Pestis Strains\|[@susat2020YersiniaPestisStrains]]]. The study of modern *[[Yersinia pestis|Y. pestis]]* populations has accelerated in tandem [@zhou2020EnteroBaseUserGuide], with the sequencing of bacterial culture collections containing early to mid-20<sup>th</sup> century strains [@kutyrev2018PhylogenyClassificationYersinia]. 


Unfortunately, this expansive knowledge is not without its limitations. Genomic representation of *[[Yersinia pestis|Y. pestis]]* has long been affected by sampling biases, such as the over-representation of [[East Asian\|East Asian]] samples [[Spyrou 2016 Historical Pestis Genomes|[@spyrou2016HistoricalPestisGenomes]]].

Recent sequencing efforts have specifically aimed to combat this sampling bias, by deeply sampling underrepresented plague foci [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia;]] [[Vogler 2019 Single Introduction Yersinia\|@vogler2019SingleIntroductionYersinia]]].

However, these new calibrations have not yet been comprehensively curated and contextualized for molecular clock analyses


Our ability to estimate the location of past events is also hindered by the sporadic dispersal history of plague. *[[Yersinia pestis|Y. pestis]]* is remarkable for its "boom-bust" dynamics [[Strayer 2017 Boom-bust Dynamics Biological\|[@strayer2017BoombustDynamicsBiological]]], in which periods of slow, diversification are repeatedly interrupted by sudden bursts of clonal expansion [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation]]]. This extreme variation in how genetic diversity is apportioned across the phylogeny and globe again complicates analyses of _Y. pestis_ evolution. There have been many attempts to infer the migration history of plague using phylogeographic methods [@morelli2010YersiniaPestisGenome; @namouchi2018IntegrativeApproachUsing], however none have evaluated the statistical accuracy and uncertainty in such spatial analyses.


---

 A comprehensive understanding of plague's cryptic clock, or lack thereof, is necessary before we can begin to untangle when and where this disease appeared in the past.

While there is little consensus concerning _Y. pestis_' absolute rates and dates, many studies agree that historical samples (ie. calibrations) strongly impact these estimates [@ho2009AccountingCalibrationUncertainty; @dornburg2012RelaxedClocksInferences]. Calibrating samples typically come from ancient DNA studies of archaeological populations, and help to account for sudden and extreme rate changes [@ho2009AccountingCalibrationUncertainty; @cui2013HistoricalVariationsMutation; @spyrou2019PhylogeographySecondPlague]. Experimental removal of these calibrations has been shown to reduce temporal signal [@duchene2016GenomescaleRatesEvolutionary] and thus heterochronous sampling is crucial when estimating rates and dates.

is a renewed interested to mid-20<sup>th</sup> century _Y. pestis_ isolates, which provides 


Phylogenetic analyses of these genomes have often revealed unexpected connections between past and present outbreaks of plague [[Bos et al. 2016 Eighteenth Century Yersinia|[@bos2016EighteenthCenturyYersinia]]], thus expanding our knowledge of the origins and epidemiology of *[[Yersinia pestis|Y. pestis]]*.

Unfortunately, this expansive knowledge is not without its limitations. Genomic representation of *[[Yersinia pestis|Y. pestis]]* has long been affected by sampling biases, such as the over-representation of [[East Asian\|East Asian]] samples [[Spyrou 2016 Historical Pestis Genomes|[@spyrou2016HistoricalPestisGenomes]]]. An example of this bias, and subsequent critique, is that the once-established hypothesis that plague originated in China [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]] is now in contention [[Rascovan et al. 2019 Emergence Spread Basal\|[@rascovan2019EmergenceSpreadBasal]]]. Recent sequencing efforts have specifically aimed to combat this sampling bias, by deeply sampling underrepresented plague foci [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia;]] [[Vogler 2019 Single Introduction Yersinia\|@vogler2019SingleIntroductionYersinia]]]. However, this new data has not yet been contextualized within a global framework, which will be a decisive step towards updating our knowledge of plague's population structure.

---


There has also been increasing momentum to sequence "modern" bacterial culture collections which contain _Y. pestis_ isolates collected during the early to mid-20<sup>th</sup> century [@kutyrev2018PhylogenyClassificationYersinia]. These sequenced

A recent study estimated that there are now 1500+ _Y. pestis_ genomes [@zhou2020EnteroBaseUserGuide], although 


---

Our ability to track and predict the spread of *[[Yersinia pestis|Y. pestis]]* is also hindered by the sporadic dispersal history of plague. *[[Yersinia pestis|Y. pestis]]* is remarkable for its "boom-bust" dynamics [[Strayer 2017 Boom-bust Dynamics Biological\|[@strayer2017BoombustDynamicsBiological]]], in which periods of slow, diversification are repeatedly interrupted by sudden bursts of clonal expansion [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation]]]. Just as was the case for molecular clock methods, this extreme variation in how genetic diversity is distributed across the globe is extremely challenging to model. Despite this difficulty, many studies have still attempted to infer the migration history of plague using phylogeographic methods [[Morelli et al. 2010 Yersinia Pestis Genome|[@morelli2010YersiniaPestisGenome;]][[namouchi2018IntegrativeApproachUsing\|@namouchi2018IntegrativeApproachUsing]]].  However, no study to date has statistically evaluated the accuracy and uncertainty involved in this spatial analysis.

In response to these debates and obstacles, this paper proposes a theoretical and methodological shift in plague genomics. Rather than conceptualizing *[[Yersinia pestis\|Y. pestis]]* as a monolithic species, we highlight how novel insight emerges when nuanced models are constructed based on the underlying population structure. To accomplish this shift in discourse, we focus on four objectives, specifically to: (1) Curate and contextualize the most recent *[[Yersinia pestis\|Y. pestis]]* genomic metadata, (2) Review and critique our current understanding of *[[Yersinia pestis\|Y. pestis]]* population structure, (3) Conduct nuanced molecular clock analyses and phylogeographic reconstructions, and (4) Identify key areas of phylogenetic uncertainty to be expanded on in future research.

Progress towards these key objectives is anticipated to benefit both prospective studies of plague, such as environmental surveillance and outbreak monitoring, and retrospective studies, which seek to date the emergence and spread of past pandemics.

## Results and Discussion {.page_break_before}

### Population Structure 

To determine the population structure of _Y. pestis_, we first estimated a maximum-likelihood phylogeny using 601 global isolates including 540 modern (89.9%) and 61 ancient (10.1%) strains. We rooted the tree using two genomes of the outgroup taxa _Yersinia pseudotuberculosis_. The alignment consisted of 10,249 variant positions exclusive to _Y. pestis_, with 3,844 sites shared by at least two strains. Following phylogenetic estimation, we pruned the outgroup taxa from the tree to more closely examine the genetic diversity of _Y. pestis_.

In Figure @fig:divtree_map_timeline, we contextualize the global phylogeny using three nomenclature systems: the major branches, metabolic biovars, and historical time periods.  In the following section, we compare and critique each system, identify any incongruent divisions and uncertainty, and explore an integrative approach for spatiotemporal analysis.

#### Biovars

The oldest system of _Y. pestis_ classification is the biovar nomenclature, which uses metabolic differences to define population structure. Accordingly, _Y. pestis_ can be categorized into four classical biovars: *Antiqua* (ANT), *Medievalis* (MED), *Orientalis* (ORI), and *microtus*/*pestoides* (PE) [@devignat1951VarietesEspecePasteurella; @zhou2004ComparativeEvolutionaryGenomics]. Non-classical biovars have also been introduced, such as the *Intermedium* biovar (IN), which reflects a transitional state from *Antiqua* to *Orientalis* [@li2009GenotypingPhylogeneticAnalysis]. The biovar system is simple in application, as it largely focuses on two traits: the ability to ferment glycerol and reduce nitrate [@zhou2004ComparativeEvolutionaryGenomics]. However, this simplicity is offset by the growing recognition of regional inconsistencies in metabolic profiles [@kutyrev2018PhylogenyClassificationYersinia]. This is further exacerbated by the sequencing of non-viable, "extinct" *Y. pestis* for which metabolic sub-typing is impossible [@bos2011DraftGenomeYersinia]. Researchers have responded to this uncertainty in a variety of ways, by extrapolating existing biovars [@wagner2014YersiniaPestisPlague] and creating new pseudo-biovars (PRE) [@rasmussen2015EarlyDivergentStrains]. Others have foregone the biovar nomenclature altogether in favor of locally-developed taxonomies [@kutyrev2018PhylogenyClassificationYersinia]. Despite extensive research, it remains unclear which metabolic traits, if any, can be used to classify _Y. pestis_ into distinct populations on a global scale.

#### Major Branches

In contrast to the biovar nomenclature which emphasizes phenotype, the major branch nomenclature focuses on phylogenetic relationships. This system divides the global phylogeny of *[[Yersinia pestis\|Y. pestis]]* into populations according to their relative position to a multifurcation called the “Big Bang” polytomy  [@cui2013HistoricalVariationsMutation]. All lineages that diverged prior to this polytomy are grouped into Branch 0 and those diverging after form Branches 1-4. Because this multifurcation plays such a central role in this system, there is great interest in estimating its timing and geographic origins [@green2020HowMicrobeBecomes; @green2020FourBlackDeaths]. However, the epidemiological significance of the “Big Bang” polytomy remains unclear, as no definitive phenotype has been identified that correlates with the observed branching pattern. 

#### Time Period

As ancient *[[Y. pestis]]* genomes cannot be classified via direct metabolic testing, researchers use an alternative strategy that incorporates contextual evidence such as the sampling age, historical time period, and potential pandemic associations. In ancient DNA studies, the genetic diversity of _Y. pestis_ is commonly divided into four time periods: (1) the First Pandemic [@wagner2014YersiniaPestisPlague], (2) the Second Pandemic [@spyrou2019PhylogeographySecondPlague], (3) the Third Pandemic [@cui2013HistoricalVariationsMutation], and (4) the Late Neolithic Bronze Age [@rasmussen2015EarlyDivergentStrains].


The key strengths of this nomenclature are two-fold.  First, it provides a foundation for interdisciplinary discourse, in which genetic diversity can be contextualized and explained by relevant historical records. Second, this system effectively categorizes the historical outbreaks of plague recorded in Europe. This can be seen in Figure @fig:divtree_map_timeline, where the Bronze Age strains (0.PRE) in Europe are replaced by those of the First Pandemic (0.ANT4), which in turn are replaced by strains of the Second Pandemic (1.PRE). However, this system is far less effective in describing plague populations outside of Europe and incurs several risks.

The first weakness of this nomenclature, is the risk of grouping unrelated populations. Contemporaneous strains often have distinct evolutionary histories [@spyrou2018Analysis3800yearoldYersinia] even when originating from the same plague foci. The *pestoides* (0.PE) and *medievalis* (2.MED) biovars are informative examples, as these populations have co-existed in the Caucuses mountains since at least the 20th century (Figure @fig:divtree_map_timeline Geography). The second weakness of this system presents as the opposite problem, in which the time period nomenclature falsely separates related lineages. For example, there is growing awareness of the temporal overlap of the Second and Third Pandemics. Previously, the temporal extents of these events were mutually exclusive, dating from the 14<sup>th</sup> to 18<sup>th</sup> century, and the late 19<sup>th</sup> to mid-20<sup>th</sup> century respectively [@gage2005NaturalHistoryPlague]. Recent historical scholarship has contested this claim, and demonstrated that these constraints are a product of a Eurocentric view of plague [@varlik2014NewScienceOld]. The Second Pandemic is now recognized to have extended into at least the 19<sup>th</sup> Century [@bolanos2019OttomansGlobalCrises; @varlik2020PlagueThatNever] and the Third Pandemic is hypothesized to have began as early as the 18<sup>th</sup> century in southern China [@tan2002AtlasPlagueIts; @xu2014WetClimateTransportation].  However, since this period of overlap remains unsampled, it is unclear exactly how these pandemics can be genetically distinguished, if at all.

Yet another limitation of this system is that several populations are curiously excluded from the pandemic nomenclature. For example, Branch 2 populations emerged at the same time as, but separate from, the Second Pandemic and have been associated with high mortality epidemics [[Eroshenko 2021 Evolution Circulation Yersinia\|[@eroshenko2021EvolutionCirculationYersinia]]]. In particular, the *medievalis* population (2.MED) has spread throughout Asia (Figure @fig:divtree_map_timeline) and has been observed to have the fastest spread velocity of any *[[Yersinia pestis|Y. pestis]]* lineage [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]]. Given its epidemiological significance, it is surprising that Branch 2 populations continue to be overlooked in the pandemic taxonomy of *[[Yersinia pestis|Y. pestis]]*. As ancient DNA sampling strategies expand in geographic scope, and as more non-European historical sources are brought to bear, it will be important to consider how to best refashion the historical period nomenclature to encompass this diversity.

#### Integrative Approach

In light of this uncertainty and inconsistency, there exists no classification system which comprehensively represents the global population structure of _Y. pestis_. Instead, integrative approaches have been previously used in large comparative studies of *[[Yersinia pestis|Y. pestis]]* [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]]. We therefore take the intersection of the three taxonomic systems discussed previously and describe 12 populations for statistical analysis (Table @tbl:population). In the following sections, we highlight the novel insight and issues that arise when this population structure is explicitly incorporated into molecular clocks models and phylogeographic reconstructions.

<div style="page-break-after: always;"></div>

![The phylogenetic and spatiotemporal diversity of 601 _Yersinia pestis_ genomes. Populations were defined by integrating three nomenclature systems: the major branches, biovars, and time periods. **A**: The maximum-likelihood phylogeny with branch lengths scaled by genetic distance in substitutions per site. The tree was rooted using two genomes of the outgroup taxa _Y. pseudotuberculosis_, which were pruned before visualization. **B**: The mean sampling age of each genome with internal node dates bounded by ancient DNA calibrations. **C**: The sampling location of each genome with coordinates standardized to the centroid of the associated province/state.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/5109335a2/main/auspice/all/chromosome/full/filter5/ml/divtree_map_timeline.png){#fig:divtree_map_timeline width=80%}

<div style="page-break-after: always;"></div>

### Estimating Rates of Evolutionary Change

The extent of rate variation present in our updated genomic dataset is notably larger and more diverse than those used in previous studies [@spyrou2019PhylogeographySecondPlague; @pisarenko2021YersiniaPestisStrains]. A root-to-tip regression on sampling age reproduces the finding that substitution rates in *Y. pestis* are poorly represented by a simple linear model or "strict clock" (Figure @fig:rtt A).We found a very low coefficient of determination (R<sup>2</sup>=0.09) which indicates a large degree of unaccounted variation. This finding suggests that evolutionary change in _Y. pestis_ may be more appropriately estimated using a "relaxed clock", where rate variation is explicitly modeled. 

To test this hypothesis, we performed a Bayesian Evaluation of Temporal Signal (BETS) [@duchene2020BayesianEvaluationTemporal].  In brief, this method tested four model configurations including: (1) a strict clock, (2) a relaxed clock, (3) the true sampling ages, and (4) no sampling ages (ie. all contemporaneous). A comparison of the model likelihoods, or Bayes factors, was then used to assess the degree of temporal signal. However, the BETS test was inconclusive when attempting to fit a single clock to the updated global diversity of _Y. pestis_. The Bayesian analysis exhibited poor sampling (ESS < 200) of the clock parameters across all model configurations, even when we reduced sources of variation by removing tip date uncertainty, fixing the tree topology, and removing up to 70% of genomes. The poor performance of a single clock model is consistent with several other studies where low ESS scores were observed [@rasmussen2015EarlyDivergentStrains] and divergence dates could not be estimated [@wagner2014YersiniaPestisPlague]. We therefore conclude that a single clock model is not currently a viable approach, as there is excessive rate variation across the global phylogeny of _Y. pestis_. We hypothesize that this model misspecification may help explain node-dating disparities between studies in the past [@morelli2010YersiniaPestisGenome, @cui2013HistoricalVariationsMutation; @rasmussen2015EarlyDivergentStrains].

In contrast to the single clock approach, we observed significant improvements when each population was assessed independently. All model parameters in our Bayesian analysis demonstrated convergence with ESS values well above 200 and we detected temporal signal in 9 out of 12 _Y. pestis_ populations (SI Table @tbl:bets). Certain populations appeared more clock-like than others, which was reproduced in both the root-to-tip regression and the Bayesian rate estimation. For example, the observed rate variation was low in the Bronze Age (R<sup>2</sup>=0.92), moderate in the Second Pandemic (R<sup>2</sup>=0.76) and high in *Medievalis* (R<sup>2</sup>=0.02). These population-specific trends are consistent with recent analyses [@duchene2016GenomescaleRatesEvolutionary; @rascovan2019EmergenceSpreadBasal] which demonstrated that the degree of temporal signal in _Y. pestis_ varies according to which populations are included. Therefore, our results indicate that using population specific models is a more robust approach than using a single species clock. 

In the following sections, we discuss... three outcomes. populations with no temporal signal. Populations with detectable temporal signal, but with node-dating conflicts... finally.

<div style="page-break-after: always;"></div>

![Rate variation in _Yersinia pestis_ as observed through a regression of root-to-tip distances from the maximum-likelihood phylogeny on the mean sampling age. **A**: A linear model using all genomes from the maximum-likelihood phylogeny. **B**: Population-specific linear models with the distance to the population MRCA calculated from subtrees in the maximum-likelihood phylogeny. **C**: Substitution rates by population across branches of the maximum-clade credibility (MCC) trees. ](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/cb00c8c/main/iqtree_stats/all/chromosome/full/filter5/rtt.png){#fig:rtt width=80%}

<div style="page-break-after: always;"></div>

#### (i) No Temporal Signal

We found three _Y. pestis_ populations with no detectable temporal signal which include the *Intermedius* biovar (1.IN) and the *Antiqua* biovar (2.ANT, 3.ANT). Despite being sampled over a period as long as 84 years, these populations have not accumulated sufficient evolutionary change to yield informative divergence dates. This limited diversity can be identified in the maximum-likelihood phylogeny, as these populations have the highest density of nodes close to their roots (Figure @fig:branch_lengths). As another *Antiqua* population (4.ANT) has a similar node distribution, with a smaller number of samples (N=12) collected over an even shorter time frame (38 years), we also regard the rates and dates associated with 4.ANT to be non-informative.

The lack of temporal signal in these populations suggests that _Y. pestis_ must be sampled over multiple decades, if not centuries, before robust temporal estimates can be obtained. This time frame is largely consistent with the finding that _Y. pestis_ has one of the slowest substitution rates observed among bacterial pathogens [@duchene2016GenomescaleRatesEvolutionary]. Previous studies have estimated the mean substitution rate to range from 1.0 - 3.0 x 10<sup>-8</sup> substitutions per site per year [@cui2013HistoricalVariationsMutation; @spyrou2019PhylogeographySecondPlague], or 1 substitution every 8 to 25 years. In application, this means that  _[[Y. pestis]]_ lineages often cannot be differentiated until decades have passed, a concept generally referred to as the phylodynamic threshold.

The phylodynamic threshold has been rigorously explored in other pathogens [@duchene2020TemporalSignalPhylodynamic], but not explicitly tested in _Y. pestis_. However, plague researchers have anecdotally mentioned the challenges in reconstructing intra-epidemic diversity. For example, isolates from the Second Pandemic dated to the medieval [[Black Death]] (1346-1353) were observed to be indistinguishable clones [@spyrou2016HistoricalPestisGenomes], thus extinguishing any hope of reconstructing the spread of this catastrophic event from genetic evidence. Our results develop this issue further, by demonstrating that non-informative dates were obtained from populations sampled over a period as long as 84 years. This highlights a significant limitation and cautionary note for plague research, as genetic evidence may not be suitable for reconstructing short-term, epidemic events.

Aside from the aforementioned Black Death, another short-term event that remains enigmatic is the re-emergence of plague during the Third Pandemic. Epidemiological analyses [@xu2014WetClimateTransportation; @xu2019HistoricalGenomicData] have documented highly localized plague cases appearing in Yunnan, China (1772-1800), followed by short-distance diffusion (1800-1880) and eventually inter-continental spread (1894). The genomic evidence is consistent with this geographic narrative, as the Third Pandemic population (1.ORI) diverges from an *Intermedius* (1.IN) clade that is geographically restricted to Yunnan, China (Figure @fig:divtree_1.IN_1.ORI). Unfortunately, the available genetic evidence does not further advance our understanding of the timing of these precursor events, as the _Intermedius_ (1.IN) population has no detectable temporal signal. However, the long internal branch that connects 1.IN and 1.ORI suggests there is significant diversity that remains unsampled. Thus a key avenue for future research will be to locate and sample the _Y. pestis_ populations that pre-date this re-emergence, to better understand when and why this pandemic began.

![The subtrees extracted from the maximum-likelihood phylogeny for the _Yersinia pestis_ populations _Intermedius_ (1.IN) and _Orientalis_ (1.ORI). Branch lengths are scaled by genetic distance in substitutions per site. ](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/35b371f/main/auspice/all/chromosome/full/filter5/ml/divtree_1.IN_1.ORI.png){#fig:divtree_1.IN_1.ORI width=100%}

<div style="page-break-after: always;"></div>

#### (ii) Conflicting Dates

We observed two populations that were associated with significant node-dating conflicts, despite having detectable temporal signal. These populations include the *Pestoides* (0.PE) and *Antiqua* (0.ANT) biovars which are both non-monophyletic. Conflicts were identified by comparing their estimated time to the most recent common ancestor (tMRCA) to the tMRCAs of their descendant populations. For example, the First Pandemic ([[0.ANT4]]) is a descendant clade of the larger [[0.ANT]] population based on the maximum-likelihood phylogeny (Figure @fig:date_conflict_0.ANT). Thus, we would expect the tMRCA of the ancestral 0.ANT to pre-date the First Pandemic, for which ancient DNA calibrations are available. Instead, the tMRCA of 0.ANT is far too young (1357 - 1797 CE), and post-dates the tMRCA of 0.ANT4 (39 - 234 CE) by more than a millennia. 

These node-dating conflicts illustrate a significant limitation ...

 This limited diversity can be identified in the maximum-likelihood phylogeny, as these populations have the highest density of nodes close to their roots with sporadic long branches as outliers (Figure @fig:branch_lengths). As another *Antiqua* population (4.ANT) has a similar node distribution, with a smaller number of samples (N=12) collected over an even shorter time frame (38 years), we also regard the rates and dates associated with 4.ANT to be non-informative.

![Caption](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/e8b2cbb/main/iqtree_stats/all/chromosome/full/filter5/date_conflict_0.ANT.png){#fig:date_conflict_0.ANT width=100%}

<div style="page-break-after: always;"></div>

#### (iii) Informative Rates and Dates

<div style="page-break-after: always;"></div>

![The mean and standard deviation of substitution rates estimated using a relaxed clock method. Each distribution is annotated with the peak value. ](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/3b37357/main/beast/all/chromosome/clade/log/mean_rate_tree_shape.png){#fig:mean_rate_tree_shape width=100%}

![The time to most recent common ancestor estimated using a relaxed clock method. Each distribution is annotated with the peak value. ](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/2541fd9/main/beast/all/chromosome/clade/log/tMRCA.png){#fig:tmrca width=100%}

<div style="page-break-after: always;"></div>

##### (ii) Inflated Rates and Overly Young Dates

For populations with detectable temporal signal, several stood out as potential outliers. Specifically, the *pestoides* (`[[0.PE]]`), *medievalis* (`[[2.MED]]`), and the Third Pandemic (`[[1.ORI]]`) had mean substitution rates more than double that of the other populations. Overall we observed that these high substitution rates were associated with long and "tippy" trees. Given the large number of long external branches present in the maximum-likelihood phylogeny (SI Figure @fig:long_branches), we hypothesize that the faster rates associated with these populations are biased by an increased prevalence of transient mutations. If true, then the node-dates of these populations will be overly young. 

Tentative support for this hypothesis can be found by searching for violations of ancestor-descendant dates. The most extreme example is the *pestoides* (`[[0.PE]]`) group, where the most recent common ancestor (1814) incorrectly postdates the First Pandemic (`[[0.ANT4]]`) (Figure @fig:tmrca). In light of this inconsistency, we caution that node dates associated with these populations should be treated as highly suspect, and are likely underestimates of the true divergence dates (ie. too young). However, as these outlier populations have high epidemiological significance we suggest an important avenue for future research will be to systematically evaluate the genomes associated with long branches. Our preliminary investigation suggests that long branch removal drastically changes the results of statistical tests, such as the relationship between genetic and geographic distances (Figure @fig:ibd)

![ The impact of filtering out long external branches on patterns of isolation by distance in *medievalis* (`[[2.MED]]`). ](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/b15235e4b4f09d83959e2cdb7f2d2bfa329633a3/main_filter/iqtree_stats/all/chromosome/full/filter5/mantel_comparison_2.MED.png){#fig:ibd width=80%}

The remaining populations with temporal signal had much slower, and overlapping, mean substitution rates that ranged from 3.6 x 10<sup>-8</sup> to 5.6 x 10<sup>-8</sup> subs/site/year. Nevertheless, we still observed several node-dating incongruencies, as the root date of the *antiqua* biovar (`[[0.ANT]]`) was estimated to be 1698 which again, incorrectly post-dates the First Pandemic (`[[0.ANT4]]`). We attribute this incongruency to a "stemmy" topology, where rate variation is poorly modeled in the long, internal branches near the root. The connection of "stemmy" trees with overly young dates has been previously observed and linked to use of the UCLN relaxed clock model [@crisp2014ClockModelMakes]. This study demonstrated that correcting internal nodes dates was possible, but required significant model changes. We note that studies seeking to robustly date nodes associated with "stemmy" plague populations, such as `[[0.ANT]] `and `[[1.ANT]]`, may require specialized models if no internal calibrations are used [@crisp2014ClockModelMakes].

##### Crucial Calibrations

The  most robust clock estimates were associated with the pre-modern populations from the Bronze Age (`[[0.PRE]]`), the First Pandemic (`[[0.ANT4]]`), and the Second Pandemic (`[[1.PRE]]`). No ancestor-descendant violations were observed between these groups and the tree structures did not follow a "tippy" or "stemmy" form which was previously shown to produce anomalous rates and dates. In contrast, these populations are associated with "step" trees, in which historical samples help to break up long internal branches.  These calibrating samples are absolutely crucial for estimating divergence times [@ho2009AccountingCalibrationUncertainty], especially for organisms such as _Y. pestis_ which is known to experience sudden and extreme rate changes [@cui2013HistoricalVariationsMutation; @spyrou2019PhylogeographySecondPlague]. It is therefore not surprising that these populations, which have been rigorously sampled across multiple centuries, have robust and measurable temporal signal. 

### Geography

After the pre-modern populations were identified as having the most robust clock estimates, our next step was then to model their spread using discrete phylogeography. The collection date and country of each sample were used to estimate a joint spatiotemporal model, in order to infer the timing and location of ancestral events. Of the three pre-modern populations, the Second Pandemic (`[[1.PRE]]`) is the most intensively sampled with a 500-year sampling time frame represented by 40 _Y. pestis_ genomes across 11 countries. We thus focus our discussion on the phylogeography results from this population.

Our phylogeographic analysis of the Second Pandemic revealed numerous sources of error and uncertainty. The first observation was that the true root position was incorrectly inferred when compared to the global maximum-likelihood phylogeny, and basal branches had poor posterior support. This is mostly due to the clonal Black Death samples, which are virtually indistinguishable but are found all throughout Europe and thus carry little geographic signal. We therefore caution that the branching order, node dates, and inferred locations at the start of the Second Pandemic should be treated as unreliable. 

Our second finding was that ancestral locations could not be inferred with high confidence for the majority of internal nodes. Furthermore, no migration events could be robustly inferred between countries. The few nodes with high confidence locations were largely associated with epidemic sampling of a single cemetery, as seen in Switzerland, England, and France. The one exception to this pattern was an internal node dated to the 14<sup>th</sup> century with strong support for Germany. If this were "true", it may lend support to the hypothesis of a novel plague reservoir forming in Germany during the post-Black Death Period [@slavin2021OutWestFormation]. However, we argue that this node should be treated with great skepticism, as its descendant lineages in the 15th century are among the most sparsely sampled. A key avenue of future research  will be to more deeply sample the 15th century, particularly in Germany and its neighboring countries, to further explore this hypothesis.

![Phylogeography of the Second Plague Pandemic (1.PRE). Grey bars around internal nodes define dating uncertainty, and represent the 95% highest posterior density (HPD) interval. Asterisks indicate clade separations with posterior support greater than 0.95. Blue diamonds indicate nodes where the ancestral location was inferred to be in a single country with a probability greater than 0.95 .](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/27404bd/main/auspice/all/chromosome/full/filter5/beast/geo/1.PRE_timetree.png){#fig:1.PRE_timetree width=100%}

## Conclusion {.page_break_before}

In this study, we sought to contribute to two lines of discourse and debate. The first, is the question of whether _Y. pestis_ has sufficient temporal signal to accurately estimate rates and dates. On one hand, we found that a species-wide clock model was methodologically unstable and did not lead to robust and reproducible estimates. On the other hand, when we partitioned the data by population, we recovered measurable temporal signal in 9 out of 12 populations. 

However, this recovery came with a significant trade-off, as many of these populations were then lacking the calibrating influence of ancient DNA samples. As a result, the accuracy of node-dating suffered and internal node dates were frequently estimated to be overly young. It was only in the pre-modern populations (Bronze Age, First Pandemic, Second Pandemic), with a minimum sampling time frame of 500 years, that rates and dates could be robustly estimated. It was somewhat surprising that no other population had a long enough sampling time frame to produce comparably robust results. For example, no temporal signal was detected in either of `1.IN` or `2.ANT`, despite these populations being sampled over a period of 54 and 110 years respectively. This may speak to the phylodynamic threshold of _Y. pestis_, as some populations may not be considered measurably-evolving until several centuries have passed. Overall, we find out results to be in agreement with previous studies [@duchene2016GenomescaleRatesEvolutionary] that suggest _Y. pestis_ does have temporal signal, but clock model estimates are highly dependent on dataset composition.

The second debate we engaged with was the phylogeographic modeling of past pandemics, specifically the Second Plague Pandemic. Our spatiotemporal model revealed that no migrations could be confidently reconstructed during this event, as location could be inferred at very few internal nodes. We therefore caution that, in isolation, _Y. pestis_ genomic evidence may be unsuitable for inferring point migrations and the directionality of spread. Instead, a more statistically appropriate line of inquiry may be to summarize how the geographic diversity changes over time. Alternatively, new methods have recently been developed to incorporate non-genetic evidence, such as outbreak case-occurrence records [@duchene2019InferringInfectiousDisease], into phylogeography analysis. This presents an exciting avenue for interdisciplinary collaboration, as explicitly integrative models will complement the strengths of genetic and historical evidence, while mitigating their respective weaknesses.


## Methods {.page_break_before}

A visual overview of the computational methods is provided in Figure @fig:workflow and is publicly available as a [[Snakemake|snakemake]] pipeline (https://github.com/ktmeaton/plague-phylogeography/).

### Data Collection

_Y. pestis_ genome sequencing projects were retrieved from the [[National Centre for Biotechnology Information|NCBI]] databases using NCBImeta [[Eaton 2019 NCBImeta\|[@eaton2019NCBImeta]]]. 1657 projects were identified and comprised three genomic types: 

- 586 modern assembled
- 184 ancient unassembled
- 887 modern unassembled

The 887 modern unassembled genomes were excluded from this project, as the wide variety of laboratory methods and sequencing strategies precluded a standardized workflow. In contrast, the 184 ancient unassembled genomes were retained given the relatively standardized, albeit specialized, laboratory procedures required to process ancient tissues. 

Collection location, collection date, and collection host metadata were curated by cross-referencing the original publications. Collection location was transformed to latitude and longitude coordinates using [[GeoPy]] [[Esmukov 2020 GeoPy Python Client\|[@esmukov2020GeoPyPythonClient]]]  and the [[Nominatim|Nominatim API]] [[Hoffman 2020 Nominatim Tool Search\|[@hoffman2020NominatimToolSearch]]] for [[OpenStreetMap]]  [[openstreetmapcontributors2017PlanetDumpRetrieved\|[@openstreetmapcontributors2017PlanetDumpRetrieved]]]. Coordinates were standardized at the level of country and province/state, using the centroid of each. Collection dates were standardized according to their year, and recording uncertainty arising from missing data and radiocarbon estimates. Genomes were removed if no associated date or location information could be identified in the literature, or if there was documented evidence of laboratory manipulation.

Two additional datasets were required for downstream analyses. First, *[[Yersinia pestis|Y. pestis]]* strain [[CO92]] (GCA_000009065.1) was used as the reference genome for sequence alignment and annotation. Second, *[[Yersinia pseudotuberculosis]]* strains [[NCTC10275]] (GCA_900637475.1) and [[IP32953]] (GCA_000834295.1) served as an outgroup to root the [[Maximum-likelihood\|maximum likelihood]] phylogeny.

### Alignment

Modern assembled genomes were aligned to the reference genome using [[Snippy]], a pipeline for core genome alignments [[Snippy 2020\|[@snippy2020]]]. Modern genomes were removed if the number of sites covered at a minimum depth of 10X was less than 70% of the reference genome.

Ancient unassembled genomes were downloaded from the SRA database in [[FASTQ]] format using the [[SRA Toolkit]] [[NCBI 2021 SRA Toolkit\|[@NCBI2021SRAToolkit]]]. Pre-processing and alignment to the reference genome was performed using the [[nf-core/eager]] pipeline, a reproducible workflow for ancient genome reconstruction [[Yates 2021 Reproducible Portable Efficient\|[@yates2021ReproduciblePortableEfficient]]]. Ancient genomes were removed if the number of sites covered at a minimum depth of 3X was less than 70% of the reference genome.

A multiple sequence alignment was constructed using the [[Snippy\|Snippy Core]] module of the [[Snippy]] pipeline [[Snippy 2020\|[@snippy2020]]]. The output alignment was filtered to only include chromosomal variants and to exclude sites that had more than 5% missing data.

### Data Partition

In an attempt to improve the performance and convergence of molecular clock analyses, a subsampled dataset was constructed and is referred to as the *reduced* dataset (N=191). Clades that contained multiple samples drawn from the same geographic location and the same time period were reduced to one representative sample. The sample with the shortest terminal branch length was prioritized, to diminish the influence of uniquely derived mutations on the estimated substitution rate. An interval of 25 years was identified as striking an optimal balance, resulting in 191 representative samples.

The full multiple alignment was alternatively split into 12 populations, referred to as the *population* datasets. These populations were defined by the intersection of the following nomenclature systems: the major branches, metabolic biovars, and historical time period. One sample was excluded, a *pestoides* isolate from the Bronze Age (Strain RT5, BioSample Accession SAMEA104488961), as this population would be of size N=1.

### Maximum-Likelihood Phylogeny

Model selection was performed on the *full* dataset (N=601) using [[Modelfinder]] [@kalyaanamoorthy2017ModelFinderFastModel] which identified the K3Pu+F+I model as the optimal choice based on the [[Bayesian Information Criterion\|Bayesian Information Criterion (BIC)]]. The K3P model [@kimura1981EstimationEvolutionaryDistances], also known as K81, estimates substitution rates using three categories, in this case: (1) A<->C equals G<->T, (2) A<->G equals C <->T, and (3) A<->T equals C<->G). The "u+F"suffix indicates that base frequencies will be empirically evaluated and thus are not assumed to be equal. The "+I" suffix indicates that a proportion of the alignment includes invariable sites (ie. non-SNPS), 

A [[Maximum-likelihood\|maximum-likelihood]] phylogeny was then estimated across 10 independent runs of [[IQTREE2]] [@minh2020IQTREENewModels]. Branch support was evaluated using 1000 iterations of the [[UFboot\|ultrafast bootstrap approximation]] [@hoang2018UFBoot2ImprovingUltrafast], with a threshold of 95% required for strong support.

### Molecular Clock

To explore the degree of temporal signal present in the data, two categories of tests were performed . The first was a [[Root to Tip Regression\|root-to-tip (RTT)]] regression on collection date using the python package ```statsmodels``` [[Seabold 2010 Statsmodels Econometric Statistical\|[@seabold2010StatsmodelsEconometricStatistical]]]. Given the relative simplicity of a regression model, the *full* dataset of 601 genomes was used. For the second test of temporal signal, a [[Bayesian Evaluation of Temporal Signal|Bayesian Evaluation of Temporal Signal (BETS)]] was conducted.

> Placeholder for methods from Sebastian and Leo.

### Phylogeography

> Placeholder for methods from Sebastian and Leo.

### Visualization

Data visualization was performed using seaborn [@waskom2021SeabornStatisticalData] and Auspice  [@hadfield2018NextstrainRealtimeTracking],  a component of the Nextstrain visualization suite.

## References {.page_break_before}

<div id="refs"></div>

## Supplementary Information   {.page_break_before}

| Population |        Time Period        |    Biovar     | Major Branch | Genomes | Oldest Sampling Date | Youngest Sampling Date |                     Descendants                     |
|:----------:|:-------------------------:|:-------------:|:------------:|:-------:|:--------------------:|:----------------------:|:-------------------------------------------------------------:|
|   1.ORI    |      Third Pandemic       | *Orientalis*  |      1       |   117   |         1924         |          2016          |                              --                               |
|    1.IN    |            --             | *Intermedium* |      1       |   39    |         1954         |          2008          |                             1.ORI                             |
|   1.ANT    |            --             |   *Antiqua*   |      1       |    4    |         1954         |          2004          |                              --                               |
|   1.PRE    |      Second Pandemic      |    *Pre*\*    |      1       |   40    |       1270\*\*       |        1800\*\*        |                      1.ORI, 1.IN, 1.ANT                       |
|   2.MED    |            --             | *Medievalis*  |      2       |   116   |         1912         |          2018          |                              --                               |
|   2.ANT    |            --             |   *Antiqua*   |      2       |   54    |         1924         |          2008          |                              --                               |
|   4.ANT    |            --             |   *Antiqua*   |      4       |   11    |         1977         |          2015          |                              --                               |
|   3.ANT    |            --             |   *Antiqua*   |      3       |   11    |         1961         |          2017          |                              --                               |
|   0.ANT4   |      First Pandemic       |   *Antiqua*   |      0       |   12    |       214\*\*        |        880\*\*         |                              --                               |
|   0.ANT    |            --             |   *Antiqua*   |      0       |   103   |         1947         |          2019          |    1.ORI, 1.IN, 1.ANT,<br />2.MED, 2.ANT, 3.ANT,<br />4.ANT, 0.ANT4     |
|    0.PE    |            --             |  *Pestoides*  |      0       |   85    |      -1918\*\*       |          2014          | 1.ORI, 1.IN, 1.ANT,<br />2.MED, 2.ANT, 3.ANT,<br />4.ANT, 0.ANT4, 0.ANT |
|   0.PRE    | Late Neolithic Bronze Age |    *Pre*\*    |      0       |    8    |      -2876\*\*       |       -1626\*\*        |                              --                               |

Table:  _Yersinia pestis_ population definitions according to an integrative approach using the major branches, biovars, and associated time periods. Populations are ordered based on the maximum-likelihood phylogeny, which was sorted by increasing node order. Four populations are paraphyletic (1.IN, 1.PRE, 0.ANT, 0.PE) and their descendant populations are listed. {#tbl:population}

\**Pre* is not a metabolic biovar and refers to "extinct" populations where metabolic status is unknown.<br />\*\*The sampling dates of ancient genomes include the 2-sigma range of radiocarbon estimates. 



![Population-specific rate variation in _Yersinia pestis_ as observed through regressions of root-to-tip distance on sampling age. The distance to the population MRCA was calculated using subtrees extracted from the maximum-likelihood phylogeny. ](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/1f888baa3/main/iqtree_stats/all/chromosome/full/filter5/rtt_regression_population.png){#fig:rtt_population width=100%}

<div style="page-break-after: always;"></div>

| Population |  N  |  Best Model   | Bayes Factor | Strict Clock No Dates | Strict Clock Dates | Relaxed Clock No Dates | Relaxed Clock Dates |
|:----------:|:---:|:-------------:|:------------:|:---------------------:|:------------------:|:----------------------:|:-------------------:|
|   1.ORI    | 117 | Relaxed Clock |      36      |       -5899691        |      -5899661      |        -5899601        |      -5899566       |
|    1.IN    | 39  |      --       |     -10      |       -5891399        |      -5891403      |        -5891344        |      -5891355       |
|   1.ANT    |  4  | Relaxed Clock |      13      |       -5882596        |      -5882587      |        -5882595        |      -5882582       |
|   1.PRE    | 40  | Relaxed Clock |      44      |       -5888140        |      -5888130      |        -5888082        |      -5888038       |
|   2.MED    | 116 | Relaxed Clock |      4       |       -5920837        |      -5920733      |        -5919662        |      -5919658       |
|   2.ANT    | 54  |      --       |     -13      |       -5892876        |      -5892895      |        -5892791        |      -5892805       |
|   4.ANT    | 11  | Relaxed Clock |      4       |       -5886031        |      -5886034      |        -5886026        |      -5886022       |
|   3.ANT    | 11  |      --       |     -11      |       -5887497        |      -5887506      |        -5887495        |      -5887506       |
|   0.ANT4   | 12  | Relaxed Clock |      6       |       -5889526        |      -5889520      |        -5889502        |      -5889496       |
|   0.ANT    | 103 | Relaxed Clock |    13298     |       -5896014        |      -5896016      |        -5895880        |      -5882582       |
|    0.PE    | 85  | Relaxed Clock |      12      |       -5945603        |      -5945574      |        -5944627        |      -5944614       |
|   0.PRE    |  8  | Relaxed Clock |     83*      |       -5892926        |      -5892843      |        -5892739        |      -5892741       |

Table: Model selection and log marginal likelihoods obtained from a Bayesian evaluation of temporal signal (BETS) test. \*0.PRE had temporal signal according to a strict clock, although the relaxed clock with no dates model had the highest likelihood. {#tbl:bets}

<div style="page-break-after: always;"></div>

![The subtrees extracted from the maximum-likelihood phylogeny for the _Yersinia pestis_ populations with (A) no detectable temporal signal, (B) ... Stars indicate the node representing the most recent common ancestor (MRCA). Grey branches indicate outliers, as defined by the 90% confidence interval of external branch lengths from all populations. ](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/f2aa4bd/main/iqtree_stats/all/chromosome/full/filter5/branch_lengths.png){#fig:branch_lengths width=80%}

<div style="page-break-after: always;"></div>

![The distribution of external branch lengths across the maximum-likelihood phylogeny. The threshold to be considered a long external branch is set at 1e-5 substitutions/site.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/281e59b/main/iqtree_stats/all/chromosome/full/filter5/long_branches.png){#fig:long_branches width=100%}

<div style="page-break-after: always;"></div>

| Population | Morelli et al. (2010) | Cui et al. (2013) | Pisarenko et al. 2021 |  This Study  |
|:----------:|:---------------------:|:-----------------:|:---------------------:|:------------:|
|   1.ORI    |      -326, 1793       |    1735, 1863     |      1744, 1842       |  1806, 1901  |
|   1.IN*    |      -2388, 1606      |                   |      1791, 1897       |  1651, 1913  |
|   1.ANT    |      -4909, 1377      |    1377, 1650     |      1483, 1704       |  1655, 1835  |
|   1.PRE    |          --           |    1312, 1353     |          --           |  1214, 1315  |
|   2.MED    |      -583, 1770       |                   |      1298, 1582       |  1560, 1845  |
|   2.ANT*   |      -3994, 1460      |                   |      1373, 1628       |  1509, 1852  |
|   4.ANT    |          --           |                   |      1611, 1816       |  1848, 1968  |
|   3.ANT*   |          --           |                   |      1531, 1742       |  1769, 1947  |
|   0.ANT4   |          --           |                   |          --           |   39, 234    |
|   0.ANT    |      -6857, 1199      |                   |      1033, 1435       |  1357, 1797  |
|    0.PE    |     -26641, -598      |    -4394, 510     |       -377, 499       |  1573, 1876  |
|   0.PRE    |          --           |        --         |          --           | -3098, -2786 |

Table: Bayesian parameter estimates across studies of the time to most recent common ancestor (tMRCA) by _Yersinia pestis_ population. {#tbl:beast_estimates_dates}

| Population | Mean Rate              | Mean Rate (95% HPD)                            |
| ---------- | ---------------------- | ---------------------------------------------- |
| 1.ORI      | 1.27 x 10<sup>-7</sup> | 1.07 x 10<sup>-7</sup>, 1.49 x 10<sup>-7</sup> |
| 1.IN       | 8.32 x 10<sup>-8</sup> | 5.81 x 10<sup>-8</sup>, 1.16 x 10<sup>-7</sup> |
| 1.ANT      | 5.84 x 10<sup>-8</sup> | 4.15 x 10<sup>-8</sup>, 9.27 x 10<sup>-8</sup> |
| 1.PRE      | 4.68 x 10<sup>-8</sup> | 3.88 x 10<sup>-8</sup>, 5.71 x 10<sup>-8</sup> |
| 2.MED      | 2.41 x 10<sup>-7</sup> | 2.01 x 10<sup>-7</sup>, 2.89 x 10<sup>-7</sup> |
| 2.ANT      | 8.18 x 10<sup>-8</sup> | 5.78 x 10<sup>-8</sup>, 1.05 x 10<sup>-7</sup> |
| 4.ANT      | 7.99 x 10<sup>-8</sup> | 4.61 x 10<sup>-8</sup>, 1.52 x 10<sup>-7</sup> |
| 3.ANT      | 6.25 x 10<sup>-8</sup> | 3.69 x 10<sup>-8</sup>, 1.05 x 10<sup>-7</sup> |
| 0.ANT4     | 3.63 x 10<sup>-8</sup> | 2.51 x 10<sup>-8</sup>, 4.51 x 10<sup>-8</sup> |
| 0.ANT      | 5.65 x 10<sup>-8</sup> | 4.28 x 10<sup>-8</sup>, 7.53 x 10<sup>-8</sup> |
| 0.PE       | 6.16 x 10<sup>-7</sup> | 4.62 x 10<sup>-7</sup>, 7.68 x 10<sup>-7</sup> |
| 0.PRE      | 5.56 x 10<sup>-8</sup> | 4.15 x 10<sup>-8</sup>, 6.33 x 10<sup>-8</sup> |


Table: Bayesian parameter estimates of the mean substitution rate by _Yersinia pestis_ population. {#tbl:beast_estimates_rates}




![Computational methods workflow.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/6bea409/main/report/workflow.png){#fig:workflow}


