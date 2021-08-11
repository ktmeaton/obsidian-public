---
project: [ [ plague-phylogeography ] ]
due: June 15, 2021
time: 18:00
people:
  - [ [ Katherine Eaton ] ]
  - [ [ Hendrik Poinar ] ]
  - [ [ Sebastian Duchene ] ]
  - [ [ Leo Featherstone ] ]
authors:
  - name: [ [ Katherine Eaton ] ]
    github: ktmeaton
    orcid: 0000-0001-6862-7756
    affiliations:
      [
        "[[McMaster Ancient DNA Center]]",
        "[[Department of Anthropology]], [[McMaster University]]"
      ]
  - name: [ [ Leo Featherstone ] ]
    orcid: 0000-0002-8878-1758
    affiliations:
      [
        "[[The Peter Doherty Institute For Infection and Immunity ]],
          [[University of Melbourne]]"
      ]
  - name: [ [ Sebastian Duchene ] ]
    github: sebastianduchene
    orcid: 0000-0002-2863-0907
    affiliations:
      [
        "[[The Peter Doherty Institute For Infection and Immunity ]],
          [[University of Melbourne]]"
      ]
  - name: [ [ Ann Carmichael ] ]
    affiliations: [ "[[Indiana University Bloomington]]" ]
  - name: [ [ Nükhet Varlık ] ]
    orcid: 0000-0001-6870-5945
    affiliations: [ "[[University of South Carolina]]" ]
  - name: [ [ Hendrik Poinar ] ]
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
subtitle: New insight from the global phylogeny of *[[Yersinia pestis|Y. pestis]]*
type:
  - [ [ Task ] ]
  - [ [ Note ] ]
  - [ [ Paper ] ]
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

Plague has an impressively long and expansive history as a human disease. The earliest evidence of the plague bacterium, *[[Yersinia pestis]]*, comes from [[Ancient DNA\|ancient DNA]] studies, dating its emergence to at least the Neolithic [[Andrades Valtuena et al. 2017 Stone Age Plague\|[@andradesvaltuena2017StoneAgePlague; ]] [[Rascovan et al. 2019 Emergence Spread Basal\|@rascovan2019EmergenceSpreadBasal]]]. Since then, *[[Yersinia pestis\|Y. pestis]]* has traveled extensively due to ever-expanding global trade networks  and the ability to infect a wide variety of mammalian hosts [[Yue 2017 Trade Routes Plague\|[@yue2017TradeRoutesPlague;]] [[Perry 1997 Yersinia Pestis Etiologic\|@perry1997YersiniaPestisEtiologic]]]. Few regions of the ancient and modern world remain untouched by this disease, as plague has an established presence on every continent except Oceania [[WHO 2017 Plague\|[@who2017Plague]]].

Accompanying this prolific global presence is unnervingly high mortality. The infamous medieval Black Death (1346-1353) is estimated to have killed more than half of Europe's population [[Benedictow 2004 Black Death 1346-1353\|[@benedictow2004BlackDeath13461353]]]. This virulence can still be observed in the post-antibiotic era, where case fatality rates range from 22-71% [[Bertherat 2019 Plague World 2019\|[@bertherat2019PlagueWorld2019]]]. As a result, plague maintains its status as a disease that is of vital importance to current public health initiatives.

A key component of these health initiatives is the surveillance of wild reservoirs. The natural cycle of plague involves many agents, from the primary rodents and fleas which perpetuate *[[Yersinia pestis|Y. pestis]]*, to the 'spillover' hosts, including humans [[Zeppelini 2016 Zoonoses Ecological Entities\|[@zeppelini2016ZoonosesEcologicalEntities]]]. This complex ecology ensures that a vast array of biological and social factors influence disease exposure, which vary across space and time [[Stenseth 2006 Plague Dynamics Are\|[@stenseth2006PlagueDynamicsAre;]] [[Pham 2009 Correlates Environmental Factors\|@pham2009CorrelatesEnvironmentalFactors]]]. It is therefore unsurprising that the factors driving the re-emergence and spread of plague pandemics remain enigmatic.

The need to unravel this elusive diversity has given birth to new lines of inquiry, such as ancient bacterial genomics [[Bos 2011 Draft Genome Yersinia\|[@bos2011DraftGenomeYersinia]]]. The last decade has witnessed an explosion of ancient DNA (aDNA) studies, which have retrieved *[[Yersinia pestis|Y. pestis]]* from historical epidemics [[bos 2011 Draft Genome Yersinia\|[@bos2011DraftGenomeYersinia]]] and underrepresented regions [[Susat 2020 Yersinia Pestis Strains\|[@susat2020YersiniaPestisStrains]]]. The sequencing of modern *[[Yersinia pestis|Y. pestis]]* populations has accelerated in tandem, resulting in rich, comparative datasets [[Zhou 2020 EnteroBase User Guide\|[@zhou2020EnteroBaseUserGuide]]]. Phylogenetic analyses of these genomes have often revealed unexpected connections between past and present outbreaks of plague [[Bos et al. 2016 Eighteenth Century Yersinia|[@bos2016EighteenthCenturyYersinia]]], thus expanding our knowledge of the origins and epidemiology of *[[Yersinia pestis|Y. pestis]]*.

Unfortunately, this expansive knowledge is not without its limitations. Genomic representation of *[[Yersinia pestis|Y. pestis]]* has long been affected by sampling biases, such as the over-representation of [[East Asian\|East Asian]] samples [[Spyrou 2016 Historical Pestis Genomes|[@spyrou2016HistoricalPestisGenomes]]]. An example of this bias, and subsequent critique, is that the once-established hypothesis that plague originated in China [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]] is now in contention [[Rascovan et al. 2019 Emergence Spread Basal\|[@rascovan2019EmergenceSpreadBasal]]]. Recent sequencing efforts have specifically aimed to combat this sampling bias, by deeply sampling underrepresented plague foci [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia;]] [[Vogler 2019 Single Introduction Yersinia\|@vogler2019SingleIntroductionYersinia]]]. However, this new data has not yet been contextualized within a global framework, which will be a decisive step towards updating our knowledge of plague's population structure.

Another significant limitation is the cryptic clock of *[[Yersinia pestis|Y. pestis]]*. There is considerable debate concerning the accuracy of molecular clock methods, which seek to estimate crucial dates such as the time to most recent common ancestor (tMRCA) and past pandemics. It remains unresolved whether *[[Yersinia pestis|Y. pestis]]* has absolutely no temporal signal [[Wagner et al. 2014 Yersinia Pestis Plague|[@wagner2014YersiniaPestisPlague]]], or if sub-populations have such distinct rates that a species-wide signal is obscured [[Spyrou 2019 Phylogeography Second Plague|[@spyrou2019PhylogeographySecondPlague;]] [[Duchene 2016 Genome-scale Rates Evolutionary|@duchene2016GenomescaleRatesEvolutionary]]]. This uncertainty has produced radically different temporal models between studies, with divergence dates shifted by thousands of years [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Rasmussen 2015 Early Divergent Strains\|@rasmussen2015EarlyDivergentStrains]]]. Thus a comprehensive understanding of plague's molecular clock, or lack thereof, is necessary before we can untangle which human populations have been affected by this disease.

<div style="page-break-after: always;"></div>

One final obstacle that limits our ability to track the spread of *[[Yersinia pestis|Y. pestis]]* between populations, is the sporadic dispersal history of plague. *[[Yersinia pestis|Y. pestis]]* is remarkable for its "boom-bust" dynamics [[Strayer 2017 Boom-bust Dynamics Biological\|[@strayer2017BoombustDynamicsBiological]]], in which periods of slow, clonal diversification are repeatedly interrupted by sudden bursts of radial expansion [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation]]]. These bursts often produces cryptic geographic patterns, such as the case of the Black Death, in which the dispersal of *[[Yersinia pestis|Y. pestis]]* occurred so quickly that isolates from all across Europe are nearly indistinguishable [[Spyrou 2019 Phylogeography Second Plague|[@spyrou2019PhylogeographySecondPlague]]]. In contrast, tremendous diversity can accumulate within a relatively small area, as observed in neighboring foci of the Caucasus Mountains [[Zhgenti 2015 Genome Assemblies 11\|[@zhgenti2015GenomeAssemblies11]]]. Just as was the case for molecular clock methods, this extreme variation in how genetic diversity is distributed across the globe is extremely challenging to model.  Despite, this difficulty, many studies have attempted to infer the migration history of plague using phylogeography methods [[Morelli et al. 2010 Yersinia Pestis Genome|[@morelli2010YersiniaPestisGenome;]][[namouchi2018IntegrativeApproachUsing\|@namouchi2018IntegrativeApproachUsing]]],  However, no study to date has statistically evaluated the accuracy and uncertainty involved in this spatial analysis.

In response to these debates and obstacles, this paper proposes a theoretical and methodological shift in plague genomics. Rather than conceptualizing *[[Yersinia pestis\|Y. pestis]]* as a conglomerate species, we highlight how novel insight emerges when nuanced models are constructed based on the underlying population structure. To accomplish this shift in discourse, we focus on four objectives, specifically to:

1. Curate and contextualize the most recent *[[Yersinia pestis\|Y. pestis]]* genomic metadata.
1. Review and critique our current understanding of *[[Yersinia pestis\|Y. pestis]]* population structure.
1. Conduct nuanced molecular clock analyses and phylogeographic reconstruction.
1. Identify key areas of phylogenetic uncertainty to be expanded on in future research.

Progress towards these key objectives is anticipated to benefit both prospective studies of plague, such as environmental surveillance and outbreak monitoring, and retrospective studies, which seek to date the emergence and spread of past pandemics.

## Results and Discussion  {.page_break_before}

### Population Structure of *[[Yersinia pestis]]*

Population or genetic structure, arises when a group of organisms subdivide and diversify in relative isolation. Identifying these populations is a critical step in reconstructing the evolutionary history of an organism, as misspecification can result in fundamentally different interpretations [[Scerri 2018 Did Our Species\|[@scerri2018DidOurSpecies]]]. Phylogenetic analysis is a technique used to explore this structure [[Volz 2020 Identification Hidden Population\|[@volz2020IdentificationHiddenPopulation]]], as it attempts to model the existing genetic diversity and divergences that have occurred. The factors driving the structure can then be interrogated using an assortment of contextual metadata including phenotype, collection date, and geography.

To investigate the global population structure of *[[Yersinia pestis|Y. pestis]]*, we estimated a maximum-likelihood phylogeny from 601 genomes, including 540 modern (89.9%) and 61 ancient (10.1%) strains. In addition,  two genomes of the outgroup taxa *[[Yersinia pseudotuberculosis]]* were included to root the tree. The alignment consisted of 10,249 variant positions exclusive to *[[Yersinia pestis|Y. pestis]]*, with 3,844 sites shared by at least two strains. Following phylogenetic estimation, we pruned the outgroup taxa *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]* from the tree to more closely examine intra-strain diversity.

In Figure @fig:divtree_branch_major, we contextualize the maximum-likelihood phylogeny using three nomenclature systems: the `major branches`, `biovars`, and `time periods`.  In the following section, we compare how each system defines the population structure of *[[Yersinia pestis|Y. pestis]]*, and the uncertainty surrounding these incongruent divisions.

![
The maximum-likelihood phylogeny depicts the global population structure of *[[Yersinia pestis\|Y. pestis]]*. The divisions of three taxonomic systems are provided for context.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/1d4af06/main/auspice/all/chromosome/full/filter5/divtree_branch_major.png){#fig:divtree_branch_major}

<div style="page-break-after: always;"></div>

### Population Structure Nomenclature

#### Major Branch

The `major branch` system divides the global phylogeny of *[[Yersinia pestis\|Y. pestis]]* into populations according to their relative position to the “big bang” polytomy  [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation]]]. All lineages that diverged prior to this polytomy are grouped into `Branch 0` and those diverging after form `Branches 1-4`. Because this multifurcation plays such a central role in this system, there is great interest in estimating its timing and geographic origins [[Green 2020 How Microbe Becomes\|[@green2020HowMicrobeBecomes]]]. However, the epidemiological significance of the “big bang” polytomy remains unclear, as no definitive phenotype has been identified that correlates with the observed branching pattern. The simplicity of this system, in which populations are defined by a singular event, is therefore offset by the considerable diversity that is collapsed into each `major branch`.

#### Biovar


The oldest system to date is the `biovar` nomenclature, which uses phenotypic differences to define population structure. *[[Yersinia pestis|Y. pestis]]* can be categorized into four classical biovars, *antiqua* (ANT), *medievalis* (MED), *orientalis* (ORI), and *microtus*/*pestoides* (PE), according to the ability to ferment glycerol and reduce nitrate [[Devignat 1951 Varietes Espece Pasteurella\|[@devignat1951VarietesEspecePasteurella;]] [[Zhou 2004 Comparative Evolutionary Genomics\|@zhou2004ComparativeEvolutionaryGenomics]]] Non-classical biovars have also been introduced, such as the *intermedium* biovar (IN), which reflects a transitional state from *antiqua* to *orientalis* [[Li 2009 Genotyping Phylogenetic Analysis\|[@li2009GenotypingPhylogeneticAnalysis]]]. 

While these phenotypes don’t fully contradict the `major branches`, the `biovar` nomenclature considerably shifts the defining boundaries between *[[Yersinia pestis|Y. pestis]]* populations. This uncertainty is exacerbated by the discovery of 'extinct' *[[Yersinia pestis|Y. pestis]]*, for which metabolic sub-typing is impossible [[Bos 2011 Draft Genome Yersinia\|[@bos2011DraftGenomeYersinia]]]. Some researchers have responded by extrapolating an existing biovar designation (`[[ANT]]`) [[Wagner et al. 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]] or creating a new one (`[[PRE]]`) [[Rasmussen 2015 Early Divergent Strains\|[@rasmussen2015EarlyDivergentStrains]]]. 

As a result of these , the `biovar` nomenclature 


#### Time Period

Instead of wrestling 
Others still, forgo metabolic classifications in favor of defining population structure according to historical according time periods.
Here, the known genetic diversity of Y. pestis is sub-divided into four time periods: the Bronze Age (3rd - 1st millenium BCE), the First Pandemic, (6th - 8th century CE), the Second Pandemic (14th - 19th century CE), and the Third (or modern) Pandemic (18th - 20th century CE) [???].


#### Uncertainty

In light of this uncertainty and apparent contradictions, a recent study [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia]]] proposed that the taxonomy of *[[Yersinia pestis|Y. pestis]]* should be revised according to an updated global phylogeny. In the following sections, we explore the newly curated phylogeny and metadata to identify phylogenetic patterns in host associations, geographic dispersal, and epidemiological events.  For statistical analysis, we combine all three taxonomic systems (`major branch`, `biovar`, `time period`) to delineate 12 sub-populations. This approach was selected as it:

1. Is commonly used in comparative genomics of *[[Yersinia pestis|Y. pestis]]* on a global scale [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]].
2. Maintains adequate samples sizes  for statistical analysis.
3. Has a number of categories that remains visually distinctive.

> Ecotyping is one response to this, which adds additional metabolic traits, geogrpahic ranges, reservoir species, and ecological zones.

### Host Associations

To some extent, the lack of obvious population structure can be attributed to *[[Yersinia pestis|Y. pestis]]*'s weak host associations. Similar to its parent species, *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]*  [[Laukkanen-Ninios 2011 Population Structure Yersinia\|[@laukkanen-ninios2011PopulationStructureYersinia]]], *[[Yersinia pestis|Y. pestis]]* is capable of infecting a wide variety of mammalian hosts [[Perry 1997 Yersinia Pestis Etiologic\|[@perry1997YersiniaPestisEtiologic]]]. But while isolates of *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]* cluster by host group [[Williamson 2016 Genomic Insights Sustained\|[@williamson2016GenomicInsightsSustained]]], the host structure of *[[Yersinia pestis|Y. pestis]]* is cryptic. For example, most of the sub-populations examined in this study have been isolated from both humans and non-human animals (Figure @fig:divtree_host). 

The major exception to this pattern are the ancient lineages which are exclusively associated with humans from the Bronze Age (`[[0.PRE]]`), the [[First Pandemic]] (`[[0.ANT4]]`), and the [[Second Pandemic]] (`[[1.PRE]]`). This exception is largely due to sampling biases, as paleogenomic investigations have historically prioritized human skeletal remains over faunal remains. It is only very recently that ancient *[[Yersinia pestis|Y. pestis]]* was first identified in rodent remains [[Morozova 2020 New Ancient Eastern\|[@morozova2020NewAncientEastern]]]. Overall, *[[Yersinia pestis|Y. pestis]]* appears to move relatively easily between mammalian populations, and thus it is challenging to identify consistent ecological barriers that obstruct gene flow between populations.

> In [[Yersinia pseudotuberculosis|Y. pseudotuberculosis]], you can actually identify WHICH species 'caused' the spillover into humans.

![
*Y. pestis* host associations, according to the distribution across the maximum-likelihood phylogeny (left) and the proportion of genomes by population (right). Asterisks indicate populations for which there is a statistically significant relationship between genetic distance and geographic distance.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/bd197bb/main/iqtree/all/chromosome/full/filter5/filter-taxa/host_proportion_tree.png){#fig:divtree_host}

<div style="page-break-after: always;"></div>

### Phylogeography

In addition to a cryptic host structure, the geographic patterning of *[[Yersinia pestis|Y. pestis]]*, or lack thereof, reflects complex dispersal histories. To explore how genetic diversity is distributed over the landscape, we first plotted the geographic distribution of *[[Yersinia pestis\|Y. pestis]]* genomes across the globe (Figure @fig:map_all_branch_major). We then performed a Mantel test [[Mantel 1970 Technique Non-parametric Multivariate\|[@mantel1970TechniqueNonparametricMultivariate]]] to assess the relationship between genetic distance and geographic distance (Figure @fig:mantel_all). No species-wide relationship was statistically detected and a closer examination of the geographic distribution reveals why.

Sub-populations of *[[Yersinia pestis|Y. pestis]]* appear to have visually distinct dispersal histories. For example, many regions in close geographic proximity have been colonized by diverse populations of *[[Yersinia pestis|Y. pestis]]* (Figure @fig:map_all_branch_major). This diversity can be contemporaneous, such as the endemic foci in the [[Caucausus]] and [[Western China]] (```[[0.PE]]```). Alternatively, this diversity may accrue over multiple centuries through distinct re-introductions and extinctions, as seen in the historical populations of Europe (```[[0.ANT]]```, ```[[1.PRE]]```). In these examples, a relatively large amount of genetic diversity appears in a small geographic range. In contrast, regions such as the Americas have been colonized by a single strain of *[[Yersinia pestis|Y. pestis]]* (```[[1.ORI]]```) which shows a relatively small amount of genetic diversity over a tremendously large geographic range. 

![
The geographic distribution of all *[[Yersinia pestis\|Y. pestis]]* genomes by population.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/af5f7da/main/iqtree/all/chromosome/full/filter5/filter-taxa/map_all_branch_major.png){#fig:map_all_branch_major width=80%}

![
The relationship between genetic distance and geographic distance for all *[[Yersinia pestis\|Y. pestis]]* genomes.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/2ab338e/main/iqtree/all/chromosome/full/filter5/filter-taxa/mantel.png){#fig:mantel_all width=40%}

<div style="page-break-after: always;"></div>

In light of plague's evolutionary history, this geographic complexity is unsurprising as *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]*, the parent species of *[[Yersinia pestis|Y. pestis]]*, also does not exhibit strong geographic structure. Outbreak strains of *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]* are particularly challenging to cluster, with non-outbreak lineages showing only slightly more geographic signal [[Williamson 2016 Genomic Insights Sustained\|[@williamson2016GenomicInsightsSustained]]]. In this line of reasoning, the population-specific patterns observed here reflects the similarly complex ecology of plague, which cycles between endemic reservoirs and epidemic periods. Statistical confirmation of these visual trends can be seen in Figure @fig:mantel_clades. When the Mantel test is performed again, this time on each population in isolation, a statistically significant relationship is observed for 50% (6/12) of the defined populations. 

<!--
@5f46213: no grey highlights
@674f572 : grey highlights
-->
![
The relationship between genetic distance and geographic distance for *[[Yersinia pestis\|Y. pestis]]* sub-populations. Asterisks indicate populations that have a statistically significant relationship.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/5f46213/main/iqtree/all/chromosome/full/filter5/filter-taxa/mantel_clades.png){#fig:mantel_clades width=100%}

<div style="page-break-after: always;"></div>

A driving factor of this division appears to be the role of humans as hosts. All populations that have been exclusively isolated from humans (`[[0.PRE]]`, `[[0.ANT]]`,  `[[1.PRE]]`, and `[[1.ANT]]`) have no significant relationship between genetic distance and geographic distance (Figure @fig:divtree_host). This is consistent with the relatively higher mobility of human populations, which can severely disrupt the pattern of slow, endemic spread across the landscape. Interestingly, this pattern extends to as early as the Bronze Age, where the `[[0.PRE]]` sub-population has been found in human settlements across Eurasia.

Evidence for the disruptive role of humans is inversely seen in *[[Yersinia pestis|Y. pestis]]* populations sampled from non-human animals. Populations such as `[[0.PE]]`, `[[0.ANT]]`, `[[2.ANT]]`, `[[3.ANT]]`, `[[4.ANT]]`, and `[[1.ORI]]` have a statistically significant relationship between genetic and geographic distances. In general, this supports the hypothesis that non-human plague follows a continuous model of endemic spread and reflects the strong geographic structure that is often present in small mammals [[[@searle2009CelticFringeBritain;]] [[@querejeta2016GenomicDiversityGeographical]]].  However this explanation is not perfect, as `[[1.IN]]` and `[[2.MED]]` both show no evidence of a relationship between genetic and geographic distance. 

We suspect the reasons for these two exceptions are limited resolution in geocoding and again, population structure. Our standardized approach to geocoding involved taking the centroid location of each province/state sampled. This is likely the problem for `[[1.IN]]`, which is exclusively found in 4 neighboring plague foci in Yunnan, Qinghai, Xinjiang, and Tibet (Figure @fig:map_1.IN_2.MED). In the case of highly localized plague comparisons, the geographic distances between provinces are an inaccurate measure of the true distance between samples. In contrast, `[[2.MED]]` represents the opposite extreme, in that it is one of the most geographic and genetically diverse sub-population of *[[Yersinia pestis|Y. pestis]]*. This population has been sampled all across Asia, with a continuous distribution from the Caucasus Mountain in the West, to the eastern coast of China. The distribution of  distances for `[[2.MED]]` (Figure @fig:mantel_clades) is very similar to the plotted distances of all populations combined (Figure @fig:mantel_all). We therefore propose that any phylogenetic modeling of `[[2.MED]]` requires further subdivision to avoid false aggregation of distinct spread events.

![
A comparison of geographic distributions for outlier populations. Left: the highly localized [[1.IN]] population in China. Right: the pan-Asian population [[2.MED]].
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/48c3703/main/auspice/all/chromosome/full/filter5/map_1.IN_2.MED.png){#fig:map_1.IN_2.MED width=80%}

The finding of such complex dispersal histories has important implications for phylogeographic analysis. 

> **Kat's Notes:** I still need to write all of the context for the following figure...

![
Phylogeography of the First, Second, and Third Plague Pandemics. 
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/f4367dd/main/auspice/all/chromosome/full/filter5/phylogeography_1.ORI_1.PRE_0.ANT4.png){#fig:phylogeography_pandemics}

### Phylodynamics  {.page_break_before}

The complex geographic dispersal history of plague also reveals an important confounding factor: time. Pre-modern isolates of *[[Yersinia pestis|Y. pestis]]*  have strong temporal structure, as they form mostly distinct sub-populations according to collection date (Figure @fig:timeline). This temporal structure, which aligns with several historically documented pandemics, drives the hypothesis of these populations as pandemic lineages. While the pandemic nomenclature provides an excellent foundation for historical discussion, there are several emergent problems with this system. 

![
The temporal distribution of *Y. pestis* genomes.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/7c39160/main/iqtree/all/chromosome/full/filter5/filter-taxa/timeline_all.png){#fig:timeline}

The first issue concerns the misleading nature of Figure @fig:timeline, which implies a sudden burst of diversity appearing in the Modern period. In reality, this diversity had become established centuries before but is genetically underrepresented. One example of this bias is the *pestoides* biovar from Asia (`[[0.PE]]`), which was first found during the Bronze Age and then is only detected again 4000 years later in the Modern period. The long, unsampled history of this population highlights the sampling biases present in ancient DNA studies, which have primarily targeted human populations from Western Europe [[Wagner et al. 2014 Yersinia Pestis Plague|[@wagner2014YersiniaPestisPlague;]] [[Bos et al. 2016 Eighteenth Century Yersinia|@bos2016EighteenthCenturyYersinia;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]].

An even more intriguing example of unsampled diversity, are the populations deriving from ```Branch 2```. Lineages from this `major branch` fulfill many of the criteria of pandemic lineages, and yet do not play a role in the three pandemic narrative. ```Branch 2``` emerges at the same time as, but separate from, the known [[Second Pandemic]] lineages, as part of the "big bang polytomy" (Figure @fig:divtree_branch_major). Furthermore, the *medievalis* population (```[[2.MED]]```) has been associated with high mortality epidemics [[Eroshenko 2021 Evolution Circulation Yersinia\|[@eroshenko2021EvolutionCirculationYersinia]]] and was observed to have the fastest spread velocity of any *[[Yersinia pestis|Y. pestis]]* lineage [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]]. Given this epidemiological significance, it is surprising that these sub-populations have been largely overlooked in the pandemic taxonomy of *[[Yersinia pestis|Y. pestis]]*. As ancient DNA sampling strategies expand out of Europe, it will be important to consider how to adapt and expand the three pandemic nomenclature to encompass this new diversity.

The second major issue also concerns the growing awareness of the temporal overlap of the Second and the Third Pandemic, represented by populations `[[1.PRE]]` and `[[1.ORI]]` respectively. Previously, the temporal extents of these events were mutually exclusive, dating from the 14th to 18th century, and the late 19th to mid-20th century respectively [[Gage 2005 Natural History of Plague\|@gage2005NaturalHistoryPlague]]. Recent historical scholarship has contested this claim, and demonstrated that these constraints are a product of a Eurocentric view of plague [[Varlik 2014 New Science Old\|[@varlik2014NewScienceOld]]]. The Second Pandemic is now recognized to have extended into at least the 19th Century in the Ottoman Empire [[Bolanos 2019 Ottomans Global Crises\|[@bolanos2019OttomansGlobalCrises;]] [[Varlik 2020 Plague That Never\|@varlik2020PlagueThatNever]]. Similarly, the Third Pandemic is now hypothesized to have began as early as the 18th century in southern China [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]].  Unfortunately, this crucial transition period remains unsampled, as no genomic evidence has been found between 1772 and 1912.  Thus it remains unclear where exactly to draw a genetic distinction, if it even exists, between the Second and Third Pandemic.

#### Temporal Signal

Previous work has documented substantial rate variation both between and within populations of *[[Yersinia pestis|Y. pestis]]* [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]]. We therefore began by testing if this characteristic was still present in our updated genomic dataset, which is notably larger and more diverse than those used in previous studies. 

Given this expanded diversity, it is unsurprising that a [[Root to Tip Regression|root-to-tip regression]] on collection date reproduces the finding that substitution rates in *[[Yersinia pestis|Y. pestis]]* are poorly represented by a linear model (ie. strict clock) (Figure @fig:rtt_all_branch-major). While there is a statistically significant positive relationship between date and genetic distance (4.959 x 10<sup>-13</sup>), an extremely low [[Coefficient of Determination\|coefficient of determination]] (R<sup>2</sup>) of 0.09 indicates there is tremendous variation that is not accounted for. A Bayesian comparison of clock models also reiterates this finding,  as the [[Coefficient of Variation\|coefficient of variation]] was consistently estimated to be greater than 1. Taken together, these results affirm that nuanced clock models, such as the uncorrelated relaxed log normal (UCLN) model, should be preferred when modeling the evolutionary rate of *[[Yersinia pestis|Y. pestis]]*.

![The linear regression of root-to-tip distance on collection date. The solid line represents the linear model for all *[[Yersinia pestis\|Y. pestis]]* genomes. The dashed lines represent linear models for populations with significant p values.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt_all_branch_major.png){#fig:rtt_all_branch-major width=75%}

However, the Bayesian analysis exhibited poor sampling of the relaxed clock model parameters, even when using a fixed topology (Figure @fig:mean_rate_trace_kde). This suggests there may be too much [[rate variation]] to confidently estimate key parameters such as the mean [[Substitution Rate\|substitution rate]] and the time to the most recent common ancestor ([[MRCA|tMRCA]]). This observation is consistent with previous analyses [[Wagner 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]] where robust estimates of model parameters could not be estimated, thus leading to the conclusion that *[[Yersinia pestis|Y. pestis]]* lacks temporal signal. At the same time, other studies have suggested data composition is a strong determinant of temporal signal [[Duchene 2016 Genomescale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]] and thus we investigated alternative approaches.

To identify patterns in rate variation that may improve the clock model, we first performed visual inspection of the [[Root to Tip Regression\|root-to-tip regression]] residuals (Figure @fig:rtt_all_branch-major). Three out of twelve populations appeared to have temporal signal according to a linear model, namely the ancient lineages isolated from human skeletal remains: ```[[0.PRE]]``` (Bronze Age),  ```[[0.ANT4]]``` (Late Antiquity), and ```[[1.PRE]]``` (Medieval/Early Modern). Indeed, when the [[Root to Tip Regression|root-to-tip regression]] was performed on populations in isolation, these three groups demonstrated strong evidence of strict-clock behavior (Table @tbl:rtt_statistics, Figure @fig:rtt_clades). A [[Bayesian Evaluation of Temporal Signal|BETS]] analysis by population proved even more sensitive, as temporal signal was detected in all populations with three exceptions: [[1.IN]], [[2.ANT]], and [[3.ANT]] (Table @tbl:bets_temporal_signal). Furthermore, for all populations with temporal signal, the [[Clock Model\|relaxed clock]] model (UCLN) had higher support than the strict clock (SC). 

> **Kat's Note:** Doing some more testing about the mysterious clock of [[0.PRE]]...

The ubiquitous support for a relaxed clock model was initially surprising, as the [[Root to Tip Regression\|root-to-tip regression]] suggested strict clock-like behavior in several populations. However, this disparity can largely be explained by the known statistical limitations of a [[Root to Tip Regression\|root-to-tip regression]] [[Duchene 2020 Bayesian Evaluation Temporal|[@duchene2020BayesianEvaluationTemporal]]] which assumes either 1) no temporal structure, or 2) temporal structure following a linear model. Thus, a [[Root to Tip Regression\|root-to-tip regression]] is strictly a test of the linear model, and will give no indication that other models are a better fit to the data. From this finding, we conclude that a [[Root to Tip Regression\|root-to-tip regression]] is a poor statistical test of temporal signal in *[[Yersinia pestis|Y. pestis]]*, and great caution should be taken in interpreting the regression statistics.

#### Rate Variation

Our approach of fitting nuanced models segregated by population revealed that the 'true' substitution rates of *[[Yersinia pestis|Y. pestis]]* may be much higher than previously thought. Previous work estimated that *[[Yersinia pestis|Y. pestis]]* has one of the slowest observed substitution rates, around  1 x 10<sup>-8</sup>, which is on par with the exceptionally slow-evolving *[[Mycobacterium leprae]]* [[Duchene 2016 Genome-scale Rates Evolutionary|[@duchene2016GenomescaleRatesEvolutionary;]] [[Cui 2013 Historical Variations Mutation|@cui2013HistoricalVariationsMutation]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]]. The [[Bayesian Evaluation of Temporal Signal|BETS]] analysis on the non-segregated data, which was highly unstable, fell within this published range with an estimated rate of 1.55 x 10<sup>-8</sup> (Figure @fig:rate_coefficient). However, this global rate is a considerable underestimate, as the substitution rate ranged from 3.63 x 10<sup>-8</sup> in the First Pandemic population (`[[0.ANT4]]`) to 6.16 x 10<sup>-7</sup> in the *pestoides* biovar (`[[0.PE]]`). This study therefore reports the substitution rate of *[[Yersinia pestis|Y. pestis]]* to be much higher than previously thought and more comparable to bacteria such as *[[Mycobacterium tuberulcosis]]* [[Duchene 2016 Genome-scale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]].

Once again, a driving factor behind the rate variation in *[[Yersinia pestis|Y. pestis]]* appears to be the role of humans as hosts. The populations with the slowest substitution rates were isolated exclusively from humans, and include `[[0.PRE]]` from the Bronze Age, `[[0.ANT4]]` from the First Pandemic, and `[[1.PRE]]` from the Second Pandemic. Similarly, the *pestoides* biovar `[[0.PE]]` is composed of the smallest proportion of human samples, and has the fastest substitution rate. 

> **Kat's Notes:** What is the significance of this finding?

![The mean substitution rate (left) and coefficient of rate variation (right) by population. Each distribution is annotated with the peak value. ](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/ee37554/main/beast/all/chromosome/clade/log/rate_coeff.png){#fig:rate_coefficient width=60%}

<div style="page-break-after: always;"></div>

#### Node Dating  {.page_break_before}

The discovery that the global substitution rate of *[[Yersinia pestis|Y. pestis]]* is a considerable underestimate has important ramifications for node-dating. In Figure @fig:age_root_tree, we compare the estimate tMRCA's by population to the divergence order observed in the maximum-likelihood phylogeny. The non-segregated analysis (`All`) produces a much older date on the root with greater uncertainty (7326 - 3547 BCE) as compared to the tMRCA of the most basal clade `[[0.PRE]]` (3098 - 2786 BCE).

 All populations, except two, have topologically-congruent dates as parent nodes correctly pre-date descendant nodes. The two exceptions to this are the *pestoides* and *antiqua* biovars from Branch 0, `[[0.PE]]` and `[[0.ANT]]`.

> **Kat's Note:** I'm still thinking/working on these results and interpretation.

![The time to most recent common ancestor (tMRCA) by population. The maximum-likelihood phylogeny is overlaid, where all extant diversity has been collapsed into the ancestral node at the MRCA.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/c302d0e/main/beast/all/chromosome/clade/log/tMRCA_tree.png){#fig:age_root_tree width=80%}


## Conclusion {.page_break_before}

1.  **Fitting a single spatiotemporal model to the global phylogeny of *[[Yersinia pestis|Y. pestis]]* is not statistically supported**.  This can be seen in the distinct dispersal patterns of plague populations, which oscillate between endemic spread and radial bursts. This can also be observed in the relative instability of the molecular clock analysis which fails to converge in parameter space.

2. **Separating the genomic dataset by clade recovers robust geographic and temporal signal**. We observe a significant relationship between geographic distance and genetic distance in 50% (6/12) of populations examined in this study. We also find evidence of robust temporal signal in 75% (9/12) of populations.

3. **Host associations are a driving factor in the variation observed between *[[Yersinia pestis|Y. pestis]]* populations.** Plague populations isolated from humans have poor geographic structure and relatively slower substitutions rates. One result is greater uncertainty in phylogeographic reconstructions for these populations.


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

## References {.page_break_before}

<div id="refs"></div>

## Appendix  {.page_break_before}

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

Table:  [[Root to Tip Regression\|Root-to-tip regression]] by population. {#tbl:rtt_statistics width=50%}

![Root To Tip Regression by population.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt_clades.png){#fig:rtt_clades}


#### [[BETS]]

![MCMC parameter estimation of the mean substitution rate for the reduced dataset (N=191). Left: Poor mixing of the MCMC Chain, Right: The resulting multimodal estimate of the rate.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/c12ba4b/main/beast/all/chromosome/prune/filter5/mean_rate_trace_kde.png){#fig:mean_rate_trace_kde width=75%}

| Clade  | Clock | Dates | Log Marginal Likelihood | Bayes Factor |
|:------:|:-----:|:-----:|:-----------------------:|:------------:|
| 1.ORI  |  SC   |  Yes  |      -5899661.493       |     29.6     |
|        |       |  No   |      -5899691.115       |    -29.6     |
|        | UCLN  |  Yes  |      -5899565.743       |     35.7     |
|        |       |  No   |      -5899601.413       |    -35.7     |
|  1.IN  |  SC   |  Yes  |      -5891402.697       |     -3.5     |
|        |       |  No   |      -5891399.168       |     3.5      |
|        | UCLN  |  Yes  |      -5891354.514       |    -10.3     |
|        |       |  No   |      -5891344.183       |     10.3     |
| 1.ANT  |  SC   |  Yes  |      -5882586.874       |     9.3      |
|        |       |  No   |      -5882596.155       |     -9.3     |
|        | UCLN  |  Yes  |      -5882581.864       |     12.7     |
|        |       |  No   |      -5882594.555       |    -12.7     |
| 1.PRE  |  SC   |  Yes  |      -5888129.886       |     10.1     |
|        |       |  No   |      -5888139.985       |    -10.1     |
|        | UCLN  |  Yes  |      -5888038.053       |     44.1     |
|        |       |  No   |      -5888082.134       |    -44.1     |
| 2.MED  |  SC   |  Yes  |      -5920732.774       |    104.6     |
|        |       |  No   |       -5920837.35       |    -104.6    |
|        | UCLN  |  Yes  |      -5919658.136       |     3.9      |
|        |       |  No   |      -5919662.038       |     -3.9     |
| 2.ANT  |  SC   |  Yes  |      -5892894.924       |    -18.7     |
|        |       |  No   |      -5892876.227       |     18.7     |
|        | UCLN  |  Yes  |      -5892804.654       |    -13.4     |
|        |       |  No   |      -5892791.269       |     13.4     |
| 4.ANT  |  SC   |  Yes  |      -5886034.116       |     -2.7     |
|        |       |  No   |      -5886031.423       |     2.7      |
|        | UCLN  |  Yes  |      -5886021.969       |     3.6      |
|        |       |  No   |      -5886025.578       |     -3.6     |
| 3.ANT  |  SC   |  Yes  |      -5887506.036       |     -9.5     |
|        |       |  No   |      -5887496.544       |     9.5      |
|        | UCLN  |  Yes  |      -5887505.841       |    -11.2     |
|        |       |  No   |      -5887494.669       |     11.2     |
| 0.ANT  |  SC   |  Yes  |      -5896016.472       |     -2.4     |
|        |       |  No   |      -5896014.089       |     2.4      |
|        | UCLN  |  Yes  |      -5882581.985       |   13297.7    |
|        |       |  No   |      -5895879.702       |   -13297.7   |
| 0.ANT4 |  SC   |  Yes  |      -5889520.445       |     5.3      |
|        |       |  No   |      -5889525.703       |     -5.3     |
|        | UCLN  |  Yes  |      -5889495.805       |     5.9      |
|        |       |  No   |      -5889501.725       |     -5.9     |
|  0.PE  |  SC   |  Yes  |      -5945574.023       |     28.8     |
|        |       |  No   |      -5945602.843       |    -28.8     |
|        | UCLN  |  Yes  |       -5944614.32       |     12.4     |
|        |       |  No   |      -5944626.698       |    -12.4     |
| 0.PRE  |  SC   |  Yes  |      -5892842.899       |     83.0     |
|        |       |  No   |      -5892925.901       |    -83.0     |
|        | UCLN  |  Yes  |      -5892741.377       |     -2.8     |
|        |       |  No   |      -5892738.563       |     2.8      |

Table:  Temporal signal detection and clock model selection using a [[Bayesian Evaluation of Temporal Signal]] (BETS) analysis. {#tbl:bets_temporal_signal}


### Misc

- Genomic research frequently combines the ```major branch``` and ```biovar``` taxonomy to create clade designations, such as ```[[2.ANT]]``` to represent the *antiqua* biovar found on branch 2.



|   Clade    |  N  | Origin  | Coefficient |         P Value         | % Human | % Non-Human | % NA |
|:----------:|:---:|:-------:|:-----------:|:-----------------------:|:-------:|:-----------:|:----:|
| [[1.ORI]]  | 117 | Modern  |    0.59     | 1.30 x 10<sup>-2</sup>* |   26    |     64      |  10  |
|  [[1.IN]]  | 39  | Modern  |    0.28     | 6.30 x 10<sup>-2</sup>  |   15    |     85      |  0   |
| [[1.ANT]]  |  4  | Modern  |    0.46     | 2.15 x 10<sup>-1</sup>  |   50    |      0      |  50  |
| [[1.PRE]]  | 40  | Ancient |    0.23     | 6.30 x 10<sup>-2</sup>  |   100   |      0      |  0   |
| [[2.MED]]  | 116 | Modern  |    0.06     | 5.46 x 10<sup>-2</sup>  |   15    |     83      |  3   |
| [[2.ANT]]  | 54  | Modern  |    0.46     | 2.70 x 10<sup>-2</sup>* |   31    |     67      |  2   |
| [[4.ANT]]  | 11  | Modern  |    0.46     | 2.00 x 10<sup>-2</sup>* |    9    |     82      |  9   |
| [[3.ANT]]  | 11  | Modern  |    0.56     | 2.70 x 10<sup>-2</sup>* |    9    |     91      |  0   |
| [[0.ANT]]  | 103 | Modern  |    0.58     | 1.30 x 10<sup>-2</sup>* |   10    |     88      |  2   |
| [[0.ANT4]] | 12  | Ancient |    0.81     | 2.15 x 10<sup>-1</sup>  |   100   |      0      |  0   |
|  [[0.PE]]  | 83  | Modern  |    0.71     | 1.30 x 10<sup>-2</sup>* |    7    |     64      |  29  |
| [[0.PRE]]  |  8  | Ancient |    -0.07    | 5.46 x 10<sup>-1</sup>  |   100   |      0      |  0   |
|    All     | 601 |         |    -0.04    |  4.35 x 0<sup>-1</sup>  |   25    |     69      |      |

Table: Statistical results of a Mantel test.