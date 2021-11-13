---
project: [[plague-phylogeography]]
due: Nov 05, 2021
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
numberSections: True
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

## Introduction {.page_break_before}

Plague has an impressively long and expansive history as a zoonosis of rodents. The earliest "fossil" evidence of the plague bacterium, _Yersinia pestis_, comes from ancient DNA studies which date its first emergence in humans to the Late Neolithic Bronze Age (LNBA) [@andradesvaltuena2017StoneAgePlague; @rascovan2019EmergenceSpreadBasal]. Over the last five thousand years, _Y. pestis_ has dispersed globally on numerous occasions, due to an ability to infect a variety of mammalian hosts  [@perry1997YersiniaPestisEtiologic] and ever-expanding trade networks [@yue2017TradeRoutesPlague]. Few regions of the ancient and modern world remain untouched by this disease, as plague has persisted until today on every continent except Australia and Antarctica [@who2017Plague].

Accompanying this prolific global presence is unnervingly high mortality. There have been at least three historically-documented pandemics of plague: the First Pandemic (6<sup>th</sup> to 8<sup>th</sup> century CE) [@wagner2014YersiniaPestisPlague; @mordechai2019JustinianicPlagueInconsequential], the Second Pandemic (14<sup>th</sup> to 19<sup>th</sup> century CE) [@varlik2014NewScienceOld], and the Third Pandemic (19<sup>th</sup> to 20<sup>th</sup> century CE) [@xu2014WetClimateTransportation]. The advent of each pandemic has been marked by a devastating series of outbreaks, such as the medieval Black Death (1346 - 1353 CE), which is estimated to have killed more than half of Europe's population  [@benedictow2021CompleteHistoryBlack].  This level of virulence can still be observed today, as untreated pneumonic plague can have a case fatality rate of nearly 100% [@prentice2007Plague; @salam2020DeathsAssociatedPneumonic]. As a result, plague maintains its status as a disease that is of vital importance for public health research.

A long-standing line of inquiry in plague research has been estimating the timing and location of past events. The most intensively researched events have been: (1) the first appearance of _Y. pestis_ in human populations [@rasmussen2015EarlyDivergentStrains], (2) the onset and progression of the three pandemics [@bos2011DraftGenomeYersinia; @cui2013HistoricalVariationsMutation; @wagner2014YersiniaPestisPlague], and (3) the inter-pandemic or "quiescent" periods where _Y. pestis_ recedes into wild rodent populations and disappears from the historical record [@zeppelini2018OngoingQuiescenceBorborema; @green2020HowMicrobeBecomes]. Our knowledge of these events has considerably deepened in recent years, owing in part to technological advancements such as the retrieval and sequencing of ancient DNA alongside new molecular clock dating methods. These advancements have thus empowered researchers to test hypotheses about plague's epidemiology further back in time with increasingly complex models. Despite this intensive interest and methodological advancement, the rate and time scale of evolution in _Y. pestis_ remains notoriously difficult to estimate.

This can largely be attributed to the substantial rate variation that has been documented across the phylogeny of _Y. pestis_ [@cui2013HistoricalVariationsMutation; @spyrou2019PhylogeographySecondPlague]. As a result, considerable debate has emerged over whether _Y. pestis_ has no temporal signal [@wagner2014YersiniaPestisPlague], thereby preventing any meaningful rate estimate,  or if some _Y. pestis_ populations have such distinct rates that a species-wide signal is obscured [@duchene2016GenomescaleRatesEvolutionary]. This uncertainty has resulted in radically different rate and date estimates between studies, with node dates shifting by several millennia [@cui2013HistoricalVariationsMutation; @rasmussen2015EarlyDivergentStrains].

In response to these debates and obstacles, our objectives in this study were to: (1) Curate and contextualize the most recent _Y. pestis_ genomic evidence, (2) Review and critique our current understanding of plague's population structure, (3) Devise a new approach for recovering temporal signal in _Y. pestis_, (4) Critically assess the reliability of our temporal estimates, (5) Discuss the methodological and interpretive consequences of our divergence dates using informative historical examples. Progress towards these key objectives is anticipated to benefit both prospective studies of plague, such as environmental surveillance and outbreak monitoring, and retrospective studies, which seek to date the emergence and spread of past pandemics.

## Results and Discussion

### Population Structure 

To determine the population structure of _Y. pestis_, we first estimated a maximum-likelihood phylogeny using 601 global isolates including 540 modern (89.9%) and 61 ancient (10.1%) strains. We rooted the tree using two genomes of the outgroup taxa _Yersinia pseudotuberculosis_. The alignment consisted of 10,249 variant positions exclusive to _Y. pestis_, with 3,844 sites shared by at least two strains. Following phylogenetic estimation, we pruned the outgroup taxa from the tree to more closely examine the genetic diversity of _Y. pestis_. In Figure @fig:divtree_map_timeline A, we contextualize the global phylogeny using three nomenclature systems: the major branches, metabolic biovars, and historical time periods.  In the following section, we compare and critique each system, identify any incongruent divisions and uncertainty, and explore an integrative approach for molecular clock analysis.

#### (i) Biovars

The oldest system of _Y. pestis_ classification is the biovar nomenclature, which uses metabolic differences to define population structure. Accordingly, _Y. pestis_ can be categorized into four classical biovars: *Antiqua* (ANT), *Medievalis* (MED), *Orientalis* (ORI), and *microtus*/*pestoides* (PE) [@devignat1951VarietesEspecePasteurella; @zhou2004ComparativeEvolutionaryGenomics]. Non-classical biovars have also been introduced, such as the *Intermedium* biovar (IN), which reflects a transitional state from *Antiqua* to *Orientalis* [@li2009GenotypingPhylogeneticAnalysis]. The biovar system is simple in application, as it largely focuses on two traits: the ability to ferment glycerol and reduce nitrate [@zhou2004ComparativeEvolutionaryGenomics]. However, this simplicity is offset by the growing recognition of regional inconsistencies in metabolic profiles [@kutyrev2018PhylogenyClassificationYersinia]. This is further exacerbated by the sequencing of non-viable, "extinct" *Y. pestis* for which metabolic sub-typing is challenging [@bos2011DraftGenomeYersinia]. Researchers have responded to this uncertainty in a variety of ways, by extrapolating existing biovars [@wagner2014YersiniaPestisPlague] and creating new pseudo-biovars (PRE) [@rasmussen2015EarlyDivergentStrains]. Others have foregone the biovar nomenclature altogether in favor of locally-developed taxonomies [@kutyrev2018PhylogenyClassificationYersinia]. Despite extensive research, it remains unclear which metabolic traits, if any, can be used to classify _Y. pestis_ into distinct populations on a global scale.

#### (ii) Major Branches

In contrast to the biovar nomenclature which emphasizes phenotype, the major branch nomenclature focuses on phylogenetic relationships. This system divides the global phylogeny of *[[Yersinia pestis\|Y. pestis]]* into populations according to their relative position to a multifurcation called the “Big Bang” polytomy  [@cui2013HistoricalVariationsMutation]. All lineages that diverged prior to this polytomy are grouped into Branch 0 and those diverging after form Branches 1 through 4. Because this multifurcation plays such a central role in this system, there is great interest in estimating its timing and geographic origins [@green2020HowMicrobeBecomes; @green2020FourBlackDeaths]. However, the epidemiological significance of the “Big Bang” polytomy remains unclear, as no definitive phenotype has been identified that correlates with the observed branching pattern. 

#### (iii) Time Period

As ancient _Y. pestis_ genomes cannot be easily classified via direct metabolic testing, researchers use an alternative strategy that incorporates contextual evidence such as the sampling age, historical time period, and potential pandemic associations. In ancient DNA studies, the genetic diversity of _Y. pestis_ is commonly divided into four time periods: the Late Neolithic Bronze Age [@rasmussen2015EarlyDivergentStrains], the First Pandemic [@wagner2014YersiniaPestisPlague], the Second Pandemic [@spyrou2019PhylogeographySecondPlague], and the Third Pandemic [@cui2013HistoricalVariationsMutation] (Figure @fig:divtree_map_timeline B).

The key strengths of the time period nomenclature are two-fold.  First, it provides a foundation for interdisciplinary discourse, in which genetic diversity can be contextualized and explained using relevant historical records. Second, this system effectively categorizes the historical outbreaks of plague recorded in Europe. This can be seen in Figure @fig:divtree_map_timeline, where the Bronze Age strains (0.PRE) in Europe are replaced by those of the First Pandemic (0.ANT4), which in turn are replaced by strains of the Second Pandemic (1.PRE). However, this system is far less effective in describing plague populations outside of Europe and incurs several risks.

The first risk is artificially grouping unrelated populations. Contemporaneous strains can have distinct evolutionary histories [@spyrou2018Analysis3800yearoldYersinia] even when originating from the same plague foci. The *Pestoides* (0.PE) and *Medievalis* (2.MED) biovars are informative examples, as these populations have co-existed in the Caucuses mountains since at least the 20th century (Figure @fig:divtree_map_timeline C). 

The second risk is artificially separating related populations. The Second and Third Pandemics were previously seen as mutually exclusive events dated to the 14<sup>th</sup> to 18<sup>th</sup> century, and the late 19<sup>th</sup> to mid-20<sup>th</sup> century respectively [@gage2005NaturalHistoryPlague]. Recent historical scholarship has contested this claim and demonstrated that these dating constraints are a product of a Eurocentric view of plague [@varlik2014NewScienceOld].  
 The Second Pandemic is now recognized to have extended into at least the 19<sup>th</sup> Century [@bolanos2019OttomansGlobalCrises; @varlik2020PlagueThatNever] and the Third Pandemic is hypothesized to have began as early as the 18<sup>th</sup> century [@tan2002AtlasPlagueIts; @xu2014WetClimateTransportation]. Phylogenetic analysis has also revealed genetic continuity between these two events, as the Third Pandemic (1.ORI) is a direct descendant of the Second Pandemic (1.PRE) [@spyrou2016HistoricalPestisGenomes]. However, the period of overlap has not been directly sampled, and thus it is unclear how to distinguish these pandemics using genetic evidence.

A final limitation is that several populations are curiously excluded from the pandemic nomenclature altogether. For example, Branch 2 populations emerged at the same time as, but separate from, the Second Pandemic and have been associated with high mortality epidemics [[Eroshenko 2021 Evolution Circulation Yersinia\|[@eroshenko2021EvolutionCirculationYersinia]]]. In particular, the *Medievalis* population (2.MED) has spread throughout Asia (Figure @fig:divtree_map_timeline) with the fastest spread velocity of any _Y. pestis_ lineage [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]]. Given its epidemiological significance, it is surprising that Branch 2 populations continue to be overlooked in the pandemic taxonomy of *[[Yersinia pestis|Y. pestis]]*. As ancient DNA sampling strategies expand in geographic scope, and as more non-European historical sources are brought to bear, it will be important to consider how best to refashion the historical period nomenclature to encompass this diversity.

#### (iv) Integrative Approach

In light of this uncertainty and inconsistency, there exists no current classification system which comprehensively represents the global population structure of _Y. pestis_. Instead, integrative approaches have been previously used in large comparative studies of *[[Yersinia pestis|Y. pestis]]* [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]]. We therefore take the intersection of the three taxonomic systems discussed previously and describe 12 populations for further statistical analysis (SI Table 1). In the following sections, we highlight the novel insight and issues that arise when this population structure is explicitly incorporated into phylogeographic reconstructions and molecular clocks models.

<div style="page-break-after: always;"></div>

![The phylogenetic and spatiotemporal diversity of 601 _Yersinia pestis_ genomes. Populations were defined by integrating three nomenclature systems: the major branches, biovars, and time periods. **A**: The maximum-likelihood phylogeny with branch lengths scaled by genetic distance in substitutions per site. The tree was rooted using two genomes of the outgroup taxa _Y. pseudotuberculosis_, which were pruned before visualization. **B**: The mean sampling age of each genome with internal node dates bounded by ancient DNA calibrations. **C**: The sampling location of each genome with coordinates standardized to the centroid of the associated province/state.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/f943350/main/auspice/all/chromosome/full/filter5/ml/divtree_map_timeline.png){#fig:divtree_map_timeline width=85%}

<div style="page-break-after: always;"></div>

### Ancestral Location and Spread

The robusticity of phylogeographic inference strongly depends on the locations sampled and the degree of geographic signal in the data. To assess this in _Y. pestis_, we tested whether phylogenetic relationships correlate with sampling locations. For every genome, we identified the closest genetic relative in the maximum-likelihood phylogeny. We then recorded whether these genomes were collected from the same location at three resolutions: (1) continent, (2) country, and (3) province. As a statistical measure of geographic structure, we report the percent of genomes that have a closest relative sampled from the same location. 

The majority of _Y. pestis_ populations (6/12) were localized to a single continent (Figure @fig:geographic_structure_stats). Of those distributed over multiple continents, geographic structure ranged from 76% in _Medievalis_ (2.MED) to 99% in _Pestoides_ (0.PE). At the country level, the degree of geographic structure dropped drastically in some populations, such as to 38% in the Bronze Age (0.PRE), while remaining stable in others, including _Antiqua_ (3.ANT) which retained 100% structure. The inverse of this pattern appeared at the province level, where _Antiqua_ (3.ANT) dropped to 45% while the Bronze Age (0.PRE) was unchanged. Our results reveal that geographic structure generally decreases at finer resolutions, as would be expected, but the extent to which varies by population.

![Geographic structure by population according to the percent of genomes sampled from the same location as their closest genetic relative. Internal bar labels indicate the number of locations sampled.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/9f77101/main/mugration/all/chromosome/full/filter5/geographic_structure_stats.png){#fig:geographic_structure_stats width=90%}

One reason for these population-specific trends, is the disparity in country sizes across the globe. This would explain why Asian plague populations (ex. 0.ANT: 97%) tend to have more geographic structure than European populations (ex. _1.PRE_: 55%), where country sizes are relatively smaller. An additional explanation, is variable host associations. We observed a weak correlation (R<sup>2</sup>=0.43) between the degree of geographic structure and the percentage of samples collected from a non-human host (Figure @fig:geo_structure_host). Populations that were primarily sampled from rodents and arthropod vectors had more geographic structure than those found exclusively in humans. This would be epidemiologically consistent with the greater mobility of human populations, which facilitates long-distance spread. Because of this host-dependency, we hypothesize that plague sampled exclusively in humans will have levels of uncertainty when attempting to estimate ancestral locations and spread.

![A linear regression of host-associations on the degree of geographic structure at the country level.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/ce6f2be/main/iqtree_stats/all/chromosome/full/filter5/geo_structure_host.png){#fig:geo_structure_host width=60%}

To test this hypothesis, and how it impacts our ability to estimate where _Y. pestis_ existed in the past, we performed ancestral state reconstruction. We independently fit three discrete mugration models [@sagulenko2018TreeTimeMaximumlikelihoodPhylodynamic] to the maximum-likelihood phylogeny using the sampling locations by: (1) continent, (2) country, and (3) province. For each internal node, we extracted the ancestral location with the highest likelihood given the data. 

We compare and contrast the geographic origins and spread of the Third Pandemic (19<sup>th</sup> - 20<sup>th</sup> Century CE) with the Second Pandemic (14<sup>th</sup> - 18th</sup>th</sup> Century CE).

#### (i) Third Pandemic {.page_break_before}

![Geographic origins and spread of the Third Pandemic (1.ORI) and the ancestral _Intermedium_ (1.IN) population. Ancestral locations were estimated by fitting a discrete mugration model to the maximum-likelihood phylogeny using sampling locations by province. Colored arrows represent migration events inferred with high likelihoods (>=0.95) while grey arrows represent migrations events with low likelihoods (<0.95).](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/96e8bfa/main/auspice/all/chromosome/full/filter5/ml/map_third_pandemic.png){#fig:map_third_pandemic width=70%}

The re-emergence of plague during the Third Pandemic (19<sup>th</sup> - 20<sup>th</sup> Century CE) was closely monitored by contemporary researchers [@cantlie1897SpreadPlague; @minakata1899PlagueChina]. As a result, the geographic origins are well-established. Highly localized plague cases first appeared in Yunnan, China (1772-1800) which later spread throughout the province (1800-1880) [@xu2014WetClimateTransportation; @xu2019HistoricalGenomicData]. Plague then traveled eastwards to the coast (1880-1900), where it dispersed globally out of Hong Kong (1894). The Third Pandemic thus serves as a control for our phylogeographic analysis, as the 'true' origins and spread are known. 

The genetic evidence is consistent with the historical narrative, as we estimate the Third Pandemic (1.ORI) diverged from an ancestral population located in Yunnan, China (1.00). The strength and specificity of this estimate are quite remarkable, as the ancestral divergence could not be confidently located in any other population (SI FIgure @fig:divergence_stats). What makes this event unique, 

We attribute this high-confidence estimate primarily 

(1) the long-term persistence of _Y. pestis_ in Yunnan, and (2) intensive sampling of non-human hosts. 

Yunnan contains multiple plague foci with active cases documented before, during, and after the Third Pandemic [@shi2018ReemergenceHumanPlague]. Genetic surveillance is routinely conducted in this region [@shi2021NewGenotypeYersinia] making it one of the most intensively sampled (N=18) rodent reservoirs in this study. As result, the sampled diversity of _Y. pestis_ in Yunnan effectively "book-ends" the MRCA of the Third Pandemic.



However, this reservoir would go entirely undetected if only human isolates were used. Despite long-standing evidence of human plague in Yunnan [@shi2018ReemergenceHumanPlague], no genomic evidence from humans is available. Similary, the nearby foci in Qinghai and Tibet are also sparsely sampled in humans

This issue of host-based sampling bias is documented in other zoonoses, incomplete sampling [@faria2018GenomicEpidemiologicalMonitoring], [@volz2013InferringSourceTransmission].

The limitations of Leverage multi-disciplinary sources.
Sampling bias can be corrected for, by incorporating other evidence.
[@kalkauskas2021SamplingBiasModel; duchene2019InferringInfectiousDisease]
Joint statistical analysis
Rather than historical evidence only being incorporated during the final interpration.

> Underlying phylogenetic structure of rodent plague from which human plague emerges.
> What does human-human transmission look like?
> Dilemma, to evalulate 

##### Origins


- The strength and specificity of this estimate are remarkable, as the ancestral divergence could not be confidently located in any other population (SI FIgure @fig:divergence_stats). We attribute this to two factors. Firstly, Yunnan is a persistent reservoir, with active plague documented before, during, and after the Third Pandemic [@shi2018ReemergenceHumanPlague]. This stability
- 
- 
- with active plague before, during, and after the Third Pandemic
- 
-   uniqueness can largely be attributed to genomic surveillance in Yunnan, which is one the most intensively sampled rodent reservoirs (N=18) in this study. Furthermore 

- Yunnan, China is a persistent plague foci, one of the most intensively sampled rodent reservoirs  (N=18).   
- 
- rodent reservoirs of plague, and has 
- 
- in, as we also estimate the MRCA of 1.ORI to be located in Yunnan (0.99).


- We attribute this high likelihood to the strong geographic structure (87%) in the ancestral _Intermedium_ (1.IN) population. In particular, _Intermedium_ rodent samples form distinct monophyletic clades according to the province from which they were collected (SI Figure @fig:divtree_1.IN_province). In contrast, the human isolates disrupt this structure and are linked to nodes with lower likelihoods.

This congruence suggests the possibility for phylogeographic inference to provide informative estimates in _Y. pestis_. However, it also reveals several issues concerning sampling bias, with regards to the locations and hosts sampled.

- Multiple introductions into South America [@vogler2019SingleIntroductionYersinia]

##### Spread


However, it also reveals several issues concerning sampling bias, with regards to the locations and hosts sampled.


[@kalkauskas2021SamplingBiasModel]

Following this, _Y. pestis_ dispersed globally, although we were unable to reconstruct the "routes" of this initial spread due to an unresolved polytomy (Figure @fig:divtree_1.IN_1.ORI_province). Following this radiation, we estimate that plague arrived in a single introduction to North America while all other continents showed evidence of multiple, independent introductions. However, no genomic data was available from Europe or Australia and we were unable to estimate the relative contributions of persistence and re-introductions for these regions


- Reveals sampling bias issue


This congruence suggests the possibility for phylogeographic inference to provide informative estimates in _Y. pestis_. However, it also reveals several issues concerning sampling bias, with regards to the locations and hosts sampled.


The second issue is geographic sampling bias. The geographic origin of the Third Pandemic (Yunnan) is solely represented by rodent samples and would otherwise go undetected. We found no evidence to suggest that the locations of rodent reservoirs could be accurately inferred from human samples alone.
This has direct bearing on studies seeking to identify the locations of ancient pandemics [@bramanti2021AssessingOriginsEuropean]. In our study, we found no evidence to suggest that rodent reservoirs could be. Therefore, sampling strategies that account for the multi-host ecology of _Y. pestis_ are critical for robust phylogeographic inference.


<div style="page-break-after: always;"></div>


#### (ii) Second Pandemic (14th - 19th Century CE)

![Ancestral locations and spread of the Second Pandemic (1.PRE), the population (0.ANT) and the descedant population _Intermedium_ (1.IN). Colored arrows represent migration events inferred with high likelihoods (>=95%) while grey arrows represent migrations events with low likelihoods.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/b1307a5/main/auspice/all/chromosome/full/filter5/ml/map_second_pandemic.png){#fig:map_second_pandemic width=90%}

The origins and spread of plague during the Second Pandemic are heavily debated.

Rat-Flea model:
	- Distant rodent reservoir in Central Asia [@schmid2015ClimatedrivenIntroductionBlack]
	- Local reservoir in Western Europe [@carmichael2015PlaguePersistenceWestern; slavin2021OutWestFormation]
Human-Human:
	- Pneumonic [@davis1986ScarcityRatsBlack]
	- Ectoparasites such as fleas and lice [@dean2018HumanEctoparasitesSpread]

_Y. pestis_ was recovered from both human and rodent remains in Poland, dated to between the 15 and 18th centuries [@morozova2020NewAncientEastern].

We estimate that the Second Pandemic (1.PRE) diverged from an ancestral population in China (93%), Asia (91%) with the MRCA reconstructed to be in Russia (63%), Europe (98%)

There is great expectation for ancient DNA analysis to resolve these deabtes [@schmid2015ClimatedrivenIntroductionBlack]

We estimate that the Second Pandemic


#### Scratch

### Rates of Evolutionary Change {.page_break_before}

The extent of rate variation present in our updated genomic dataset is notably larger and more diverse than those used in previous studies [@spyrou2019PhylogeographySecondPlague; @pisarenko2021YersiniaPestisStrains]. A root-to-tip regression on sampling age reproduces the finding that substitution rates in *Y. pestis* are poorly represented by a simple linear model or "strict clock" (Figure @fig:rtt A). We found a very low coefficient of determination (R<sup>2</sup>=0.09) which indicates a large degree of unaccounted variation. This finding suggests that evolutionary change in _Y. pestis_ may be more appropriately estimated using a "relaxed clock", where rate variation is explicitly modeled. To test this hypothesis, we performed a Bayesian Evaluation of Temporal Signal (BETS) [@duchene2020BayesianEvaluationTemporal].  In brief, this method tested four model configurations including: (1) a strict clock, (2) a relaxed clock, (3) the true sampling ages, and (4) no sampling ages. A comparison of the model likelihoods, or Bayes factors, was then used to assess the degree of temporal signal.

The BETS test was inconclusive when attempting to fit a single clock to the updated global diversity of _Y. pestis_. The Bayesian analysis exhibited poor sampling (ESS < 200) of the clock parameters across all model configurations, even when we reduced sources of variation by removing tip date uncertainty, fixing the tree topology, and removing up to 70% of genomes. The poor performance of a single clock model is consistent with several other studies where low ESS scores were observed [@rasmussen2015EarlyDivergentStrains] and divergence dates could not be estimated [@wagner2014YersiniaPestisPlague]. We therefore conclude that a single clock model is not a viable approach, as there is excessive rate variation across the global phylogeny. We hypothesize this model misspecification may explain node-dating disparities between previous studies [@morelli2010YersiniaPestisGenome, @cui2013HistoricalVariationsMutation; @rasmussen2015EarlyDivergentStrains].

In contrast to the single clock approach, we observed significant improvements when each population was assessed independently. All model parameters in our Bayesian analysis demonstrated convergence with ESS values well above 200 and we detected temporal signal in 9 out of 12 _Y. pestis_ populations (SI Table 2). Several of these appeared more clock-like than others, which was observed through the root-to-tip regression and Bayesian rate estimation. For example, we found rate variation to be low in the Bronze Age (R<sup>2</sup>=0.92), moderate in the Second Pandemic (R<sup>2</sup>=0.76) and high in *Medievalis* (R<sup>2</sup>=0.02). Our results indicate that population specific models are a more effective approach for estimating substitution rates across the global phylogeny.

<div style="page-break-after: always;"></div>

![Substitution rate variation in _Yersinia pestis_. **A**: A root-to-tip regression on mean sampling age using all genomes from the maximum-likelihood phylogeny. **B**: A root-to-tip regression on mean sampling age by population. The distance to the population MRCA was calculated using subtrees extracted from the maximum-likelihood phylogeny. **C**: Bayesian substitution rates by population across branches of the maximum-clade credibility (MCC) trees. ](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/cb00c8c/main/iqtree_stats/all/chromosome/full/filter5/rtt.png){#fig:rtt width=85%}

To demonstrate the application of our molecular clock method and the interpretive consequences, we explored three outcomes as case studies. First, as a control, we examined _Y. pestis_ populations that had <u>[[Eaton et al. 2021 Plagued by a cryptic clock#i No Temporal Signal\|no temporal signal]]</u>. These "negative" cases inform us about the minimum sampling time, or phylodynamic threshold, required to obtain robust temporal estimates in _Y. pestis_. Second, we examined populations with <u>[[Eaton et al. 2021 Plagued by a cryptic clock#ii Irreproducible Estimates\|irreproducible estimates]]</u> between studies, such as the time to most recent common ancestor (tMRCA). We discuss how sampling bias drives this outcome, and how it can be identified and corrected with ancient DNA calibrations. Finally, we identify the populations with the most <u>[[Eaton et al. 2021 Plagued by a cryptic clock#iii Informative Rates and Dates\|informative rates and dates]]</u>. We discuss how these molecular dates have changed our understanding of pandemic "origins" and complement historical scholarship.


#### (i) No Temporal Signal

We found several _Y. pestis_ populations with no detectable temporal signal which include the *Intermedium* (1.IN) and *Antiqua* biovars (2.ANT, 3.ANT). Despite being sampled over a period as long as 84 years, these populations have not accumulated sufficient evolutionary change to yield informative divergence dates. This limited diversity is identifiable in the maximum-likelihood phylogeny as populations with the highest density of nodes sitting close to their roots (SI Figure @fig:branch_lengths). We also consider the rates and dates associated with the _Antiqua_ population 4.ANT to be non-informative, as it has a similar node distribution, with a smaller number of samples (N=12) collected over an even shorter time frame (38 years).

Our results show that for robust temporal estimates to be obtained, _Y. pestis_ must be sampled over multiple decades at minimum. This time frame is largely consistent with the finding that _Y. pestis_ has one of the slowest substitution rates observed among bacterial pathogens [@duchene2016GenomescaleRatesEvolutionary]. In our study, we found that all populations had a median rate of less than 1 substitution per year (Figure @fig:rtt C, SI Table 4), with the lowest in *Antiqua* (0.ANT) at 1 substitution every 14.1 years (1.7 x 10<sup>-8</sup> subs/site/year) and the highest in *Pestoides* (0.PE) at 1 substitution every 1.1 years (2.1 x 10<sup>-7</sup> subs/site/year). In application, this means that  _Y. pestis_ lineages often cannot be differentiated until at least several decades have passed, a concept referred to as the phylodynamic threshold.

The phylodynamic threshold has been rigorously explored in other pathogens [@duchene2020TemporalSignalPhylodynamic], but not explicitly in _Y. pestis_. Researchers have anecdotally mentioned the challenges in reconstructing intra-epidemic plague diversity. For example, several isolates from the Second Pandemic dated to the medieval [[Black Death]] (1346-1353) are indistinguishable clones [@spyrou2016HistoricalPestisGenomes], extinguishing any hope of reconstructing its spread from genetic evidence alone. Our median rate estimation for the Second Pandemic (1.PRE) of 1 substitution every 9.5 years (2.5  x 10<sup>-8</sup> subs/site/year) is congruent with this finding. The clonal nature of the Black Death is not an exceptional event, but rather the norm based on the sampling time frame. Our results highlight a significance limitation and cautionary note for plague research, as genetic evidence is not suitable for reconstructing the timing of short-term, episodic epidemics.


#### (ii) Irreproducible Estimates {.page_break_before}

We observed two populations with detectable temporal signal associated with significant node-dating conflicts. These populations include the *Pestoides* (0.PE) and *Antiqua* (0.ANT) biovars which are both paraphyletic. Conflicts were identified by comparing their estimated time to the most recent common ancestor (tMRCA) to that of their descendant populations. For example, the First Pandemic (0.ANT4) is a descendant clade of the larger *Antiqua* (0.ANT) population based on the maximum-likelihood phylogeny (Figure @fig:divtree_first_pandemics). We would expect the tMRCA of the ancestral 0.ANT to pre-date the First Pandemic, for which ancient DNA calibrations are available. However, the tMRCA of 0.ANT is far too young (1357 - 1797 CE), and incorrectly post-dates the tMRCA of 0.ANT4 (39 - 234 CE) by more than a millennium. This outcome is somewhat paradoxical, as these populations have robust temporal signal and yet a critical examination of their divergence dates reveals they are unreliable. 

This conflicting pattern has been previously described and attributed to sampling bias [@duchene2019InferringInfectiousDisease; @kalkauskas2021SamplingBiasModel]. Specifically, the driving factor in _Y. pestis_ appears to be insufficient sampling of basal branches and the presence of extensive rate variation. The two affected populations, *Antiqua* (0.ANT) and *Pestoides* (0.PE), have a low density of nodes at their roots in the maximum-likelihood phylogeny (SI Figure @fig:branch_lengths). This pattern is also observed in another _Antiqua_ population (1.ANT) which has a small sample size (N=4) and has previously been linked to rate acceleration events [@cui2013HistoricalVariationsMutation]. The dates associated with these three populations (0.PE, 0.ANT, 1.ANT) should be considered non-informative.

These node-dating issues reveal a significant limitation in our approach of estimating population-specific clock models. Defining _Y. pestis_ population by time period can have deleterious effects, as ancient plague genomes serve as crucial calibration points for rate changes that are otherwise unsampled in extant populations. In populations with poorly sampled basal branches (0.PE, 0.ANT, 1.ANT) we expect an optimization approach to be more ideal, in which a few closely related populations are merged or select ancient DNA calibrations are introduced [@spyrou2018Analysis3800yearoldYersinia]. Otherwise, divergence dates in these populations tend to be overly young, sometimes by more than a 1000 years [@pisarenko2021YersiniaPestisStrains], and are rarely reproducible between studies (Table @tbl:comparison_dates).

Our inability to infer divergence dates due to sampling bias also has several historical implications. Perhaps the most significant concerns the emergence of plague in Africa, which makes up 90% of all modern plague cases [@munyenyiwa2019PlagueZimbabwe1974] yet for which there remains not a single ancient sequence. Alarmingly, little progress has been made in sampling extant Africa plague diversity as this region is represented by only 1.5% (9/601) of all genomes. Furthermore, the oldest genetic evidence of African plague comes from the 1.ANT population, which in itself has only 4 representative strains. Despite this sparse sampling, researchers have repeatedly attempted to use genomic evidence to date the first appearance of _Y. pestis_ in Africa [@morelli2010YersiniaPestisGenome; @cui2013HistoricalVariationsMutation; @pisarenko2021YersiniaPestisStrains]. The result is a complete lack of congruent dates for this event, as the majority of tMRCA estimates for 1.ANT do not overlap (Table @tbl:comparison_dates). These divergence dates are of limited value for historical interpretation [@green2018PuttingAfricaBlack; @nyirenda2018MolecularEpidemiologicalInvestigations; @pisarenko2021YersiniaPestisStrains] and should be treated with great skepticism.

<div style="page-break-after: always;"></div>

![tMRCA conflicts between _Antiqua_ (0.ANT) and the First Pandemic (0.ANT4) according to ancestor-descendant relationships in the maximum-likelihood phylogeny. Node dates (95% HPD) were estimated from the Bayesian analysis, where each population was assessed independently. Grey branches indicate outliers, as defined by the 90% confidence interval of external branch lengths from all populations.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/e605cc9/main/iqtree_stats/all/chromosome/full/filter5/divtree_first_pandemic.png){#fig:divtree_first_pandemic width=80%}

|      Category      | Population | Morelli et al. <br>2010 | Cui et al. <br>2013 | Pisarenko et al. <br>2021 |  This Study  |
|:------------------:|:----------:|:-----------------------:|:-------------------:|:-------------------------:|:------------:|
| No Temporal Signal |    1.IN    |       -2388, 1606       |    1500, 1750\*     |        1791, 1897         |  1651, 1913  |
|                    |   2.ANT    |       -3994, 1460       |    1550, 1800\*     |        1373, 1628         |  1509, 1852  |
|                    |   3.ANT    |           --            |    1450, 1850\*     |        1531, 1742         |  1769, 1947  |
|                    |   4.ANT    |           --            |    1200, 1700\*     |        1611, 1816         |  1848, 196   |
|   Sampling Bias    |   0.ANT    |       -6857, 1199       |     100, 1100\*     |        1033, 1435         |  1357, 1797  |
|                    |   1.ANT    |       -4909, 1322       |     1377, 1650      |        1483, 1704         |  1655, 1835  |
|                    |    0.PE    |      -26641, -598       |     -4394, 510      |         -377, 499         |  1573, 1876  |
| Informative Dates  |   1.ORI    |       -326, 1793        |     1735, 1863      |        1744, 1842         |  1806, 1901  |
|                    |   2.MED    |       -583, 1770        |    1550, 1800\*     |        1413, 1653         |  1560, 1845  |
|                    |   1.PRE    |           --            |     1312, 1353      |            --             |  1214, 1315  |
|                    |   0.ANT4   |           --            |         --          |            --             |   39, 234    |
|                    |   0.PRE    |           --            |         --          |            --             | -3098, -2786 | 

Table: Bayesian estimates of the time to most recent common ancestor (tMRCA) across _Y. pestis_ studies. Uncertainty surrounding the tMRCA is represented by the 95% highest posterior density (HPD) interval. A dash indicates the study did not incorporate genomes from the population. {#tbl:comparison_dates}

\* Visually estimated from the published time-scaled phylogeny.

#### (iii) Informative Rates and Dates

Excluding populations with no detectable signal and node-dating conflicts, we identified five populations with potentially informative rates and dates. These include the Bronze Age (0.PRE), *Medievalis* (2.MED), the First Pandemic (0.ANT4), the Second Pandemic (1.PRE), and the Third Pandemic (1.ORI). The Bronze Age marks the first known appearance of _Y. pestis_ in humans, and the three pandemics, along with _Medievalis_, are historically associated with high mortality and rapid spread [@xu2014WetClimateTransportation]. Due to this epidemiological significance, these five populations have been sampled over the longest time frames, ranging from 92 years for the Third Pandemic (1.ORI) to 1250 years for the Bronze Age (1.PRE). This affirms the importance of long-term heterochronous sampling for _Y. pestis_, which has only been made possible through the specialized retrieval of ancient DNA [@bos2011DraftGenomeYersinia] and recent sequencing of early 20<sup>th</sup> century culture collections [@eroshenko2021EvolutionCirculationYersinia]. By curating and contextualizing this new heterochronous data, we were able to detect temporal signal in extant _Y. pestis_ populations without the use of ancient DNA calibrations for the first time.

Our estimates of the tMRCA for ancient pandemics share a common theme, in that the genetic origins pre-date the traditional historical narratives. For example, the earliest textual evidence of the Second Pandemic (1.PRE) comes from the Black Death (1346) [@benedictow2021CompleteHistoryBlack]. However, we estimate the tMRCA of this population to be earlier, around 1300 CE (95% HPD: 1214 - 1315 CE). Similarly, the first recorded outbreaks of plague during the First Pandemic (0.ANT4) come from the Plague of Justinian (541 CE) [@little2007PlagueEndAntiquity]. Instead, we estimate that the strains of _Y. pestis_ associated with this pandemic shared a common ancestor around 399 CE (95% HPD: 272 - 465 CE). 

One explanation for these disparate timelines is sampling bias, as western European sources dominate both the genetic and historical record. Recent historical scholarship has contested these Eurocentric timelines [@hashemishahraki2016PlagueIranIts; @varlik2020PlagueThatNever] by demonstrating that plague appeared much earlier and persisted for far longer, in western Asia. Genetic dating appears to support these historical critiques, by expanding the timelines of past pandemics to make space for more diverse historical narratives. An alternative explanation for our earlier dates is tip date uncertainty. The radiocarbon estimates for the majority of ancient _Y. pestis_ samples had confidence intervals of ±50 years or more. As we only used the mean sampling age for molecular clock models, it's possible that the true tMRCA intervals are larger and do overlap with historical estimates. This presents an opportunity for future research to investigate how much uncertainty can be included in molecular clock models for _Y. pestis_, while still achieving convergence of parameter estimates.

We estimate that isolates from the Third Pandemic (1.ORI) shared a common ancestor around 1885 (95% HPD: 1806 - 1901 CE) (Figure @fig:divtree_pandemics C). This interval aligns with the broad timeline of the Third Pandemic as reconstructed from epidemiological reports [@benedict1988BubonicPlagueNineteenthCentury; @xu2014WetClimateTransportation; @xu2019HistoricalGenomicData]. Highly localized plague cases began appearing in southern China (1772-1800), followed by short-distance diffusion (1800-1880), which then reached the southern coast (1880-1900) and spread internationally out of Hong Kong (1894). Our estimate also overlaps with the majority of previous studies, although it is the youngest tMRCA thus far (Table @tbl:comparison_dates). This comparison not only demonstrates the reproducibility of our estimate, but also reveals how the "origin" story of the Third Pandemic is changing. The genetic root was once estimated to be as old as 326 BCE [@morelli2010YersiniaPestisGenome] but is now resolved to be much younger (19<sup>th</sup> century CE). This younger date is particularly intriguing, as the world experienced a major epidemiological transition in the 19<sup>th</sup> century with the emergence of the first pandemics of cholera [@ryan2011CholeraPandemicStill] and influenza [@brussow2021WhatWeCan]. Thus reconstructing the evolutionary history of the Third Plague Pandemic may not only inform us about the epidemiology of plague, but contribute to a broader understanding of re-emerging diseases in the modern era. 

Even less is known about the *Medievalis* population. *Medievalis* strains were hypothesized to be responsible for plague outbreaks in the Caspian Sea region which reoccurred throughout the 19<sup>th</sup> and 20<sup>th</sup> centuries [@eroshenko2021EvolutionCirculationYersinia]. We estimate that the tMRCA of _Medievalis_ (2.MED) was around 1796 (95% HPD: 1560 - 1845 CE) which overlaps with all previously published estimates (Table @tbl:comparison_dates). While this population was once thought to have emerged as early as 583 BCE, there is now growing consensus that the earliest possible emergence was in the 16<sup>th</sup> century CE. This raises an intriguing possibility, in which distinct _Y. pestis_ populations were co-circulating during the Second Pandemic. Interestingly, the Caspian Sea region appears to be a nexus of plague as the only known area where the distributions of both European and Asian _Y. pestis_ strains overlap (Figure @fig:map_caucasus). If ancient _Medievalis_ can be retrieved from this region, they may help elucidate if distinct populations of _Y. pestis_ were co-circulating during the Second Pandemic and how this affected disease exposure in nearby human populations.

> Phylogeography transition

![The geographic distributions of the Second Pandemic (1.PRE), _Medievalis_ (2.MED), and _Pestoides_ (0.PE) populations. The sampling location of each genome was standardized to the centroid of the associated province and/or state.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/346bd65/main/auspice/all/chromosome/full/filter5/ml/map_caucasus.png){#fig:map_caucasus width=100%}



## Conclusion

We sought to contribute to four lines of discourse and debate concerning the evolutionary history of _Yersinia pestis_. The first, is whether _Y. pestis_ has sufficient temporal signal to accurately estimate rates and dates. We found that a species-wide clock model was methodologically unstable and did not lead to reproducible estimates. However, we observed significant improvements when each population was assessed independently. We therefore recommend this approach for future studies, as the full global diversity of _Y. pestis_ can be utilized without down-sampling.

The second question we explored is the phylodynamic threshold, or the minimum sampling time frame for _Y. pestis_ that yields informative rates and dates. The lowest substitution rate was observed in _Antiqua_ (0.ANT) with a median rate of 1 substitution every 14.1 years. In application, this means that some _Y. pestis_ lineages cannot be differentiated until several decades have passed. In addition, we found no temporal signal in several populations (1.IN, 2.ANT, 3.ANT) which were sampled over a period as long as 84 years. We therefore interpret this as a cautionary note for plague research, as genetic evidence may not be suitable for reconstructing the timing of short-term, epidemic events.

The third issue we tackled was sampling bias and how this has led to node dating disparities between studies. In particular, we focused on the non-overlapping tMRCA estimates of the first appearance of _Y. pestis_ in Africa (1.ANT). Until sampling strategies diversify, we caution that the published divergence dates for this population, and several others (0.ANT, 0.PE) are of limited value for historical interpretation.

The fourth debate we engaged with was the timing of past pandemics. A common theme we observed was that the genetic dates (tMRCA) of pandemic _Y. pestis_ tended to pre-date the historical dates by decades or centuries. For example, we estimated that the tMRCA of the Second Pandemic was around 1300 CE (95% HPD: 1214 - 1315 CE) which pre-dates the Black Death (1346 - 1353 CE). Similarly, we estimated the tMRCA of the First Pandemic to be around 399 CE (95% HPD: 272 - 465 CE), which pre-dates the Plague of Justinian (531 CE). Genetic dating thus plays a critical role in expanding the timelines of past pandemics and making space for more diverse historical narratives to be included.

> This paragraph is from the previous draft:

The final debate we engaged with was the phylogeographic modeling of past pandemics, specifically the Second Plague Pandemic. Our spatiotemporal model revealed that no migrations could be confidently reconstructed during this event, as location could be inferred at very few internal nodes. We therefore caution that, in isolation, _Y. pestis_ genomic evidence may be unsuitable for inferring point migrations and the directionality of spread. Instead, a more statistically appropriate line of inquiry may be to summarize how the geographic diversity changes over time. Alternatively, new methods have recently been developed to incorporate non-genetic evidence, such as outbreak case-occurrence records [@duchene2019InferringInfectiousDisease], into phylogeography analysis. This presents an exciting avenue for interdisciplinary collaboration, as explicitly integrative models will complement the strengths of genetic and historical evidence, while mitigating their respective weaknesses.


## Methods {.page_break_before}

A visual overview of the computational methods is provided in Figure @fig:workflow and is publicly available as a [[Snakemake|snakemake]] pipeline (https://github.com/ktmeaton/plague-phylogeography/).

### Data Collection

_Y. pestis_ genome sequencing projects were retrieved from the [[National Centre for Biotechnology Information|NCBI]] databases using NCBImeta [[Eaton 2019 NCBImeta\|[@eaton2019NCBImeta]]]. 1657 projects were identified and comprised three genomic types. 1473 projects came from isolates sampled during the 20<sup>th</sup> and 21<sup>st</sup> centuries, which we label as "modern". Of these, (i) 586 projects were available as assembled genomic contigs (FASTA), and (ii) 887 were only available as unassembled sequences (FASTQ). An additional (iii) 184 projects came from skeletal remains with sampling ages older than the 19<sup>th</sup> century, which we label as "ancient". The 887 modern unassembled genomes were excluded from this project, as the wide variety of laboratory methods and sequencing strategies precluded a standardized workflow. In contrast, the 184 ancient unassembled genomes were retained given the relatively standardized, albeit specialized, laboratory procedures required to process ancient tissues. 



Collection location, collection date, and collection host metadata were curated by cross-referencing the original publications. Collection location was transformed to latitude and longitude coordinates using [[GeoPy]] [@esmukov2020GeoPyPythonClient] and the [[Nominatim|Nominatim API]] [@hoffman2020NominatimToolSearch] for [[OpenStreetMap]]  [@openstreetmapcontributors2017PlanetDumpRetrieved]. Coordinates were standardized at the level of country and province/state, using the centroid of each. Collection dates were standardized according to their year, and recording uncertainty arising from missing data and radiocarbon estimates. Genomes were removed if no associated date or location information could be identified in the literature, or if there was documented evidence of laboratory manipulation.

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

### Estimating Rates of Evolutionary Change

To explore the degree of temporal signal present in the data, two categories of tests were performed. The first was a [[Root to Tip Regression\|root-to-tip (RTT)]] regression on the mean sampling age using the python package `statsmodels` [@seabold2010StatsmodelsEconometricStatistical]. Given the relative simplicity of a regression model, the *full* dataset of 601 genomes was used. 

For the second test of temporal signal, a [[Bayesian Evaluation of Temporal Signal|Bayesian Evaluation of Temporal Signal (BETS)]] was conducted. Our analyses in BETS consisted of running four model configurations; either with or without sampling dates, and under a strict or uncorrelated lognormal relaxed clock models (strict and UCLN, respectively). We calculated the log marginal likelihood under each model configuration using stepping-stone sampling as implemented in BEAST v1.10 [@suchard2018BayesianPhylogeneticPhylodynamic]. To this end, we ran 200 path steps, each with a Markov chain Monte Carlo (MCMC) of length 10<sup>6</sup> steps. In addition to the clock model we used a constant-size coalescent tree prior, a GTR+Γ substitution model. 

Importantly, the models involved priors that were proper for all parameters, which is essential for marginal likelihood calculations [@baele2013AccurateModelSelection]. In particular, the molecular clock rate (the mean of the UCLN clock model or the global rate of the strict) had a continuous time Markov chain reference prior [@ferreira2008BayesianAnalysisElapsed], the population size of the constant-size coalescent an exponential prior distribution with mean 10, and the standard deviation of the UCLN had an exponential prior with mean 0.33. Marginal likelihood estimation with stepping stone sampling does not require from the posterior distribution. To obtain the posterior distribution we used an MCMC of 10<sup>9</sup> steps, sampling every 10<sup>3</sup> steps. For situations where the effective sample size (ESS) of any parameters was below 200 we increased the chain length by 50% and reduced sampling frequency accordingly.

### Phylogeography

Continent defintions:
- https://geojson-maps.ash.ms/
- https://github.com/AshKyd/geojson-regions

To explore underlying phylogeography, we conducted a discrete trait analysis in BEAST [@lemey2009BayesianPhylogeographyFinds; @suchard2018BayesianPhylogeneticPhylodynamic]. Country of sample origin was chosen as the discrete trait of interest. A coalescent constant population size tree prior was chosen with an exponential prior placed on the effective population size with mean 100000. We modeled evolutionary rate with an uncorrelated relaxed lognormal clock, with a CTMC scale prior on the mean  and exponential prior with mean 1/3 on the standard deviation of the underlying lognormal distribution (Drummond et al., 2006). A GTR+Gamma substitution model with estimated base frequencies for 1.ORI, 1.PRE, 0.ANT4, and 0.PRE. The same settings were used for 2.MED with the exception of swapping the GTR+Gamma model to an HKY+Gamma model. MCMC chains were run for 10<sup>7</sup> steps with sampling every 10<sup>3</sup> steps. We used logCombiner to combine between 3-5 replicate runs, with 10% burnin, for each clade to achieve ESS above 200 for each parameter and Maximun Clade Credibility (MCC) trees [@drummond2007BEASTBayesianEvolutionary].

### Visualization

Data visualization was performed using the python package `seaborn` [@waskom2021SeabornStatisticalData] and Auspice  [@hadfield2018NextstrainRealtimeTracking],  a component of the Nextstrain visualization suite.

## References {.page_break_before}

<div id="refs"></div>

## Supplementary Information   {.page_break_before}



> Change branch labels to percent

![Geographic structure of the _Intermedium_ (1.IN) population which is ancestral to the Third Pandemic (1.ORI). Branches are colored based on a discrete, ancestral state reconstruction using sampling location (province). Branch labels indicate the likelihood of the ancestral location given the data.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/f2642dd/main/auspice/all/chromosome/full/filter5/ml/divtree_1.IN_province.png){#fig:divtree_1.IN_province width=70%}

![Geographic locations of the ancestral populations from which each population diverged. Ancestral locations were estimated by fitting discrete mugration models to the maximum-likelihood phylogeny using sampling locations. Internal bar labels indicate the location with the highest confidence given the data.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/73c18cc/main/mugration/all/chromosome/full/filter5/divergence_stats.png){#fig:divergence_stats width=90%}

![Geographic locations of the most recent common ancestors (MRCA) by population. Ancestral locations were estimated by fitting discrete mugration models to the maximum-likelihood phylogeny using sampling locations. Internal bar labels indicate the location with the highest confidence given the data.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/73c18cc/main/mugration/all/chromosome/full/filter5/mrca_stats.png){#fig:mrca_stats width=90%}

![Population-specific rate variation in _Yersinia pestis_ as observed through regressions of root-to-tip distance on sampling age. The distance to the population MRCA was calculated using subtrees extracted from the maximum-likelihood phylogeny. ](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/1f888baa3/main/iqtree_stats/all/chromosome/full/filter5/rtt_regression_population.png){#fig:rtt_population width=100%}

<div style="page-break-after: always;"></div>

![The subtrees extracted from the maximum-likelihood phylogeny for the _Yersinia pestis_ populations with (A) no detectable temporal signal, (B) ... Stars indicate the node representing the most recent common ancestor (MRCA). Grey branches indicate outliers, as defined by the 90% confidence interval of external branch lengths from all populations. ](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/f2aa4bd/main/iqtree_stats/all/chromosome/full/filter5/branch_lengths.png){#fig:branch_lengths width=80%}

<div style="page-break-after: always;"></div>

![The distribution of external branch lengths across the maximum-likelihood phylogeny. The threshold to be considered a long external branch is set to higher than the 90% confidence interval of 4.98 x 10<sup>-5</sup> substitutions/site.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/281e59b/main/iqtree_stats/all/chromosome/full/filter5/long_branches.png){#fig:long_branches width=100%}

<div style="page-break-after: always;"></div>

![Computational methods workflow.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/6bea409/main/report/workflow.png){#fig:workflow}


