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
title: 1000 Plagues in the Genomics Age
subtitle: Population Structure, Phylodynamics, and Phylogeography
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

## Abstract

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

> How does this paper differ from [[Demeure 2019 Yersinia Pestis Plague\|[@demeure2019YersiniaPestisPlague]]]? This paper extends the discussion on the population structure of *Y. pestis*, exploring the epidemiological significance using a larger dataset, and offering critique. 

---

**TO BE DONE**:

- Introduce the debate on whether *[[Yersinia pestis|Y. pestis]]* has temporal signal and why incongruent findings have emerged.
- Introduce the issue of sampling bias in [[Phylogeography|phylogeography]].


### Objectives

1. Curate and critique publicly available [[Yersinia pestis|Y. pestis]] genomes. Discuss how sampling bias drives our current understanding of [[Plague\|plague]].
2. To propose a nuanced phylodynamics model.
3. To critique interpretations drawn from phylogeographic approaches?


## Results and Discussion {.page_break_before}

### [[Population Structure]]

#### [[Phylogeny]]

A maximum-likelihood phylogeny was estimated from 603 genomes (600 *[[Yersinia pestis|Y. pestis]]* isolates,  1 *[[Yersinia pestis|Y. pestis]]* reference, and 2 *[[Y. pseudotuberculosis]]* outgroup taxa). Following removal of the outgroup taxa, the alignment was composed of 10,249 variant positions with 3,844 sites shared by at least two genomes. 

The global population structure of *[[Yersinia pestis|Y. pestis]]*  can be organized according to a vast array of historical, ecological, biochemical, and molecular characteristics. As a result, several sub-typing systems have emerged to differentiate lineages of plague [[[Qi 2016 Taxonomy Yersinia Pestis\|[@qi2016TaxonomyYersiniaPestis]]]. Unfortunately, these systems are not standardized across the field, with some authors in recent times developing their own approaches [[Li 2009 Genotyping Phylogenetic Analysis\|[@li2009GenotypingPhylogeneticAnalysis;]] [[Platonov 2013 Molecular Typing Yersinia\|@platonov2013MolecularTypingYersinia]]]. It has thus been argued that the nomenclature used to describe *[[Yersinia pestis|Y. pestis]]* populations is in need of revision and should be driven by the latest global phylogenetic analysis [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia]]].

In response, Figure @fig:divtree_branch-major provides an overview of how several taxonomic systems define the population structure of *[[Yersinia pestis|Y. pestis]]*. This illustration is designed to support the following discussions and serve as a quick reference to contextualize, and convert between, *[[Yersinia pestis|Y. pestis]]* nomenclature. The systems selected are four approaches widely used in genomics research:

1. Major Phylogenetic Branch
1. Biovar
1. Subspecies
1. Time Period

#### [[Major Phylogenetic Branch]]

Arguably the most important event, in terms of phylogenetic branch structure, is the *[[Big Bang Polytomy]]* from which arose four monophyletic clades: ```Branches 1-4```. All lineages that diverged prior to this multifurcation are grouped into ```[[Branch 0]]```. Modern cases of human plague primarily derive from ```Branches 1-4``` lineages [[Xu et al. 2019 Historical Genomic Data|[@xu2019HistoricalGenomicData]]], although cases can still be associated with  ```[[Branch 0]]```. Because the [[Big Bang Polytomy]] plays such as central role in phylogenetic branch structure, there is great interest in estimating the timing and geographic origins of this event [[Green 2020 How Microbe Becomes\|[@green2020HowMicrobeBecomes]]]. However, the exact epidemiological significance of this polytomy remains unclear and will be an important avenue for future research.

#### [[Biovar]]

Each major branch is further subdivided into biovars according to their metabolic properties [[Devignat 1951 Varietes Espece Pasteurella\|[@devignat1951VarietesEspecePasteurella;]] [[Zhou 2004 Comparative Evolutionary Genomics\|@zhou2004ComparativeEvolutionaryGenomics;]] [[Li 2009 Genotyping Phylogenetic Analysis\|@li2009GenotypingPhylogeneticAnalysis]]]. The *microtus* biovar, alias *pestoides* (```PE```), is a basal clade found in ```[[Branch 0]]``` and is typically, although not always, avirulent in humans. Prior to the emergence of the *pestoides* is the oldest known lineage of plague, dating to the [[LNBA|Late Neolithic Bronze Age]] [[Rasmussen 2015 Early Divergent Strains\|[@rasmussen2015EarlyDivergentStrains]]]. In the absence of metabolic evidence, and given that this clade pre-dates all known modern lineages , its biovar designation is ```[[PRE]]```. 

The other inhabitant of ```[[Branch 0]]``` is biovar *antiqua* (```[[Antiqua\|ANT]]```) which is the ancestral state prior to the [[Big Bang Polytomy]] and can be isolated from all subsequent major branches. ```[[Branch 1 ]]``` encapsulates a transition from *antiqua* (```[[Antiqua\|ANT]]```) through the *intermedium* biovar (```[[Intermedium\|IN]]```) and into *orientalis* (```[[Orientalis\|ORI]]```). ```[[Branch 2]]``` includes the transition from *antiqua* (```[[Antiqua\|ANT]]```) to *medievalis* (```[[Medievalis\|MED]]```). ```[[Branch 3]]``` and  ```[[Branch 4]]``` are exclusively composed of *antiqua* (```[[Antiqua\|ANT]]```) strains.

The biovar nomenclature is frequently combined with the major branch nomenclature to construct clade identifiers (Figure @fig:divtree_branch-major Legend). This system differentiates global populations of *[[Yersinia pestis|Y. pestis]]* with sufficient resolution and thus is the nomeclature used in this study.

#### [[Subspecies]]

The subspecies system distinguishes a main subspecies, *pestis*, from non-main subspecies such as *tibetica*,  *caucasica*, *qinghaica*, *central asiatica*, and *ulegeica*. This system combines biochemical properties, virulence, and geographical spread and is primarily used to study plague foci in the Commonwealth of Independent States (CIS, former Soviet republics) [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia]]]. The subspecies nomenclature is useful for laboratory diagnostics, as phenotypic inconsistencies have emerged concerning biovar classification in these regions.

#### [[Time Period]]

Structuring *[[Yersinia pestis|Y. pestis]]* populations according to historical time period is a relatively new introduction that arose out of interdisciplinary ancient DNA work. The known genetic diversity of *[[Yersinia pestis|Y. pestis]]* can be broadly grouped into four time periods (Figure @fig:timeline). In general, historical strains of plague isolated prior to the 20th century cluster into well-supported monophyletic clades. All known isolates from [[Late Aniquty]] derive from ```[[0.ANT]]``` (Figure @fig:timeline B) and the [[Medieval]]/[[Early Modern Period]] is exclusively represented by ```[[1.PRE]]``` (Figure @fig:timeline C). The exception to this temporal patterning is the [[LNBA|Late Neolithic Bronze Age]] which is comprised of clades ```[[0.PRE]]``` and a single isolate of ```[[0.PE]]``` (Figure @fig:timeline A). 

This observed temporal structure is at odds with the expected diversity of plague given the phylogeny presented in Figure @fig:divtree_branch-major. By at least the [[Late Antiquity]], multiple lineages of plague had already diverged to form the ancestors of ```[[Branch 0]]``` clades, namely ```[[0.PE]]``` and ```[[0.ANT]]```. Similarly, the [[Medieval]] clade (```[[1.PRE]]```) post-dates the [[Big Bang Polytomy]] at which point ```Branches 2-4``` were emerging. If we suspect the true diversity of *[[Yersinia pestis|Y. pestis]]* populations in these time periods to be much greater, why does the sampled diversity not reflect this?

One explanation may be that collection date, location, and host are all highly confounded in ancient DNA sampling strategies. Previous genomic work on historical *[[Yersinia pestis|Y. pestis]]* has preferentially targeted human remains from [[European]] archaeological sites [[(CITE)]]. Thus the limited diversity observed in Figure @fig:timeline may be a product of this sampling bias. The interpretation therefore would be that historical plague is not temporally patterned, but rather ecological structured by host and geography. Support for this hypothesis may be seen in the greater diversity of plague observed in the Modern period (Figure @fig:timeline D), which is the product of intensive global sampling from a wide variety of mammalian hosts.

An alternative, or perhaps complementary, viewpoint is that the structured diversity of ancient *[[Yersinia pestis|Y. pestis]]* is a product of past pandemics. In this line of reasoning, pandemic lineages of *[[Yersinia pestis|Y. pestis]]* became prominent during their respective time period, and thus are disproportionately sampled. 

There are at least three known pandemics of plague which appear in the historical record. The [[First Pandemic]] (6th - 8th century CE) began with the [[Plague of Justinian]] and proceeded to devastate the Byzantine Empire of the Mediterranean world ([[CITE]]). The [[Late Antiquity]] clade found within ```[[Branch 0]]``` (```[[0.ANT4]]```) is thought to derive from this pandemic given spatiotemporal overlap of the skeletal remains from which this lineage was retrieved [[Wagner et al. 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague;]] [[Keller 2019 Ancient Yersinia Pestis\|@keller2019AncientYersiniaPestis]]].  Similarly, the [[Medieval]]/[[Early Modern]] clade [[1.PRE]] from ```[[Branch 1]]``` is thought to have been the causative agent of the [[Second Pandemic]]. This well-documented pandemic began with the infamous [[Black Death]] and swept across most of Eurasia from the 14th to 19th centuries ([[CITE]]). The third documented pandemic of plague, alias the *Modern Pandemic*, spread globally from the end of the [[18th Century]] and until the mid-[[20th Century]]. There is little dispute that a new lineage of plague emerging from [[Branch 1]] as biovar *orientalis* (```1.ORI```) was the causative agent of this pandemic. While the World Health Organization (WHO) declared the third pandemic over in 1950 ([[CITE)]]), this lineage continues to re-emerge to cause recent epidemics such as the [[2010 plague in Peru]] and the [[Madagascar Outbreaks of 2017]].

A significant weakness to this hypothesis is that the [[Third Pandemic]] clade ```[[1.ORI]]``` is not sampled to a higher degree in the Modern period (Figure @fig:timeline D).

#### [[The Three Pandemic Problem]]

While the pandemic clade nomenclature provides an excellent foundation for historical discussion, there are several problems with this system. First is the growing awareness of the spatiotemporal overlap of the [[Second Pandemic\|Second]] and the [[Third Pandemic]] ([[CITE]]). Previously, the temporal extents of these events were mutually exclusive, dating from the 14th-18th century, and the 19th-20th century respectively. Recent historical scholarship has contested this claim, and demonstrated that these constraints are a product of a Eurocentric view of plague ([[CITE Nukhet]]). The [[Second Pandemic]] is now known to have extended into the [[19th Century]] in parts of the [[Ottoman Empire]], with the latest epidemics dating to 1819 ([[CITE]]). Similarly, the [[Third Pandemic]] is now hypothesized to have began as early as 1772 in southern China [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]]. It remains unclear where to draw the distinction, if it even exists, between the [[Second Pandemic\|Second]] and [[Third Pandemic]].

Another limitation of the pandemic nomenclature is the complete disconnection of ```[[Branch 2]]``` to any pandemic-related events. This is surprising given that several criteria of a pandemic pathogen are fulfilled by ```[[Branch 2]]``` lineages, namely extensive spread and virulence. ```[[Branch 2]]``` genomes of *[[Yersinia pestis|Y. pestis]]* have been collected from all throughout [[Eurasia]], stretching from at least the [[Caucasus]], to [[India]], and to eastern [[China]] (Figure @fig:map_branch2). Furthermore, lineages of ```[[Branch 2]]``` have been associated with high mortality epidemics [[Eroshenko 2021 Evolution Circulation Yersinia\|[@eroshenko2021EvolutionCirculationYersinia]]] and were observed to have the highest spread velocity of any *[[Yersinia pestis|Y. pestis]]* clade [[Xu et al. 2019 Historical Genomic Data\|[@xu2019HistoricalGenomicData]]]. As historical plague scholarship extends beyond the bounds of [[Western Europe]], it will be important to consider the role these lineages played.

#### [[Geography]]

The geographic distribution of *[[Yersinia pestis|Y. pestis]]* reflects a complex dispersal history (Figure @fig:map_ibd .B). Many regions have been colonized by diverse strains of *[[Yersinia pestis|Y. pestis]]*. This diversity can be contemporaneous, such as endemic foci in the [[Caucausus]] and [[Western China]] (Clade [[0.PE]]). Alternatively, this diversity may occur over multiple centuries through distinct re-introductions and extinctions, as seen in the historical epidemics of Europe (Clades [[0.ANT]] and [[1.PRE]]). In these examples, a relatively large amount of genetic diversity appears in a small geographic range. In contrast, regions such as the Americas have been colonized by a single strain of *[[Yersinia pestis|Y. pestis]]* (Clade [[1.ORI]]) which shows a relatively small amount of genetic diversity over a tremendously large geographic range.

An important consideration is that the geographic sampling strategy of *[[Yersinia pestis|Y. pestis]]* genomes (Figure @fig:fig_map_ibd_timeline A) does not reflect the known distribution of modern plague [[Xu 2019 Historical Genomic Data\|[@xu2019HistoricalGenomicData]]], let alone historical pandemics. Nor does it adequately characterize the most heavily affected regions of the world, namely [[Madagascar]] and the [[Democratic Republic of the Congo]] [[WHO 2017 Plague\|[@who2017Plague]]]. The [[Over-Represented|over-sampling]] of [[East Asia]] has been previously described by [[Spyrou 2016 Historical Pestis Genomes|@spyrou2016HistoricalPestisGenomes]] and considerably drives the hypothesis that *[[Yersinia pestis\|Y. pestis]]* originated in [[China]] [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]]. This once established hypothesis is now in contention, as the most basal strains of *[[Yersinia pestis|Y. pestis]]* (Clades 0.PRE and 0.PE) have been isolated from all across [[Eurasia]].

The global phylogeny of *[[Yersinia pestis|Y. pestis]]* exhibits varying degrees of geographic structure (Table @tbl:mantel). 

#### [[Host]]

While some pathogens show high specificity for particular hosts, *[[Yersinia pestis|Y. pestis]]* is capable of infecting virtually all mammals ([[CITE]]). As a result, the global phylogeny of plague is overall not structured by host (Figure @fig:divtree_host). While the ancient clades of [[Yersinia pestis|Y. pestis]] ([[LNBA|Late Neolithic Bronze Age\|Bronze Age]], [[First Pandemic]], [[Second Pandemic]]) are exclusively associated with humans, this is more likely due to the sampling biases discusses previously. In archaeological investigations of *[[Yersinia pestis|Y. pestis]]*, human skeletal remains have been prioritized over zooarchaeological remains either due to abundance and/or availability.

It is worth noting that some degree of host-specific structure can be observed in the *pestoides* (```[[0.PE]]```) clade.

### [[Phylodynamics]] {.page_break_before}

> How has the known diversity of plague changed over time?

#### Temporal Signal {#sec:temporal_signal}

The [[Bayesian Evaluation of Temporal Signal]] (BETS) exhibited poor sampling of the clock model parameters. However the [[Coefficient of Variation]] was consistently sampled >1, suggesting very substantial rate heterogeneity among lineages. To reduce uncertainty associated with the model, a fixed topology was used which did not recover... .This finding is congruent with previous work that documented substantial rate variation both between and within clades of *[[Yersinia pestis|Y. pestis]]* [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]]. Previous studies reported convergent MCMC chains. We posit that the dataset composition used in this study, which is markedly larger and more diverse than used previously, is the culprit. Thus finding new approaches to modelling temporal signal is crucial if we want to incorporate more diverse datasets.

Visual inspection of a [[Root to Tip Regression]] led to the hypothesis that *[[Yersinia pestis|Y. pestis]]* has clade-specific molecular clocks (Figure @fig:rtt).

When the multiple alignments were separated by clade as described in Section @sec:TBD... stable estimates could be obtained for all but one clade (```[[2.MED]]```). Furthermore, temporal signal was detected in 7/12 clades. While several clades did appear to exhibit strict clock-like behavior according to the [[Root to Tip Regression]] (Figure @fig:rtt_clades), the relaxed clock model had greater support in [[BETS]] in all cases (Table @tbl:temporal_signal). This suggests too important findings.

1. Fitting a single clock model to all global populations of *[[Yersinia pestis|Y. pestis]]* is inappropriate and unstable.
1. Clades of *[[Yersinia pestis|Y. pestis]]* have more temporal signal than previously thought.
1. A [[Root to Tip Regression]] is a poor indicator of temporal signal for *[[Yersinia pestis|Y. pestis]]*. While the R<sup>2</sup> and p-value may indicate a linear model (ie. strict clock) is a good fit, it does not mean this is the most appropriate model to use.

 Intriguingly, clades that have been associated with historically documented pandemics are well-modeled by a strict clock including the [[First Pandemic]] clade ```[[0.ANT4]]```, the [[Second Pandemic]] clade ```[[1.PRE]] ``` and the [[Third Pandemic]] clade ```[[1.OR1]]```. The final clade which demonstrates strict clock behavior is the [[LNBA|Late Neolithic Bronze Age]] group ```[[0.PRE]]```. As this time period pre-dates historical records, there is little opportunity to estimate mortality rates. However, this similarity may lend support to the hypothesis that an early pandemic of plague was occurring at that time [[Rascovan et al. 2019 Emergence Spread Basal\|@rascovan2019EmergenceSpreadBasal]]. It may be a useful avenue of research to investigate to what extent rate variation is a useful predictor for 'pandemic potential'.

While a [[Root to Tip Regression]] can be useful tool to explore temporal signal, it has several known limitations. Namely the underlying assumption of strict clock-behavior and the non-independence of data points [[Duchene 2020 Bayesian Evaluation Temporal|[@duchene2020BayesianEvaluationTemporal]]]. A [[Bayesian Evaluation of Temporal Signal|BETS]] analysis counters both of these limitations, and is overall more sensitive given that multiple clock models can be tested. The superior performance of the [[Bayesian Evaluation of Temporal Signal|BETS]] test can be seen in (Table @tbl:table_temporal_signal). The [[Root to Tip Regression]] detects temporal signal in 5/12 clades while [[Bayesian Evaluation of Temporal Signal|BETS]] detects signal in 7/12 clades. Furthermore, in all cases the [[Clock Model|relaxed clock]] proves to have stronger support, even when the regression [[Coefficient of Determination]] is high. The conclusion is that a root-to-tip regression is a relatively poor measure of [[Clock Model|temporal signal]] in *[[Yersinia pestis|Y. pestis]]*.

> Wait for an update on [[0.PRE]] to confirm this.




> So what about Branch 2, since I was so adamant that it could be an undocumented historical pandemic?



#### Clock Model

- [[Clock Model#Relaxed Clock|Relaxed clock]] [[MCMC]] runs produce a high [[Coefficient of Variation]] indicating a relaxed model is favored over a strict model (Figure @fig:fig_coefficient_variation). However, these runs do not converge, suggesting there is too much [[rate variation]] to confidently estimate key parameters such as the mean [[Substitution Rate]] or [[MRCA|tMRCA]].

- When estimating a [[Substitution Rate]] for all of *[[Yersinia pestis|Y. pestis]]*, a [[Clock Model|strict clock]] and [[Clock Model|relaxed clock]] produce different estimates. This is observed in a Bayesian framework, where the strict clock underestimates the mean and the relaxed clock is multi-modal (Figure @fig:fig_sub_rate_compare). Also in a maximum likelihood framework (strict: 7.86E-09, relaxed: 1.63E-08)
	
- There doesn't appear to be clustering of rates. Branches with high rates are next to those with low rates  (Figure @fig:fig_timetree_color_rate).

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

The confidence with which ancestral location could be estimated is described in Table @tbl:table_discrete_phylogeography_confidence and visualized in Figure @fig:fig_phylogeography_confidence. Across the entire phylogeny, the location of 34% of internal nodes could be estimated with high confidence given the data. Uncertainty derives from X sources:

- Overall slow substitution rate.
- Rapid geographic spread with little SNP differentiation.

ie. Not great for pandemic spread, not measurable evolving across the landscape. Phylogeography is better suited to ...

## Conclusion {.page_break_before}


## Materials and Methods {.page_break_before}

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


## References {.page_break_before}

<div id="refs"></div>

## Appendix

### Methods Overview

![Computational methods workflow.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/6d9ab2e/main/report/workflow.png){#fig:fig_workflow}

### [[Population Structure]]

#### Phylogeny

![
The maximum-likelihood phylogeny depicts the global population structure of *[[Yersinia pestis\|Y. pestis]]*. The divisions of the four major sub-typing systems are provided.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/e0542fd/main/auspice/all/chromosome/full/filter5/divtree_branch_major.png){#fig:divtree_branch-major}

#### [[Time Period]]

![
The temporal distribution of *[[Yersinia pestis\|Y. pestis]]* genomes.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/e0542fd/main/iqtree/all/chromosome/full/filter5/filter-taxa/timeline_all_annotate.png){#fig:timeline}

#### [[The Three Pandemic Problem]]

![The geographic distribution of *[[Yersinia pestis|Y. pestis]]* ```[[Branch 2]]```. (PLACEHOLDER)](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/e0d84a1/main/auspice/all/chromosome/full/filter5/2_map.PNG){#fig:map_branch2 style="border:1px solid black"}

#### [[Host]]

![
The maximum-likelihood phylogeny depicting the global population structure of *[[Yersinia pestis\|Y. pestis]]* by host. The divisions of the four major sub-typing systems are provided.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/5af901d/main/auspice/all/chromosome/full/filter5/divtree_host.png){#fig:divtree_host}

#### [[tMRCA]]

![ Time to Most Recent Common Ancestory (tMRCA) by clade.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/tmrca_boxplot_all.png){#fig:fig_tmrca_boxplot_all}

### [[Phylodynamics]]

#### [[Root to Tip Regression]]

![Root To Tip Regression. The solid line represents the linear model for the entire dataset. The dashed lines present linear models for clades with significant p values.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt_all_branch_major.png){#fig:rtt_all_branch-major}

![Root To Tip Regression by clade.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt_clades.png){#fig:rtt_clades}


| Clade  | N   | Coefficient | p          | Substitution Rate | Rate 95% CI Low | Rate 95% CI High | tMRCA | tMRCA 95% CI Low | tMRCA 95% CI High | 
| ------ | --- | -----------:| ---------- | ----------------- | --------------- | ---------------- | ----- | ---------------- | ----------------- |
| All    | 601 |        0.09 | 4.959e-13* | 7.54e-09          | 5.68e-09        | 8.95e-09         | -7310 | -10276           | -5858             |
| 0.PRE  | 8   |        0.91 | 1.678e-03* | 7.17e-08          | 5.98e-08        | 8.48e-08         | -2895 | -3026            | -2799             |
| 0.ANT4 | 12  |        0.66 | 7.842e-03* | 2.54e-08          | 1.65e-08        | 3.35e-08         | -113  | -483             | 39                |
| 0.PE   | 83  |        0.01 | 1.000e+00  | 1.75e-07          | -6.05e-08       | 4.18e-07         | 1542  | -360             | 3654              |
| 0.ANT  | 103 |       -0.01 | 1.000e+00  | -1.21e-08         | -7.36e-08       | 4.12e-08         | 3073  | -711             | 6226              |
| 1.PRE  | 40  |        0.76 | 2.022e-12* | 6.45e-08          | 5.52e-08        | 7.36e-08         | 1352  | 1316             | 1378              |
| 1.ANT  | 4   |        0.45 | 1.000e+00  | 5.95e-08          | 2.15e-08        | 9.97e-08         | 1750  | 1319             | 1841              |
| 1.IN   | 39  |        -0.0 | 1.000e+00  | 4.34e-08          | -2.91e-08       | 1.18e-07         | 1878  | 1597             | 2360              |
| 1.ORI  | 117 |        0.04 | 1.184e-01  | 2.57e-08          | 7.80e-09        | 4.07e-08         | 1766  | 1347             | 1854              |
| 2.ANT  | 54  |        0.05 | 4.764e-01  | -1.20e-07         | -2.35e-07       | -3.41e-08        | 2047  | 2019             | 2204              |
| 2.MED  | 116 |        0.01 | 1.000e+00  | -6.96e-08         | -1.57e-07       | 1.33e-08         | 2181  | 1472             | 2900              |
| 3.ANT  | 11  |       -0.04 | 1.000e+00  | 3.53e-08          | -2.53e-08       | 9.94e-08         | 1817  | 1189             | 3191              |
| 4.ANT  | 11  |       -0.11 | 1.000e+00  | -6.84e-09         | -6.99e-08       | 6.11e-08         | 2839  | 1106             | 3493              |

Table:  [[Root to Tip Regression]] statistics. {#tbl:rtt_statistics}

![Mean substitition rate uncertainty by clade based on a non-parametric bootstrap of the [[Root to Tip Regression\|root-to-tip regression]].](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/rate_boxplot_all.png){#fig:fig_rate_boxplot_all}

#### [[BETS]]


| Branch |   Clade    | Strict Clock Bayes Factor | UCLN Bayes Factor | 
|:------:|:----------:| -------------------------:| -----------------:|
|   1    | [[1.ORI]]  |                     29.6* |             35.7* |
|   1    |  [[1.IN]]  |                      -3.9 |             -10.2 |
|   1    | [[1.ANT]]  |                      8.9* |             12.6* |
|   1    | [[1.PRE]]  |                     10.1* |             44.1* |
|   2    | [[2.MED]]  |                        -- |                -- |
|   2    | [[2.ANT]]  |                     -20.8 |             -13.7 |
|   4    | [[4.ANT]]  |                      -2.9 |              3.7* |
|   3    | [[3.ANT]]  |                      -9.6 |             -11.4 |
|   0    | [[0.ANT]]  |                      -2.3 |              -6.5 |
|   0    | [[0.ANT4]] |                      5.3* |              5.9* |
|   0    |  [[0.PE]]  |                     -82.1 |             12.4* |
|   0    | [[0.PRE]]  |                     83.0* |              -2.9 |

![Coefficient of variation.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Coefficient%20of%20Variation.png){#fig:fig_coefficient_variation width="100%"}

![Substitution rate comparison (green: strict clock, orange: relaxed clock.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Substitution%20Rate%20Comparison.png){#fig:fig_sub_rate_compare width="100%"}


![Time tree colored by rate.](https://raw.githubusercontent.com/ktmeaton/obsidian-public/4f0256a5ba01b5e32025339865e1f35243c13188/academic/Time%20Tree%20Colored%20by%20Rate.png){#fig:fig_timetree_color_rate width="100%"}

### [[Phylogeography]]


![
The geographic distribution of *[[Yersinia pestis\|Y. pestis]]* genomes. 
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/augur/all/chromosome/full/filter5/map_all.png){#fig:map_all_branch-major}

![
Geographic distance vs. genetic distance. Statistical results come from a mantel test at α <= 0.05.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/mantel_all.png){#fig:mantel_all_branch-major}

![
Geographic distance vs. genetic distance by clade. Statistical results come from a mantel test.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/mantel_clades.png){#fig:mantel_clades_branch-major}


| Clade  | N   | Coefficient | P      |
| ------ | --- | ----------- | ------ |
| All    | 601 | -0.04       | 0.402  |
| 0.PRE  | 8   | -0.07       | 0.544  |
| 0.ANT4 | 12  | 0.81        | 0.224  |
| 0.PE   | 83  | 0.71        | 0.013* |
| 0.ANT  | 103 | 0.58        | 0.013* |
| 1.PRE  | 40  | 0.23        | 0.063  |
| 1.ANT  | 4   | 0.46        | 0.224  |
| 1.IN   | 39  | 0.28        | 0.063  |
| 1.ORI  | 117 | 0.59        | 0.013* |
| 2.ANT  | 54  | 0.46        | 0.027* |
| 2.MED  | 116 | 0.06        | 0.544  |
| 3.ANT  | 11  | 0.56        | 0.027* |
| 4.ANT  | 11  | 0.46        | 0.02*  |

Table:  [[Mantel Test]] statistics. {#tbl:mantel}

![ Discrete state phylogeography confidence. High confidence branches (>=0.95) are colored black, low confidence branches are colored light grey.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/69cbfd3/main/auspice/all/chromosome/full/filter5/divtree_mugration_confidence.png){#fig:fig_phylogeography_confidence}


| Clade  | Internal Nodes | High Confidence (Nodes) | High Confidence (Percent) |
| ------ | --------------:| -----------------------:| -------------------------:|
| All    |            600 |                     202 |                     33.67 |
| 1.ORI  |            116 |                      29 |                     25.00 |
| 1.IN   |             39 |                      17 |                     43.59 |
| 1.ANT  |              3 |                       0 |                      0.00 |
| 1.PRE  |             40 |                      13 |                     32.50 |
| 2.MED  |            115 |                      34 |                     29.57 |
| 2.ANT  |             53 |                      23 |                     43.40 |
| 4.ANT  |             10 |                       3 |                     30.00 |
| 3.ANT  |             10 |                       6 |                     60.00 |
| 0.ANT  |            104 |                      26 |                     25.00 |
| 0.ANT4 |             11 |                       4 |                     36.36 |
| 0.PE   |             85 |                      43 |                     50.59 |
| 0.PRE  |              7 |                       3 |                     42.86 |

Table: Discrete state phylogeography confidence.
{#tbl:table_discrete_phylogeography_confidence}
