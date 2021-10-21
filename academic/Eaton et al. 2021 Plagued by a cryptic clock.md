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
sectionsDepth: 4
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

- Species-wide clock is unstable. Population-clock recovers temporal signal.
- We identify 5 _Y. pestis_ populations with robust temporal signal and informative rates and dates. These include both ancient (Bronze Age, First Pandemic, Second Pandemic) and modern (Third Pandemic, _Medievalis_) populations with a minimum sampling time frame of 92 years. 
- All populations sampled over a shorter period had either no temporal signal or significant node-dating conflicts. 
- Without ancient DNA calibrations, the divergence dates of *Antiqua* (0.ANT, 1.ANT) and *Pestoides* (0.PE) were overly young by as much as 1000 years.
- Modern _Y. pestis_ is younger than previously thought.
- Ancient _Y. pestis_ is older.
- All have pretty wide confidence intervals (50-100 years)

**Conclusions**: The majority of _Y. pestis_ populations have detectable temporal signal. However, accurate node-dating presents a complex optimization problem, in which calibrating samples are maximized and rate variation is limited. Furthermore, the _Y. pestis_ genomic evidence in isolation is poorly suited to reconstructing point migrations between countries. Instead, the reconstruction of spread patterns may benefit tremendously from integrating higher-resolution evidence from interdisciplinary sources.


- The most comprehensive phylodynamic analysis of _Y. pestis_. Identify methods that are bad (single, clock), provide alternatives, and identify room for improvements. 
- 
- Phylodynamic threshold, short-time comparisons are not appropriate.
- This is the first evidence of detectable temporal signal in "modern" _Y. pestis_ populations without ancient DNA calibrations
- Framework for critically examining 




## Introduction {.page_break_before}

1. Plague has an impressively long and expansive history as a zoonosis of rodents.
2. Accompanying this prolific global presence is unnervingly high mortality. 
3. 

Plague has an impressively long and expansive history as a zoonosis of rodents. The earliest "fossil" evidence of the plague bacterium, *[[Yersinia pestis]]*, comes from [[Ancient DNA\|ancient DNA]] studies which date its first emergence in humans to the Late Neolithic Bronze Age (LNBA) [[Andrades Valtuena et al. 2017 Stone Age Plague\|[@andradesvaltuena2017StoneAgePlague; ]] [[Rascovan et al. 2019 Emergence Spread Basal\|@rascovan2019EmergenceSpreadBasal]]]. Over the last five thousand years, _Y. pestis_ has dispersed globally on numerous occasions, due to an ability to infect a variety of mammalian hosts  [@perry1997YersiniaPestisEtiologic] and ever-expanding trade networks [@yue2017TradeRoutesPlague]. Few regions of the ancient and modern world remain untouched by this disease, as plague has persisted until today on every continent except Australia and Antarctica [@who2017Plague].

Accompanying this prolific global presence is unnervingly high mortality. There have been at least three historically-documented pandemics of plague: the First Pandemic (6<sup>th</sup> to 8<sup>th</sup> century CE) [@wagner2014YersiniaPestisPlague; @mordechai2019JustinianicPlagueInconsequential], the Second Pandemic (14<sup>th</sup> to 19<sup>th</sup> century CE) [@varlik2014NewScienceOld], and the Third Pandemic (19<sup>th</sup> to 20<sup>th</sup> century CE) [@xu2014WetClimateTransportation]. The advent of each pandemic is marked by a devastating series of outbreaks, such as the medieval Black Death (1346-1353), which is estimated to have killed more than half of Europe's population  [@benedictow2021CompleteHistoryBlack].  This level of virulence is still observed today, as untreated pneumonic plague has a case fatality rate of nearly 100% [@prentice2007Plague; @salam2020DeathsAssociatedPneumonic]. As a result, plague maintains its status as a disease that is of vital importance for public health research.

There are few other pathogens that have had such a lasting impact on past and present human populations, and thus


A long-standing line of inquiry in plague research has been estimating the timing and location of past events. The most intensively researched events have been: (1) the first appearance of _Y. pestis_ in human populations [@rasmussen2015EarlyDivergentStrains], (2) the onset and progression of the three pandemics [@bos2011DraftGenomeYersinia; @cui2013HistoricalVariationsMutation; @wagner2014YersiniaPestisPlague], and (3) the inter-pandemic or "quiescent" periods where _Y. pestis_ recedes into wild rodent populations and disappears from the historical record [@zeppelini2018OngoingQuiescenceBorborema; @green2020HowMicrobeBecomes]. Our knowledge of these events has considerably deepened in recent years, owing in part to technological advancements such as the retrieval and sequencing of ancient DNA alongside new molecular clock dating methods. These advancements have thus empowered researchers to test hypotheses about plague's epidemiology further back in time with increasingly complex models. Despite this intensive interest and methodological advancement, the rate and time scale of evolution in _Y. pestis_ remains notoriously difficult to estimate.

This can largely be attributed to the substantial rate variation that has been documented across the phylogeny of *[[Yersinia pestis\|Y. pestis]]* [@cui2013HistoricalVariationsMutation; @spyrou2019PhylogeographySecondPlague]. As a result, considerable debate has emerged over whether *[[Yersinia pestis|Y. pestis]]* has no temporal signal [[Wagner et al. 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]], thereby preventing any meaningful rate estimate,  or if some _Y. pestis_ populations have such distinct rates that a species-wide signal is obscured [@duchene2016GenomescaleRatesEvolutionary]. This uncertainty has resulted in radically different rate and date estimates between studies, with node dates shifting by several millennia [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Rasmussen 2015 Early Divergent Strains\|@rasmussen2015EarlyDivergentStrains]]].

While there is little consensus concerning _Y. pestis_' absolute rates and dates, many studies agree that historical samples (ie. calibrations) strongly impact these estimates [@ho2009AccountingCalibrationUncertainty; @dornburg2012RelaxedClocksInferences]. Calibrating samples typically come from ancient DNA studies of archaeological populations, and help to account for sudden and extreme rate changes [@ho2009AccountingCalibrationUncertainty; @cui2013HistoricalVariationsMutation; @spyrou2019PhylogeographySecondPlague]. Experimental removal of these calibrations has been shown to reduce temporal signal [@duchene2016GenomescaleRatesEvolutionary] and thus heterochronous sampling is crucial when estimating rates and dates.


Fortunately, historical _Y. pestis_ samples have become abundant at an astonishing rate. The last decade has witnessed an explosion of ancient DNA studies, which have retrieved *[[Yersinia pestis|Y. pestis]]* from historical epidemics [[Bos et al. 2011 Draft Genome Yersinia\|[@bos2011DraftGenomeYersinia]]] and underrepresented regions [[Susat 2020 Yersinia Pestis Strains\|[@susat2020YersiniaPestisStrains]]]. The study of modern *[[Yersinia pestis|Y. pestis]]* populations has accelerated in tandem [@zhou2020EnteroBaseUserGuide], with the sequencing of bacterial culture collections containing early to mid-20<sup>th</sup> century strains [@kutyrev2018PhylogenyClassificationYersinia]. 


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

To determine the population structure of _Y. pestis_, we first estimated a maximum-likelihood phylogeny using 601 global isolates including 540 modern (89.9%) and 61 ancient (10.1%) strains. We rooted the tree using two genomes of the outgroup taxa _Yersinia pseudotuberculosis_. The alignment consisted of 10,249 variant positions exclusive to _Y. pestis_, with 3,844 sites shared by at least two strains. Following phylogenetic estimation, we pruned the outgroup taxa from the tree to more closely examine the genetic diversity of _Y. pestis_. In Figure @fig:divtree_map_timeline A, we contextualize the global phylogeny using three nomenclature systems: the major branches, metabolic biovars, and historical time periods.  In the following section, we compare and critique each system, identify any incongruent divisions and uncertainty, and explore an integrative approach for molecular clock analysis.

#### Biovars

The oldest system of _Y. pestis_ classification is the biovar nomenclature, which uses metabolic differences to define population structure. Accordingly, _Y. pestis_ can be categorized into four classical biovars: *Antiqua* (ANT), *Medievalis* (MED), *Orientalis* (ORI), and *microtus*/*pestoides* (PE) [@devignat1951VarietesEspecePasteurella; @zhou2004ComparativeEvolutionaryGenomics]. Non-classical biovars have also been introduced, such as the *Intermedium* biovar (IN), which reflects a transitional state from *Antiqua* to *Orientalis* [@li2009GenotypingPhylogeneticAnalysis]. The biovar system is simple in application, as it largely focuses on two traits: the ability to ferment glycerol and reduce nitrate [@zhou2004ComparativeEvolutionaryGenomics]. However, this simplicity is offset by the growing recognition of regional inconsistencies in metabolic profiles [@kutyrev2018PhylogenyClassificationYersinia]. This is further exacerbated by the sequencing of non-viable, "extinct" *Y. pestis* for which metabolic sub-typing is impossible [@bos2011DraftGenomeYersinia]. Researchers have responded to this uncertainty in a variety of ways, by extrapolating existing biovars [@wagner2014YersiniaPestisPlague] and creating new pseudo-biovars (PRE) [@rasmussen2015EarlyDivergentStrains]. Others have foregone the biovar nomenclature altogether in favor of locally-developed taxonomies [@kutyrev2018PhylogenyClassificationYersinia]. Despite extensive research, it remains unclear which metabolic traits, if any, can be used to classify _Y. pestis_ into distinct populations on a global scale.

#### Major Branches

In contrast to the biovar nomenclature which emphasizes phenotype, the major branch nomenclature focuses on phylogenetic relationships. This system divides the global phylogeny of *[[Yersinia pestis\|Y. pestis]]* into populations according to their relative position to a multifurcation called the “Big Bang” polytomy  [@cui2013HistoricalVariationsMutation]. All lineages that diverged prior to this polytomy are grouped into Branch 0 and those diverging after form Branches 1 through 4. Because this multifurcation plays such a central role in this system, there is great interest in estimating its timing and geographic origins [@green2020HowMicrobeBecomes; @green2020FourBlackDeaths]. However, the epidemiological significance of the “Big Bang” polytomy remains unclear, as no definitive phenotype has been identified that correlates with the observed branching pattern. 

#### Time Period

As ancient *[[Y. pestis]]* genomes cannot be classified via direct metabolic testing, researchers use an alternative strategy that incorporates contextual evidence such as the sampling age, historical time period, and potential pandemic associations. In ancient DNA studies, the genetic diversity of _Y. pestis_ is commonly divided into four time periods: the Late Neolithic Bronze Age [@rasmussen2015EarlyDivergentStrains], the First Pandemic [@wagner2014YersiniaPestisPlague], the Second Pandemic [@spyrou2019PhylogeographySecondPlague], and the Third Pandemic [@cui2013HistoricalVariationsMutation] (Figure @fig:divtree_map_timeline B).

The key strengths of the time period nomenclature are two-fold.  First, it provides a foundation for interdisciplinary discourse, in which genetic diversity can be contextualized and explained by relevant historical records. Second, this system effectively categorizes the historical outbreaks of plague recorded in Europe. This can be seen in Figure @fig:divtree_map_timeline, where the Bronze Age strains (0.PRE) in Europe are replaced by those of the First Pandemic (0.ANT4), which in turn are replaced by strains of the Second Pandemic (1.PRE). However, this system is far less effective in describing plague populations outside of Europe and incurs several risks.

The first risk, and thus weakness of this approach, is grouping unrelated populations. Contemporaneous strains often have distinct evolutionary histories [@spyrou2018Analysis3800yearoldYersinia] even when originating from the same plague foci. The *pestoides* (0.PE) and *Medievalis* (2.MED) biovars are informative examples, as these populations have co-existed in the Caucuses mountains since at least the 20th century (Figure @fig:divtree_map_timeline C). The second weakness of this system presents as the opposite problem, in which the time period nomenclature falsely separates related lineages. For example, there is growing awareness of the temporal overlap of the Second and Third Pandemics. Previously, the temporal extents of these events were mutually exclusive, dating from the 14<sup>th</sup> to 18<sup>th</sup> century, and the late 19<sup>th</sup> to mid-20<sup>th</sup> century respectively [@gage2005NaturalHistoryPlague]. Recent historical scholarship has contested this claim, and demonstrated that these constraints are a product of a Eurocentric view of plague [@varlik2014NewScienceOld]. The Second Pandemic is now recognized to have extended into at least the 19<sup>th</sup> Century [@bolanos2019OttomansGlobalCrises; @varlik2020PlagueThatNever] and the Third Pandemic is hypothesized to have began as early as the 18<sup>th</sup> century in southern China [@tan2002AtlasPlagueIts; @xu2014WetClimateTransportation].  However, since this period of overlap remains unsampled, it is unclear exactly how these pandemics can be genetically distinguished, if at all.

Yet another limitation of this system is that several populations are curiously excluded from the pandemic nomenclature. For example, Branch 2 populations emerged at the same time as, but separate from, the Second Pandemic and have been associated with high mortality epidemics [[Eroshenko 2021 Evolution Circulation Yersinia\|[@eroshenko2021EvolutionCirculationYersinia]]]. In particular, the *medievalis* population (2.MED) has spread throughout Asia (Figure @fig:divtree_map_timeline) and has been observed to have the fastest spread velocity of any *[[Yersinia pestis|Y. pestis]]* lineage [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]]. Given its epidemiological significance, it is surprising that Branch 2 populations continue to be overlooked in the pandemic taxonomy of *[[Yersinia pestis|Y. pestis]]*. As ancient DNA sampling strategies expand in geographic scope, and as more non-European historical sources are brought to bear, it will be important to consider how to best refashion the historical period nomenclature to encompass this diversity.

#### Integrative Approach

In light of this uncertainty and inconsistency, there exists no classification system which comprehensively represents the global population structure of _Y. pestis_. Instead, integrative approaches have been previously used in large comparative studies of *[[Yersinia pestis|Y. pestis]]* [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]]. We therefore take the intersection of the three taxonomic systems discussed previously and describe 12 populations for statistical analysis (SI Table 1). In the following sections, we highlight the novel insight and issues that arise when this population structure is explicitly incorporated into molecular clocks models and phylogeographic reconstructions.

<div style="page-break-after: always;"></div>

![The phylogenetic and spatiotemporal diversity of 601 _Yersinia pestis_ genomes. Populations were defined by integrating three nomenclature systems: the major branches, biovars, and time periods. **A**: The maximum-likelihood phylogeny with branch lengths scaled by genetic distance in substitutions per site. The tree was rooted using two genomes of the outgroup taxa _Y. pseudotuberculosis_, which were pruned before visualization. **B**: The mean sampling age of each genome with internal node dates bounded by ancient DNA calibrations. **C**: The sampling location of each genome with coordinates standardized to the centroid of the associated province/state.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/f943350/main/auspice/all/chromosome/full/filter5/ml/divtree_map_timeline.png){#fig:divtree_map_timeline width=85%}

<div style="page-break-after: always;"></div>

### Estimating Rates of Evolutionary Change

The extent of rate variation present in our updated genomic dataset is notably larger and more diverse than those used in previous studies [@spyrou2019PhylogeographySecondPlague; @pisarenko2021YersiniaPestisStrains]. A root-to-tip regression on sampling age reproduces the finding that substitution rates in *Y. pestis* are poorly represented by a simple linear model or "strict clock" (Figure @fig:rtt A).We found a very low coefficient of determination (R<sup>2</sup>=0.09) which indicates a large degree of unaccounted variation. This finding suggests that evolutionary change in _Y. pestis_ may be more appropriately estimated using a "relaxed clock", where rate variation is explicitly modeled. To test this hypothesis, we performed a Bayesian Evaluation of Temporal Signal (BETS) [@duchene2020BayesianEvaluationTemporal].  In brief, this method tested four model configurations including: (1) a strict clock, (2) a relaxed clock, (3) the true sampling ages, and (4) no sampling ages (ie. all contemporaneous). A comparison of the model likelihoods, or Bayes factors, was then used to assess the degree of temporal signal.

The BETS test was inconclusive when attempting to fit a single clock to the updated global diversity of _Y. pestis_. The Bayesian analysis exhibited poor sampling (ESS < 200) of the clock parameters across all model configurations, even when we reduced sources of variation by removing tip date uncertainty, fixing the tree topology, and removing up to 70% of genomes. The poor performance of a single clock model is consistent with several other studies where low ESS scores were observed [@rasmussen2015EarlyDivergentStrains] and divergence dates could not be estimated [@wagner2014YersiniaPestisPlague]. We therefore conclude that a single clock model is not currently a viable approach, as there is excessive rate variation across the global phylogeny of _Y. pestis_. We hypothesize that this model misspecification may help explain node-dating disparities between studies in the past [@morelli2010YersiniaPestisGenome, @cui2013HistoricalVariationsMutation; @rasmussen2015EarlyDivergentStrains].

In contrast to the single clock approach, we observed significant improvements when each population was assessed independently. All model parameters in our Bayesian analysis demonstrated convergence with ESS values well above 200 and we detected temporal signal in 9 out of 12 _Y. pestis_ populations (SI Table 2). Several populations appeared more clock-like than others, which was observed  in both the root-to-tip regression and the Bayesian rate estimation. For example, we found rate variation to be low in the Bronze Age (R<sup>2</sup>=0.92), moderate in the Second Pandemic (R<sup>2</sup>=0.76) and high in *Medievalis* (R<sup>2</sup>=0.02). These population-specific trends are consistent with recent analyses [@duchene2016GenomescaleRatesEvolutionary; @rascovan2019EmergenceSpreadBasal] which demonstrated that the degree of temporal signal in _Y. pestis_ varies according to which populations are included. Overall, our results indicate that using population specific models is a more robust approach than using a single species clock. 

In the following sections, we critique this approach further and discuss the interpretive consequences of our estimated rates and dates. First, we examine _Y. pestis_ populations with no detectable temporal signal and the time frame over which they were sampled. These "negative" results serve a crucial purpose in informing us about the minimum sampling time frame, or **phylodynamic threshold**, for which robust temporal estimates can be obtained. Second, we identify populations that have temporal signal but are associated with unreliable dates when assessed using external calibrations. We explore how **sampling bias** drives this outcome, which has led to poor reproducibility between studies. Third, we identify which populations have the most reliable temporal estimates, for which **informative rates and dates** can be obtained. We discuss how these molecular dates have changed our understanding of .. "origin" stories, and complement historical scholarship that includes more diverse, non-European sources.
... Finally, we discuss how these results inform **phylogeographic** analysis, in which the ancestral location and spread of _Y. pestis_ is estimated. ...

<div style="page-break-after: always;"></div>

![Substitution rate variation in _Yersinia pestis_. **A**: A root-to-tip regression on mean sampling age using all genomes from the maximum-likelihood phylogeny. **B**: A root-to-tip regression on mean sampling age by population. The distance to the population MRCA was calculated using subtrees extracted from the maximum-likelihood phylogeny. **C**: Bayesian substitution rates by population across branches of the maximum-clade credibility (MCC) trees. ](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/cb00c8c/main/iqtree_stats/all/chromosome/full/filter5/rtt.png){#fig:rtt width=85%}

### The Phylodynamic Threshold {.page_break_before}

We found several _Y. pestis_ populations with no detectable temporal signal which include the *Intermedium* (1.IN) and *Antiqua* biovars (2.ANT, 3.ANT). Despite being sampled over a period as long as 84 years, these populations have not accumulated sufficient evolutionary change to yield informative divergence dates. This limited diversity can be identified in the maximum-likelihood phylogeny, as these populations have the highest density of nodes close to their roots (SI Figure @fig:branch_lengths). As another *Antiqua* population (4.ANT) has a similar node distribution, with a smaller number of samples (N=12) collected over an even shorter time frame (38 years), we also regard the rates and dates associated with 4.ANT to be non-informative out of an abundance of caution.

The lack of temporal signal in these populations suggest that _Y. pestis_ must be sampled over multiple decades before robust temporal estimates can be obtained. This time frame is largely consistent with the finding that _Y. pestis_ has one of the slowest substitution rates observed among bacterial pathogens [@duchene2016GenomescaleRatesEvolutionary]. In our study, we found that all populations had a median rate of less than 1 substitution per year (Figure @fig:rtt C, SI Table 4). Specifically, we observed the substitution rate to range from the lowest in *Antiqua* (0.ANT) at 1 substitution every 14.1 years (1.7 x 10<sup>-8</sup> subs/site/year) to an order of magnitude higher in *Pestoides* (0.PE) at 1 substitution every 1.1 years (2.1 x 10<sup>-7</sup> subs/site/year). In application, this means that some _Y. pestis_ lineages cannot be differentiated until decades have passed, a concept generally referred to as the phylodynamic threshold.

The phylodynamic threshold has been rigorously explored in other pathogens [@duchene2020TemporalSignalPhylodynamic], but not explicitly tested in _Y. pestis_. However, researchers have anecdotally mentioned the challenges in reconstructing intra-epidemic plague diversity. For example, isolates from the Second Pandemic dated to the medieval [[Black Death]] (1346-1353) were observed to be indistinguishable clones [@spyrou2016HistoricalPestisGenomes] thus extinguishing any hope of reconstructing the spread of this catastrophic event from genetic evidence. Our rate estimation for the Second Pandemic (1.PRE) is congruent with this, with a median rate of 1 substitution every 9.5 years (2.5  x 10<sup>-8</sup> subs/site/year). This suggests that the clonal nature of the Black Death is not an exceptional event, and is in fact entirely expected based on the short sampling time frame. Our results develop this issue even further, by demonstrating that non-informative dates were obtained from populations sampled over a period as long as 84 years. This highlights a significant limitation and cautionary note for plague research, as genetic evidence may not be suitable for reconstructing the timing of short-term, epidemic events.

Aside from the aforementioned Black Death, another event that remains enigmatic is the re-emergence of plague during the Third Pandemic. Prior to the dispersal of _Y. pestis_ out of Hong Kong in 1894, highly localized epidemics were observed in southern China [@xu2014WetClimateTransportation; @xu2019HistoricalGenomicData]. The genomic evidence is consistent with this geographic narrative, as the Third Pandemic population (1.ORI) diverges from an _Intermedium_ (1.IN) clade that is geographically restricted to the southern province of Yunnan (Figure @fig:divtree_1.IN_1.ORI). Unfortunately, the available genetic evidence does not further our understanding of the timing of these precursor events, as the _Intermedium_ (1.IN) population has no detectable temporal signal. However, the long internal branch that connects 1.IN and 1.ORI suggests there is significant diversity that remains unsampled. A key avenue for future research will therefore be to expand the sampling time frame and diversity of *Intermedium* (1.IN) in order to test whether temporal signal can be recovered. If possible, this will contribute a new line of evidence to the discourse surrounding the epidemiology of the Third Pandemic [@benedict1988BubonicPlagueNineteenthCentury] and the driving factors behind this re-emergence.

![The phylogenetic relationship between the Third Pandemic (1.ORI) and the ancestral *Intermedium* population (1.IN). The subtree was extracted from the maximum-likelihood phylogeny with branch lengths scaled by genetic distance in substitutions per site. The phylogeny is annotated with node dates (95% HPD) from the Bayesian analysis, where each population was assessed independently. Grey branches indicate outliers, as defined by the 90% confidence interval of external branch lengths from all populations.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/451ffbd/main/auspice/all/chromosome/full/filter5/ml/divtree_1.IN_1.ORI.png){#fig:divtree_1.IN_1.ORI width=80%}

### Sampling Bias {.page_break_before}

We observed two populations associated with significant node-dating conflicts, despite having detectable temporal signal. These populations include the *Pestoides* (0.PE) and *Antiqua* (0.ANT) biovars which are both non-monophyletic. Conflicts were identified by comparing their estimated time to the most recent common ancestor (tMRCA) to that of their descendant populations. For example, the First Pandemic (0.ANT4) is a descendant clade of the larger *Antiqua* (0.ANT) population based on the maximum-likelihood phylogeny (Figure @fig:divtree_0.ANT_0.ANT4). Thus, we would expect the tMRCA of the ancestral 0.ANT to pre-date the First Pandemic, for which ancient DNA calibrations are available. Instead, the tMRCA of 0.ANT is far too young (1357 - 1797 CE), and incorrectly post-dates the tMRCA of 0.ANT4 (39 - 234 CE) by more than a millennium. This outcome is somewhat paradoxical, as these populations have robust temporal signal and yet a critical examination of their divergence dates reveals they are unreliable. 

![The phylogenetic relationship and node-dating conflicts between the First Pandemic (0.ANT4) and the ancestral *Antiqua* population (0.ANT). The subtree was extracted from the maximum-likelihood phylogeny with branch lengths scaled by genetic distance in substitutions per site. The phylogeny is annotated with node dates (95% HPD) from the Bayesian analysis, where each population was assessed independently. Grey branches indicate outliers, as defined by the 90% confidence interval of external branch lengths from all populations.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/2c9e8aa/main/iqtree_stats/all/chromosome/full/filter5/divtree_0.ANT_0.ANT4.png){#fig:divtree_0.ANT_0.ANT4 width=70%}

This conflicting pattern has been previously described and attributed to sampling bias [@duchene2019InferringInfectiousDisease; @kalkauskas2021SamplingBiasModel]. Specifically, the driving factor in _Y. pestis_ appears to be insufficient sampling of basal branches in the presence of extensive rate variation. The two affected populations, *Antiqua* (0.ANT) and *Pestoides* (0.PE), have a low density of nodes close to their roots in the maximum-likelihood phylogeny (SI Figure @fig:branch_lengths). This pattern is also observed in another *Antiqua* population (1.ANT) which has a small sample size (N=4) and has previously been linked to rate acceleration events [@cui2013HistoricalVariationsMutation]. We thus conclude that the dates associated with these three populations (0.PE, 0.ANT, 1.ANT) should be considered non-informative.

These node-dating issues reveal a significant limitation in our approach of estimating population-specific clock models. We demonstrate that defining _Y. pestis_ population by time period can have deleterious effects, as ancient plague genomes serve a crucial role in calibrating for rate changes that are otherwise unsampled in modern populations. In these cases, we expect an optimization approach to be more ideal, in which a few closely related populations are merged or select ancient DNA calibrations are introduced [@spyrou2018Analysis3800yearoldYersinia]. Otherwise, divergence dates in these populations (0.ANT, 0.PE) tend to be overly young, sometimes by more than a 1000 years [@pisarenko2021YersiniaPestisStrains], and are rarely reproduced between studies (Table @tbl:comparison_dates).

Our inability to infer divergence dates due to sampling bias also has several historical implications. Perhaps the most significant concerns the emergence of plague in Africa, which makes up 90% of all modern plague cases [@munyenyiwa2019PlagueZimbabwe1974]. Alarmingly, little progress has been made in sampling Africa plague diversity as this region is represented by only 1.5% (9/601) of all genomes. Furthermore, the oldest genetic evidence of African plague comes from the 1.ANT population, which in itself has only 4 representative strains. Despite this sparse sampling, researchers have repeatedly attempted to use genomic evidence to date the first appearance of _Y. pestis_ in Africa [@morelli2010YersiniaPestisGenome; @cui2013HistoricalVariationsMutation; @pisarenko2021YersiniaPestisStrains]. The result is that few studies have published congruent dates for this event, and the majority of tMRCA estimates for 1.ANT are non-overlapping (Table @tbl:comparison_dates). Given this poor reproducibility, we caution that these divergence dates are of limited value for historical interpretation [@green2018PuttingAfricaBlack; @nyirenda2018MolecularEpidemiologicalInvestigations; @pisarenko2021YersiniaPestisStrains] and should be treated with great skepticism.

| Population | Morelli et al. (2010) | Cui et al. (2013) | Pisarenko et al. (2021) |  This Study  |
|:----------:|:---------------------:|:-----------------:|:-----------------------:|:------------:|
|   1.ORI    |      -326, 1793       |    1735, 1863     |       1744, 1842        |  1806, 1901  |
|   1.IN*    |      -2388, 1606      |    1500, 1750‡    |       1791, 1897        |  1651, 1913  |
|   1.ANT†   |      -4909, 1322      |    1377, 1650     |       1483, 1704        |  1655, 1835  |
|   1.PRE    |          --           |    1312, 1353     |           --            |  1214, 1315  |
|   2.MED    |      -583, 1770       |    1550, 1800‡    |       1413, 1653        |  1560, 1845  |
|   2.ANT*   |      -3994, 1460      |    1550, 1800‡    |       1373, 1628        |  1509, 1852  |
|   4.ANT*   |          --           |    1200, 1700‡    |       1611, 1816        |  1848, 1968  |
|   3.ANT*   |          --           |    1450, 1850‡    |       1531, 1742        |  1769, 1947  |
|   0.ANT4   |          --           |        --         |           --            |   39, 234    |
|   0.ANT†   |      -6857, 1199      |     100, 1100     |       1033, 1435        |  1357, 1797  |
|   0.PE†    |     -26641, -598      |    -4394, 510     |        -377, 499        |  1573, 1876  |
|   0.PRE    |          --           |        --         |           --            | -3098, -2786 |

Table: Bayesian estimates of the time to most recent common ancestor (tMRCA) across _Y. pestis_ studies. Uncertainty surrounding the tMRCA is represented by the 95% highest posterior density (HPD) interval. A dash indicates the study did not incorporate genomes from the population. Morelli et al. (2010) fit a strict clock to 16 modern genomes. Cui et al. (2013) fit an uncorrelated lognormal (UCLN) relaxed clock to 1 ancient and 132 modern genomes. Pisarenko et al. (2021) fit a strict clock to 345 modern genomes. This study fit independent UCLN relaxed clocks to 540 modern and 61 ancient genomes, separated by population. {#tbl:comparison_dates}

\* No detectable temporal signal.<br>
† Dates considered non-informative in this study due to phylogenetic sampling bias.<br>
‡ Visually estimated from the published time-scaled phylogeny.

### Informative Rates and Dates {.page_break_before}

After excluding populations with no detectable signal and node-dating conflicts, we identified five populations with potentially informative rates and dates. These include the Third Pandemic (1.ORI), *Medievalis* (2.MED), the Second Pandemic (1.PRE), the First Pandemic (0.ANT4), and the Bronze Age (0.PRE). These populations share several traits which make their temporal estimates particularly robust and of great historical significance. The first trait, is that these five populations were sampled over the longest time frames, ranging from 92 years during the Third Pandemic (1.ORI) to 1250 years in the Bronze Age (1.PRE). This affirms the importance of long-term heterochronous sampling in _Y. pestis_, which has only been made possible through the specialized retrieval of ancient DNA [@bos2011DraftGenomeYersinia] and retroactive sequencing of early 20<sup>th</sup> century culture collections [@eroshenko2021EvolutionCirculationYersinia]. As our study is the first to curate and contextualize this new heterochronous data, we demonstrate for the first time that temporal signal can be recovered in modern _Y. pestis_  without the use of ancient DNA calibrations. This suggests that temporal estimates may soon be possible for all _Y. pestis_ populations, as global sampling efforts intensify and diversify. 

The second similarity, which drives the first, is that these five populations are considered to be of high epidemiological importance. The Bronze Age marks the first known appearance of _Y. pestis_ in humans, and the three pandemics, along with *Medievalis*, are associated with high mortality and rapid spread [@xu2014WetClimateTransportation]. Of all _Y. pestis_ populations, we know the most about the epidemiology of the Third Pandemic due to its relatively recent re-emergence and widespread global impact [@xu2019HistoricalGenomicData]. Therefore, the Third Pandemic (1.ORI) presents the ideal case study to critique our molecular dates using the abundance of historical evidence.

We estimate that the Third Pandemic (1.ORI) population emerged around 1885 (95% HPD: 1806 - 1901 CE) (Figure @fig:divtree_1.IN_1.ORI). This interval aligns with the broad timeline of the Third Pandemic as reconstructed from epidemiological reports [@benedict1988BubonicPlagueNineteenthCentury; @xu2014WetClimateTransportation; @xu2019HistoricalGenomicData].  Highly localized plague cases began appearing in southern China (1772-1800), followed by short-distance diffusion (1800-1880), which then reached the southern coast (1880-1900) and spread internationally out of Hong Kong (1894). Our estimate also overlaps with the majority of previous studies, although is the youngest tMRCA thus far (Table @tbl:comparison_dates). This comparison not only demonstrates the reproducibility of our estimate, but also reveals how the "origin" story of the Third Pandemic is changing. The genetic root was once estimated to be as old as 326 BCE [@morelli2010YersiniaPestisGenome] but is now resolved to be much younger (19<sup>th</sup> century CE). This younger date is particularly intriguing, as the world experienced a major epidemiological transition in the 19<sup>th</sup> century with the emergence of the first pandemics of cholera [@ryan2011CholeraPandemicStill] and influenza [@brussow2021WhatWeCan]. Thus reconstructing the evolutionary history of the Third Plague Pandemic may not only inform us about the epidemiology of plague, but contribute to a broader understanding of re-emerging diseases in the modern era. 

In contrast, less is known about the *Medievalis* population due its more ancient origin. *Medievalis* strains were hypothesized to be responsible for plague outbreaks in the Caspian Sea region which reoccurred throughout the 19<sup>th</sup> and 20<sup>th</sup> centuries [@eroshenko2021EvolutionCirculationYersinia]. We estimate that the most recent common ancestor of _Medievalis_ (2.MED) emerged around 1796 (1560 - 1845 CE, 95% HPD) which overlaps with all previously published estimates (Table @tbl:comparison_dates). While this population was once thought to have emerged as early as 583 BCE, there is now growing consensus that the earliest possible emergence was in the 16<sup>th</sup> century CE. This raises an intriguing possibility, in which distinct _Y. pestis_ populations were co-circulating during the Second Pandemic. Specifically, the Caspian Sea region appears to be a nexus of plague as the only known area where the distributions of European and Asian _Y. pestis_ overlap (Figure @fig:map_caucasus). Thus an important avenue for future research will be to test this hypothesis further, to better understand if distinct populations of _Y. pestis_ were co-circulating during the Second Pandemic and how this affected disease exposure in nearby human populations.

![The overlapping geographic distributions of the Second Pandemic (1.PRE), _Medievalis_ (2.MED), and _Pestoides_ (0.PE) populations. The sampling location of each genome was standardized to the centroid of the associated province and/or state.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/346bd65/main/auspice/all/chromosome/full/filter5/ml/map_caucasus.png){#fig:map_caucasus width=100%}
 
A common theme thus far, is that the genetic origins of past epidemics pre-date the traditional historical narratives. This 


Our temporal estimates of ancient _Y. pestis_  share a common theme, in that the genetic origins of past pandemics pre-date the traditional historical narratives. For example, the earliest textual evidence of the Second Pandemic (1.PRE) comes from the Black Death (1346). However, we estimate the tMRCA of this population to be earlier, around 1300 CE (1214 - 1315 CE, 95% HPD). Similarly, the first recorded outbreaks of plague during the First Pandemic (0.ANT4) come from the Plague of Justinian (541 CE) [@little2007PlagueEndAntiquity]. Instead, we estimate that the strains of _Y. pestis_ associated with the First Pandemic shared a common ancestor around 399 CE (272 - 465 CE, 95% HPD).  We argue, as others have before, that these disparate timelines are largely due to geographic sampling biases, as western European sources dominate both the genetic and historical record. Recent historical scholarship has contested these Eurocentric timelines [@hashemishahraki2016PlagueIranIts; @varlik2020PlagueThatNever], by demonstrating that plague appeared much earlier and persisted for far longer, in western Asia. Genetic dating thus plays a critical role in supporting these historical critiques, by expanding the timelines of past pandemics and making space for more diverse historical narratives to be included.

> _Medievalis_ is a great transition to phylogeography.

### Phylogeography {.page_break_before}

Lots of challenges doing phylogeography in plague. The big problem is a slow evolutionary rate paired with rapid geographic spread. For example, the median substitution rate in 1.PRE is 1 substitution every 9.5 years. Plague strains across countries are often identical (ex. clonal black death).

Phylogeographic reconstructions are poor in _Y. pestis_ 

Lack of geographic structure, closely related strains are not necessarily in close geographic proximity.

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

![Population-specific rate variation in _Yersinia pestis_ as observed through regressions of root-to-tip distance on sampling age. The distance to the population MRCA was calculated using subtrees extracted from the maximum-likelihood phylogeny. ](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/1f888baa3/main/iqtree_stats/all/chromosome/full/filter5/rtt_regression_population.png){#fig:rtt_population width=100%}

<div style="page-break-after: always;"></div>

![The subtrees extracted from the maximum-likelihood phylogeny for the _Yersinia pestis_ populations with (A) no detectable temporal signal, (B) ... Stars indicate the node representing the most recent common ancestor (MRCA). Grey branches indicate outliers, as defined by the 90% confidence interval of external branch lengths from all populations. ](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/f2aa4bd/main/iqtree_stats/all/chromosome/full/filter5/branch_lengths.png){#fig:branch_lengths width=80%}

<div style="page-break-after: always;"></div>

![The distribution of external branch lengths across the maximum-likelihood phylogeny. The threshold to be considered a long external branch is set to higher than the 90% confidence interval of 4.98 x 10<sup>-5</sup> substitutions/site.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/281e59b/main/iqtree_stats/all/chromosome/full/filter5/long_branches.png){#fig:long_branches width=100%}

<div style="page-break-after: always;"></div>

![Computational methods workflow.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/6bea409/main/report/workflow.png){#fig:workflow}


