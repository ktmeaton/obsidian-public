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
subtitle: New insight from the global phylogeny of *[[Yersinia pestis|Y. pestis]]* 
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


## Introduction {.page_break_before}

Plague has an impressively long and expansive history as a human disease. The earliest evidence of the plague bacterium, *[[Yersinia pestis]]*, comes from [[Ancient DNA\|ancient DNA]] studies, dating its emergence to at least the Neolithic [[Andrades Valtuena et al. 2017 Stone Age Plague\|[@andradesvaltuena2017StoneAgePlague; ]] [[Rascovan et al. 2019 Emergence Spread Basal\|@rascovan2019EmergenceSpreadBasal]]]. Since then, *[[Yersinia pestis\|Y. pestis]]* has traveled extensively due to ever-expanding global trade networks  and the ability to infect a wide variety of mammalian hosts [[Yue 2017 Trade Routes Plague\|[@yue2017TradeRoutesPlague;]] [[Perry 1997 Yersinia Pestis Etiologic\|@perry1997YersiniaPestisEtiologic]]]. Few regions of the ancient and modern world remain untouched by this disease, as plague has an established presence on every continent except Oceania [[WHO 2017 Plague\|[@who2017Plague]]].

Accompanying this prolific global presence is unnervingly high mortality. The infamous medieval Black Death (1346-1353) is estimated to have killed more than half of Europe's population [[Benedictow 2004 Black Death 1346-1353\|[@benedictow2004BlackDeath13461353]]]. This virulence can still be observed in the post-antibiotic era, where case fatality rates range from 22-71% [[Bertherat 2019 Plague World 2019\|[@bertherat2019PlagueWorld2019]]]. As a result, plague maintains its status as a disease that is of vital importance to current public health initiatives.

A key component of these health initiatives is the surveillance of wild reservoirs. The natural cycle of plague involves many agents, from the primary rodents and fleas which perpetuate *[[Yersinia pestis|Y. pestis]]*, to the 'spillover' hosts, including humans [[Zeppelini 2016 Zoonoses Ecological Entities\|[@zeppelini2016ZoonosesEcologicalEntities]]]. This complex ecology ensures that a vast array of biological and social factors influence disease exposure, which vary across space and time [[Stenseth 2006 Plague Dynamics Are\|[@stenseth2006PlagueDynamicsAre;]] [[Pham 2009 Correlates Environmental Factors\|@pham2009CorrelatesEnvironmentalFactors]]]. It is therefore unsurprising that the factors driving the re-emergence and spread of plague pandemics remain enigmatic.

The need to unravel this elusive diversity has given birth to new lines of inquiry, such as ancient bacterial genomics [[Bos 2011 Draft Genome Yersinia\|[@bos2011DraftGenomeYersinia]]]. The last decade has witnessed an explosion of ancient DNA (aDNA) studies, which have retrieved *[[Yersinia pestis|Y. pestis]]* from historical epidemics [[bos 2011 Draft Genome Yersinia\|[@bos2011DraftGenomeYersinia]]] and underrepresented regions [[Susat 2020 Yersinia Pestis Strains\|[@susat2020YersiniaPestisStrains]]]. The sequencing of modern *[[Yersinia pestis|Y. pestis]]* populations has accelerated in tandem, resulting in rich, comparative datasets [[Zhou 2020 EnteroBase User Guide\|[@zhou2020EnteroBaseUserGuide]]]. Phylogenetic analyses of these genomes have often revealed unexpected connections between past and present outbreaks of plague [[Bos et al. 2016 Eighteenth Century Yersinia|[@bos2016EighteenthCenturyYersinia]]], thus expanding our knowledge of the origins and epidemiology of *[[Yersinia pestis|Y. pestis]]*.

Unfortunately, this expansive knowledge is not without its limitations. Genomic representation of *[[Yersinia pestis|Y. pestis]]* has long been affected by sampling biases, such as the over-representation of [[East Asian\|East Asian]] samples [[Spyrou 2016 Historical Pestis Genomes|[@spyrou2016HistoricalPestisGenomes]]]. An example of this bias, and subsequent critique, is that the once-established hypothesis that plague originated in China [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]] is now in contention [[Rascovan et al. 2019 Emergence Spread Basal\|[@rascovan2019EmergenceSpreadBasal]]]. Recent sequencing efforts have specifically aimed to combat this sampling bias, by deeply sampling underrepresented plague foci [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia;]] [[Vogler 2019 Single Introduction Yersinia\|@vogler2019SingleIntroductionYersinia]]]. However, this new data has not yet been contextualized within a global framework, which will be a decisive step towards updating our knowledge of plague's population structure.

Another significant limitation is the cryptic clock of *[[Yersinia pestis|Y. pestis]]*. There is considerable debate concerning the accuracy of molecular clock methods, which seek to estimate crucial dates such as the time to most recent common ancestor (tMRCA) and past pandemics. It remains unresolved whether *[[Yersinia pestis|Y. pestis]]* has absolutely no temporal signal [[Wagner et al. 2014 Yersinia Pestis Plague|[@wagner2014YersiniaPestisPlague]]], or if sub-populations have such distinct rates that a species-wide signal is obscured [[Spyrou 2019 Phylogeography Second Plague|[@spyrou2019PhylogeographySecondPlague;]] [[Duchene 2016 Genome-scale Rates Evolutionary|@duchene2016GenomescaleRatesEvolutionary]]]. This uncertainty has produced radically different temporal models between studies, with divergence dates shifted by thousands of years [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Rasmussen 2015 Early Divergent Strains\|@rasmussen2015EarlyDivergentStrains]]]. Thus a comprehensive understanding of plague's molecular clock, or lack thereof, is necessary before we can untangle which human populations have been affected by this disease.

One final obstacle that limits our ability to track the spread of *[[Yersinia pestis|Y. pestis]]* between populations, is the sporadic dispersal history of plague. *[[Yersinia pestis|Y. pestis]]* is remarkable for its "boom-bust" dynamics [[Strayer 2017 Boom-bust Dynamics Biological\|[@strayer2017BoombustDynamicsBiological]]], in which periods of slow, clonal diversification are repeatedly interrupted by sudden bursts of radial expansion [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation]]]. These bursts often produces cryptic geographic patterns, such as the case of the Black Death, in which the dispersal of *[[Yersinia pestis|Y. pestis]]* occurred so quickly that isolates from all across Europe are nearly indistinguishable [[Spyrou 2019 Phylogeography Second Plague|[@spyrou2019PhylogeographySecondPlague]]]. In contrast, tremendous diversity can accumulate within a relatively small area, as observed in neighboring foci of the Caucasus Mountains [[Zhgenti 2015 Genome Assemblies 11\|[@zhgenti2015GenomeAssemblies11]]]. Just as was the case for molecular clock methods, this extreme variation in how genetic diversity is distributed across the globe is extremely challenging to model.  Despite, this difficulty, many studies have attempted to infer the migration history of plague using phylogeography methods [[Morelli et al. 2010 Yersinia Pestis Genome|[@morelli2010YersiniaPestisGenome;]][[namouchi2018IntegrativeApproachUsing\|@namouchi2018IntegrativeApproachUsing]]],  However, no study to date has statistically evaluated the accuracy and uncertainty involved in this spatial analysis.

In response to these debates and obstacles, this paper proposes a theoretical and methodological shift in plague genomics. Rather than conceptualizing *[[Yersinia pestis\|Y. pestis]]* as a conglomerate species, we highlight how novel insight emerges when nuanced models are constructed based on the underlying population structure. To accomplish this shift in discourse, we focus on four objectives, specifically to:

1. Curate and contextualize the most recent *[[Yersinia pestis\|Y. pestis]]* genomic metadata.
1. Review and critique our current understanding of *[[Yersinia pestis\|Y. pestis]]* population structure.
1. Conduct nuanced molecular clock analyses and phylogeographic reconstruction.
1. Identify key areas of phylogenetic uncertainty to be expanded on in future research.

Progress towards these key objectives is anticipated to benefit both prospective studies of plague, such as environmental surveillance and outbreak monitoring, and retrospective studies, which seek to date the emergence and spread of past pandemics.

## Results and Discussion  {.page_break_before}

### Population Structure

Population structure, or genetic structure, arises when a group of organisms subdivide and diversify in relative isolation. Identifying these sub-populations is a critical step in reconstructing the evolutionary history of a species, as misspecification can result in fundamentally different interpretations [[Scerri 2018 Did Our Species\|[@scerri2018DidOurSpecies]]]. Phylogenetic analysis is a popular and powerful technique to explore this structure [[Volz 2020 Identification Hidden Population\|[@volz2020IdentificationHiddenPopulation]]], as it directly models the genetic diversity and divergences that have occurred. The driving factors underlying this structure can then be interrogated using an assortment of contextual metadata including phenotype, collection date, and geography.

To investigate the global population structure of *[[Yersinia pestis|Y. pestis]]*, we estimated a maximum-likelihood phylogeny from 603 genomes (600 *[[Yersinia pestis|Y. pestis]]* isolates,  1 *[[Yersinia pestis|Y. pestis]]* reference, and 2 *[[Y. pseudotuberculosis]]* outgroup taxa). The genomic alignment was composed of 10249 variant positions exclusive to *[[Yersinia pestis|Y. pestis]]*, with 3844 sites shared by at least two genomes. Following phylogenetic estimation, we pruned the outgroup taxa *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]* from the tree to more closely examine intra-species diversity. 

In Figure @fig:divtree_branch_major, the maximum-likelihood phylogeny is visualized alongside the four major taxonomic systems currently used to define the population structure of *[[Yersinia pestis|Y. pestis]]*. These include the major phylogenetic branches, biovars, subspecies, and time periods.

![
The maximum-likelihood phylogeny depicts the global population structure of *[[Yersinia pestis\|Y. pestis]]*. The divisions of the four major sub-typing systems are provided.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/3566cff/main/auspice/all/chromosome/full/filter5/divtree_branch_major.png){#fig:divtree_branch_major}

<div style="page-break-after: always;"></div>

#### Major Branch

A comparison of sub-typing systems reveals great uncertainty with regards to  the population structure of *[[Yersinia pestis|Y. pestis]]*. One approach is to divide the global phylogeny of *[[Yersinia pestis|Y. pestis]]* into ```major branches``` according to the relative position of the [[Big Bang Polytomy\|"big bang" polytomy]] [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation]]]. All lineages that diverged prior to this multifurcation are grouped into ```[[Branch 0]]``` and those emerging after are the monophyletic clades ```Branches 1-4```. Higher resolution can be achieved by further sub-dividing these lineages into numerous `minor branches`.

Because the [[Big Bang Polytomy\|"big bang" polytomy]] plays such a central role in this system, there is growing interest in estimating its timing and geographic origins [[Green 2020 How Microbe Becomes\|[@green2020HowMicrobeBecomes]]]. However, an inability to identify phenotypes distinguishing these ```major branches``` poses a significant challenge, and thus the exact epidemiological significance of the [[Big Bang Polytomy\|"big bang" polytomy]] remains unclear.

#### Biovar

An example of this phenotypic challenge can be seen in the population structure defined by the ```biovar``` system. *[[Yersinia pestis|Y. pestis]]* can be categorized using a suite of metabolic properties into the classical biovars: *antiqua* (```ANT```), *medievalis* (```MED```), *orientalis* (```ORI```), and *microtus*/*pestoides* (```PE```) [[Devignat 1951 Varietes Espece Pasteurella\|[@devignat1951VarietesEspecePasteurella;]] [[Zhou 2004 Comparative Evolutionary Genomics\|@zhou2004ComparativeEvolutionaryGenomics;]] [[Li 2009 Genotyping Phylogenetic Analysis\|@li2009GenotypingPhylogeneticAnalysis]]]. The *intermediate* biovar (```IN```) is also used to reflect an intermediate state during the transition from *antiqua* to *orientalis.* While these divisions don't fully contradict the ```major branches```, they do considerably shift the defining boundaries between *[[Yersinia pestis|Y. pestis]]* populations.

#### Subspecies

To further complicate matters, researchers from the Commonwealth of Independent State (CIS) have observed biovar inconsistencies in plague foci surveillance [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia]]]. In response, the ```subspecies``` taxonomy was created to distinguish a main subspecies (*pestis*) that is highly virulent in humans with wide geographic spread, from five or more non-main subspecies that have limited geographic ranges and attenuated virulence in humans [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia]]]. The ```subspecies``` structure is highly convenient for laboratory diagnostics in the CIS, but struggles to differentiate the immense diversity found outside these
localized plague foci.

#### Time Period

The challenge of categorizing plague by metabolism is, unsurprisingly, also an obstacle when analyzing extinct lineages. Ancient DNA (aDNA) researchers have opted to either extrapolate an existing biovar designation (`[[ANT]]`) [[Wagner et al. 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]] or create a new one (`[[PRE]]`) [[Rasmussen 2015 Early Divergent Strains\|[@rasmussen2015EarlyDivergentStrains]]]. However, it is more common in aDNA studies to define population structure by time period and associations with historically documented pandemics. The known genetic diversity of *[[Yersinia pestis|Y. pestis]]* is frequently sub-divided into four periods: the [[LNBA|Bronze Age]] (3rd - 1st millenium BCE), the [[First Pandemic]], (6th - 8th century CE), the [[Second Pandemic]] (14th - 19th century CE), and the [[Third Pandemic]] (18th - 20th century CE) [@cite].

<div style="page-break-after: always;"></div>

#### Structural Uncertainty

In light of this uncertainty and apparent contradictions, a recent study [[Kutyrev 2018 Phylogeny Classification Yersinia\|[@kutyrev2018PhylogenyClassificationYersinia]]] proposed that the taxonomy of *[[Yersinia pestis|Y. pestis]]* should be revised according to an updated global phylogeny. In the following sections, we explore the newly curated phylogeny and metadata to identify phylogenetic patterns in host associations, geographic dispersal, and epidemiological events.  For statistical analysis, we combine three taxonomic systems (`major branch`, `biovar`, `time period`) to delineate 12 sub-populations. This approach was selected as it:

1. Is commonly used in comparative genomics of *[[Yersinia pestis|Y. pestis]]* on a global scale [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation;]] [[Morelli et al. 2010 Yersinia Pestis Genome|@morelli2010YersiniaPestisGenome]]].
2. Maintains adequate samples sizes  for statistical analysis.
3. Has a number of categories that remains visually distinctive.
	
> **Kat's Note**: Since [[0.PE]] is such a strong outlier in the phylodynamic analysis, breaking it up might help...

#### Weak Host Associations

To some extent, the lack of obvious population structure can be attributed to *[[Yersinia pestis|Y. pestis]]*'s weak host associations. Similar to its parent species, *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]*  [[Laukkanen-Ninios 2011 Population Structure Yersinia\|[@laukkanen-ninios2011PopulationStructureYersinia]]], *[[Yersinia pestis|Y. pestis]]* is capable of infecting a wide variety of mammalian hosts [[Perry 1997 Yersinia Pestis Etiologic\|[@perry1997YersiniaPestisEtiologic]]]. But while isolates of *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]* cluster by host group [[Williamson 2016 Genomic Insights Sustained\|[@williamson2016GenomicInsightsSustained]]], the host structure of *[[Yersinia pestis|Y. pestis]]* is cryptic. For example, most of the sub-populations examined in this study have been isolated from both humans and non-human animals (Figure @fig:divtree_host). 

The major exception to this pattern are the ancient lineages which are exclusively associated with humans from the Bronze Age (`[[0.PRE]]`), the [[First Pandemic]] (`[[0.ANT4]]`), and the [[Second Pandemic]] (`[[1.PRE]]`). This exception is largely due to sampling biases, as paleogenomic investigations have historically prioritized human skeletal remains over faunal remains. It is only very recently that ancient *[[Yersinia pestis|Y. pestis]]* was first identified in rodent remains [[Morozova 2020 New Ancient Eastern\|[@morozova2020NewAncientEastern]]]. Overall, *[[Yersinia pestis|Y. pestis]]* appears to move relatively easily between mammalian populations, and thus it is challenging to identify consistent ecological barriers that obstruct gene flow between populations.

![
*Y. pestis* host associations, according to the distribution across the maximum-likelihood phylogeny (left) and the proportion of genomes by population (right). Asterisks indicate populations for which there is a statistically significant relationship between genetic distance and geographic distance.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/bd197bb/main/iqtree/all/chromosome/full/filter5/filter-taxa/host_proportion_tree.png){#fig:divtree_host width=90%}


#### Complex Dispersal Histories

In addition to a cryptic host structure, the geographic patterning of *[[Yersinia pestis|Y. pestis]]*, or lack thereof, reflects complex dispersal histories. To explore how genetic diversity is distributed over the landscape, we first plotted the geographic distribution of *[[Yersinia pestis\|Y. pestis]]* genomes across the globe (Figure @fig:map_all_branch_major). We then performed a Mantel test [[Mantel 1970 Technique Non-parametric Multivariate\|[@mantel1970TechniqueNonparametricMultivariate]]] to assess the relationship between genetic distance and geographic distance (Figure @fig:mantel_all). No species-wide relationship was statistically detected and a closer examination of the geographic distribution reveals why.

Sub-populations of *[[Yersinia pestis|Y. pestis]]* appear to have visually distinct dispersal histories. For example, many regions in close geographic proximity have been colonized by diverse populations of *[[Yersinia pestis|Y. pestis]]* (Figure @fig:map_all_branch_major). This diversity can be contemporaneous, such as the endemic foci in the [[Caucausus]] and [[Western China]] (```[[0.PE]]```). Alternatively, this diversity may accrue over multiple centuries through distinct re-introductions and extinctions, as seen in the historical populations of Europe (```[[0.ANT]]```, ```[[1.PRE]]```). In these examples, a relatively large amount of genetic diversity appears in a small geographic range. In contrast, regions such as the Americas have been colonized by a single strain of *[[Yersinia pestis|Y. pestis]]* (```[[1.ORI]]```) which shows a relatively small amount of genetic diversity over a tremendously large geographic range. 

![
The geographic distribution of *[[Yersinia pestis\|Y. pestis]]* genomes.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/af5f7da/main/iqtree/all/chromosome/full/filter5/filter-taxa/map_all_branch_major.png){#fig:map_all_branch_major width=80%}

![
The relationship between genetic distance and geographic distance for all *[[Yersinia pestis\|Y. pestis]]* genomes.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/2ab338e/main/iqtree/all/chromosome/full/filter5/filter-taxa/mantel.png){#fig:mantel_all width=40%}

<div style="page-break-after: always;"></div>

In light of plague's evolutionary history, this geographic complexity is unsurprising as *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]*, the parent species of *[[Yersinia pestis|Y. pestis]]*, also does not exhibit strong geographic structure. Outbreak strains of *[[Yersinia pseudotuberculosis|Y. pseudotuberculosis]]* are particularly challenging to cluster, with non-outbreak lineages showing only slightly more geographic signal [[Williamson 2016 Genomic Insights Sustained\|[@williamson2016GenomicInsightsSustained]]]. In this line of reasoning, the population-specific patterns observed here like reflects the similarly complex ecology of plague, which cycles between endemic reservoirs and epidemic periods. Statistical confirmation of these visual trends can be seen in Figure @fig:mantel_clades. When the Mantel test is performed again, this time on each population in isolation, a statistically significant relationship is observed for 50% (6/12) of the defined populations. 

![
The relationship between genetic distance and geographic distance for *[[Yersinia pestis\|Y. pestis]]* sub-populations.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/5f46213d28/main/iqtree/all/chromosome/full/filter5/filter-taxa/mantel_clades.png){#fig:mantel_clades width=80%}

> **Kat's Note**: Shall I also put these statistics in a table, and move one of them to the Appendix?

<div style="page-break-after: always;"></div>

A driving factor of this division appears to be the role of humans as hosts. All populations that have been exclusively isolated from humans (`[[0.PRE]]`, `[[0.ANT]]`,  `[[1.PRE]]`, and `[[1.ANT]]`) have no significant relationship between genetic distance and geographic distance (Figure @fig:divtree_host). This is consistent with the relatively higher mobility of human populations, which can severely disrupt the pattern of slow, endemic spread across the landscape. Interestingly, this pattern extends to as early as the Bronze Age, where the `[[0.PRE]]` sub-population has been found in human settlements across Eurasia.

Evidence for the disruptive role of humans is inversely seen in *[[Yersinia pestis|Y. pestis]]* populations sampled from non-human animals. Populations such as `[[0.PE]]`, `[[0.ANT]]`, `[[2.ANT]]`, `[[3.ANT]]`, `[[4.ANT]]`, and `[[1.ORI]]` have a statistically significant relationship between genetic and geographic distances. In general, this supports the hypothesis that non-human plague follows a continuous model of endemic spread and reflects the strong geographic structure that is often present in small mammals [[[@searle2009CelticFringeBritain;]] [[@querejeta2016GenomicDiversityGeographical]]].  However this explanation is not perfect, as `[[1.IN]]` and `[[2.MED]]` both show no evidence of a relationship between genetic and geographic distance. 

We suspect the reason for these exceptions are limited resolution in geocoding and sub-population definitions. Our standardized approach to geocoding involved taking the centroid location of each province/state sampled. This is likely the problem for `[[1.IN]]`, which is exclusively found in 4 neighboring plague foci in Yunnan, Qinghai, Xinjiang, and Tibet. In the case of highly localized plague comparisons, the geographic distances between provinces are an inaccurate measure of the true distance between samples. In contrast, `[[2.MED]]` represents the opposite extreme, in that it is one of the most geographic and genetically diverse sub-population of *[[Yersinia pestis|Y. pestis]]*. This population has been sampled all across Asia, with a continuous distribution from the Caucasus Mountain in the West, to the coast of China in the East (Figure @fig:TBD). The distribution of  distances for `[[2.MED]]` (Figure @fig:mantel_clades) is very similar to the plotted distances of all populations combined (Figure @fig:mantel_all). We therefore propose that any phylogenetic modeling of `[[2.MED]]` requires further subdivision to avoid false aggregation of distinct spread events.

![
The geographic distributions of the highly localized [[1.IN]] population (left) and the pan-Asian population [[2.MED]].
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/48c3703/main/auspice/all/chromosome/full/filter5/map_1.IN_2.MED.png){#fig:map_1.IN_2.MED width=80%}

The finding of such complex dispersal histories has important implications for phylogeographic analysis. 

### Phylogeography  {.page_break_before}

- Lots of people are interested in estimating the spread of pandemics.
- Let's compare three pandemic populations: Second Pandemic [[1.PRE]] and Third Pandemic [[1.ORI]].

![
Phylogeography of the First, Second, and Third Plague Pandemics. 
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/f4367dd/main/auspice/all/chromosome/full/filter5/phylogeography_1.ORI_1.PRE_0.ANT4.png){#fig:phylogeography_pandemics}

<div style="page-break-after: always;"></div>

#### The Three Pandemic Problem  {.page_break_before}

The complex geographic dispersal history of plague also reveals an important confounding factor: time. Pre-modern isolates of *[[Yersinia pestis|Y. pestis]]*  have strong temporal structure, as they form mostly distinct sub-populations according to collection date (Figure @fig:timeline). This temporal structure, which aligns with several historically documented pandemics, drives the hypothesis of these populations as pandemic lineages. While the pandemic nomenclature provides an excellent foundation for historical discussion, there are several emergent problems with this system. 

![
The temporal distribution of *Y. pestis* genomes.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/timeline_all.png){#fig:timeline}

The first issue concerns the misleading nature of Figure @fig:timeline, which implies a sudden burst of diversity appearing in the Modern period. In reality, this diversity had become established centuries before, if not millennia, but is genetically underrepresented. One example of this bias is the *pestoides* biovar from Asia ([[0.PE]]), which was first found during the Bronze Age and then is only detected again 4000 years later in the Modern period. The long, unsampled history of this population highlights the sampling biases present in ancient DNA studies, which have primarily targeted human populations from Western Europe [@cite]. 

An even more intriguing example are the populations deriving from ```Branch 2```, which fulfill many of the criteria of pandemic lineages, and yet do not play a role in the three pandemic narrative. ```Branch 2``` emerges at the same time as, but separate from, the Second Pandemic lineages, as part of the Big Bang Polytomy (Figure @fig:divtree_branch_major). Isolates of ```Branch 2``` have been collected from all throughout Eurasia, stretching from at least the Caucasus, to India, and to eastern China (Figure @fig:map_branch2). Furthermore, the *medievalis* sub-populations (```[[2.MED]]```) have been associated with high mortality epidemics [[Eroshenko 2021 Evolution Circulation Yersinia\|[@eroshenko2021EvolutionCirculationYersinia]]] and were observed to have the fastest spread velocity of any *[[Yersinia pestis|Y. pestis]]* lineage [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]]. Given this epidemiological significance, it is surprising that these sub-populations have been largely overlooked in the pandemic taxonomy of *[[Yersinia pestis|Y. pestis]]*. As ancient DNA sampling strategies expand out of Europe, it will be important to consider how to adapt and expand the three pandemic nomenclature to encompass this new diversity.

The second major issue also concerns sampling biases, and involves the growing awareness of the spatiotemporal overlap of the Second and the Third Pandemic [@cite], populations [[1.PRE]] and [[1.ORI]] respectively. Previously, the temporal extents of these events were mutually exclusive, dating from the 14th-18th century, and the 19th-20th century respectively. Recent historical scholarship has contested this claim, and demonstrated that these constraints are a product of a Eurocentric view of plague [@cite]. The Second Pandemic is now known to have extended into the 19th Century in parts of the Ottoman Empire, with the latest epidemics dating to 1819 [@cite]. Similarly, the Third Pandemic is now hypothesized to have began as early as 1772 in southern China [[Xu 2014 Wet Climate Transportation\|[@xu2014WetClimateTransportation]]].  Unfortunately, this crucial transition period remains unsampled, as no genomic evidence has been found between 1772 and 1912.  Thus it remains unclear where exactly to draw a genetic distinction, if it even exists, between the Second and Third Pandemic.

---
 
- Transition to phylodynamics and phylogeography.


### [[Phylodynamics]] {.page_break_before}

#### Detecting Temporal Signal

Previous work has documented substantial rate variation both between and within populations of *[[Yersinia pestis|Y. pestis]]* [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]]. A [[Root to Tip Regression|root-to-tip regression]] on sampling date for the *full* dataset (N=601) reproduces this finding as the [[Coefficient of Determination\|coefficient of determination]] (R<sup>2</sup>) is extremely low at 0.09 (Figure @fig:rtt_all_branch-major). A  [[Bayesian Evaluation of Temporal Signal]] (BETS) also indicates poor support for a strict clock as the [[Coefficient of Variation\|coefficient of variation]] was consistently estimated to be greater than 1. Taken together, the [[Root to Tip Regression|root-to-tip regression]] and [[BETS]] analysis suggest that alternative clock models, such as the uncorrelated relaxed log normal (UCLN) model, should be preferred when accounting for the high degree of rate variation. 

![ [[Root to Tip Regression\|Root-to-tip regression]]. The solid line represents the linear model for the entire dataset. The dashed lines present linear models for populations with significant p values.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/cd898b3/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt_all_branch_major.png){#fig:rtt_all_branch-major width=75%}

However, the [[Bayesian Evaluation of Temporal Signal|BETS]] analysis exhibited poor sampling of the relaxed clock model parameters, even when using a fixed topology (Figure @fig:mean_rate_trace_kde). This suggests there may be too much [[rate variation]] to confidently estimate key parameters such as the mean [[Substitution Rate\|substitution rate]] and the time to the most recent common ancestor ([[MRCA|tMRCA]]). This observation is consistent with previous analyses [[Wagner 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]] where robust estimates of model parameters could not be estimated, thus leading to the conclusion that *[[Yersinia pestis|Y. pestis]]* lacks temporal signal. At the same time, other studies have suggested data composition is a strong determinant of temporal signal [[Duchene 2016 Genomescale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]] and thus we investigated alternative approaches.

![MCMC parameter estimation of the mean substitution rate for the reduced dataset (N=191). Left: Poor mixing of the MCMC Chain, Right: The resulting multimodal estimate of the rate.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/c12ba4b/main/beast/all/chromosome/prune/filter5/mean_rate_trace_kde.png){#fig:mean_rate_trace_kde width=75%}

To identify patterns in rate variation that may improve the clock model, we first performed visual inspection of the [[Root to Tip Regression\|root-to-tip regression]] residuals (Figure @fig:rtt_all_branch-major). 3/12 populations appeared to have temporal signal according to a linear model, namely the ancient lineages isolated from human skeletal remains: ```[[0.PRE]]``` (Bronze Age),  ```[[0.ANT4]]``` (Late Antiquity), and ```[[1.PRE]]``` (Medieval/Early Modern). Indeed, when the [[Root to Tip Regression|root-to-tip regression]] was performed on populations in isolation, these three groups demonstrated strong evidence of strict-clock behavior (Table @tbl:rtt_statistics, Figure @fig:rtt_clades). A [[Bayesian Evaluation of Temporal Signal|BETS]] analysis by population proved even more sensitive as temporal signal was detected in 7/12 groups (Table @tbl:bets_temporal_signal). Furthermore, for all populations with temporal signal, the [[Clock Model\|relaxed clock]] model (UCLN) had higher support than the strict clock. 

The ubiquitous support for a relaxed clock model was initially surprising, as the [[Root to Tip Regression\|root-to-tip regression]] suggested strict clock-like behavior in several populations. However, this disparity can largely be explained by the known statistical limitations of a [[Root to Tip Regression\|root-to-tip regression]] [[Duchene 2020 Bayesian Evaluation Temporal|[@duchene2020BayesianEvaluationTemporal]]] which assumes either 1) no temporal structure, or 2) temporal structure following a linear model. Thus, a [[Root to Tip Regression\|root-to-tip regression]] is strictly a test of the linear model, and will give no indication that other models are a better fit to the data, ie. a relaxed lognormal model. From this finding, we conclude that **a [[Root to Tip Regression\|root-to-tip regression]] is a poor statistical test of temporal signal in *[[Yersinia pestis|Y. pestis]]*,** and great caution should be taken in interpreting the associated statistics.

- UPDATE!

| Population |  N  | SC Bayes Factor | UCLN Bayes Factor | Clock Model |
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

Our approach of fitting nuanced models segregated by population reveals that **the 'true' substitution rates of *[[Yersinia pestis|Y. pestis]]* may be much higher than previously thought.** Previous work estimated that *[[Yersinia pestis|Y. pestis]]* has one of the slowest observed substitution rates, around  1-2 x 10<sup>-8</sup>, which is on par with the exceptionally slow-evolving *[[Mycobacterium leprae]]* [[Duchene 2016 Genome-scale Rates Evolutionary|[@duchene2016GenomescaleRatesEvolutionary;]] [[Cui 2013 Historical Variations Mutation|@cui2013HistoricalVariationsMutation]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]]. The [[Bayesian Evaluation of Temporal Signal|BETS]] analysis on the non-segregated data, which was highly unstable, fell within this published range with a 95% HPD between 1.16 x 10<sup>-8</sup> and 1.95 x 10<sup>-8</sup>. However, this global rate is a considerable underestimate, as populations with detectable temporal signal ranged from 2.33 x 10<sup>-8</sup> to 7.70 x 10<sup>-7</sup> (Table @tbl:bets_rate_cov_tmrca, Figure @fig:rate_coefficient).

> **Kat's Notes:**<br>
> - Absolute differences in substitution rate, 0.PE and 2.MED higher
> - Relative variation is very similar and overlapping
>- Progressive increase in rate along Branch 1.
- This study therefore reports the substitution rate of *[[Yersinia pestis|Y. pestis]]* to be much higher than previously thought and more comparable to bacteria such as *[[Mycobacterium tuberulcosis]]*.


![Rate variation from BEAST. PLACEHOLDER.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/02b34cd17/main/beast/all/chromosome/clade/rate_coefficient_of_variation.png){#fig:rate_coefficient}

#### Node Dating

To evaluate the dates associated with ancestral events, we annotated the maximum likelihood phylogeny with the estimated tMRCAs for populations with temporal signal (Figure @fig:divtree_node_dating). When re-contextualized into the global phylogeny, the node dates are topologically non-conflicting, meaning that parent nodes correctly pre-date child nodes. The sole exception is the estimated divergence of modern [[0.PE]] which conflicts with the dates associated with the [[First Pandemic\|First]] and [[Second Pandemic]]. This conflict can be explained by several observations:

1. [[0.PE]] has the largest amount of uncertainty concerning the substitution rate.
1. [[0.PE]] has the greatest pairwise genetic distances, and longest root-to-tip distances to their MRCA.

>1. The single ancient sample of [[0.PE]] was excluded from the BEAST analysis! This was partly by mistake, as for other clades, I separated out the ancient and modern samples based on their drastically different sampling periods. But for [[0.PE]], there's only one ancient sample and it got dropped.

![The maximum likelihood phylogeny annotated with the 95% HPD on clade root date.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/206f481/main/auspice/all/chromosome/full/filter5/divtree_node-dating.png){#fig:divtree_node_dating}

This drastic improvement in model performance reveals four intriguing aspects about the evolution of *[[Yersinia pestis|Y. pestis]]*.

The first aspect is that **fitting a single clock model to the global phylogeny of *[[Yersinia pestis|Y. pestis]]* is not statistically supported**. This can be observed in the relative instability of the [[MCMC]] analyses on the *reduced*  dataset, which fails to converge in parameter space. In contrast, successfully fitting models on a clade-by-clade basis reveals that **<i>[[Yersinia pestis|Y. pestis]]</i> has more temporal signal than previously thought.** The observation that different populations have evolved at drastically different rates may explain the previous finding that the apparent structure in *[[Yersinia pestis\|Y. pestis]]* is dependent on dataset composition [[Duchene 2016 Genome-scale Rates Evolutionary\|[@duchene2016GenomescaleRatesEvolutionary]]]. 

The final finding from constructing nuanced models concerns the outlier populations for which no detectable signal could be found, namely [[0.ANT]], [[2.ANT]], [[3.ANT]], [[2.MED]], and [[1.IN]]. The reason for this lack of signal is unclear, but one explanation may be that **these *[[Yersinia pestis|Y. pestis]]* populations are inappropriately separated based on the ```major branch``` and ```biovar``` systems**. We hypothesis that alternative strategies to subdivide these populations will yield greater insight, based on the methodological improvements demonstrated in this study.

## Conclusion {.page_break_before}

### 1. We resolve the debate of whether *[[Yersinia pestis|Y. pestis]]* has temporal signal.

- **Fitting a single clock model to the global phylogeny of *[[Yersinia pestis|Y. pestis]]* is not statistically supported**. This can be observed in the relative instability of the [[MCMC]] analyses on the *reduced*  dataset, which fails to converge in parameter space.
- **Separating the genomic dataset by clade recovers robust temporal signal for the majority of clades**. But there are several clades where we were unable to model the temporal dynamics. This may because these populations should be divided differently than the branch nomenclature system dictates.
- **[[Root to Tip Regression|Root-to-tip regression]] is a poor statistical test of temporal signal compared to [[Bayesian Evaluation of Temporal Signal|BETS]]**. The [[Root to Tip Regression|root-to-tip regression]] has several known limitations, namely the underlying assumption of strict clock-behavior and the non-independence of data points [[Duchene 2020 Bayesian Evaluation Temporal|[@duchene2020BayesianEvaluationTemporal]]]. A [[Bayesian Evaluation of Temporal Signal|BETS]] analysis counters these statistical violates, and is overall more sensitive given that multiple clock models can be tested.  In this study, [[root-to-tip regression]] indicated temporal signal in 3/12 lineages while the [[BETS]] analysis detected signal in 7/12 lineages.


>1. **The true substitution rates of *[[Yersinia pestis|Y. pestis]]* are much higher than previously thought.**<br> 
> The mean substitution rate of all global populations (1.59E-8) is a drastic underestimate compared to the rates observed by clade which range from 3.51E-8 to 1.29E-7. The clades without temporal signal are pulling down the mean estimate. Previous work estimated that *[[Yersinia pestis|Y. pestis]]* has one of the lowest observed substitution rates, on par with the exceptionally slow-evolving *[[Mycobacterium leprae]]* [[Duchene 2016 Genome-scale Rates Evolutionary|[@duchene2016GenomescaleRatesEvolutionary]]]. This study instead reports the substitution rate of *[[Yersinia pestis|Y. pestis]]* to be much higher, and comparable to *[[Mycobacterium tuberulcosis]]*.<br>


>1. **The dispersal patterns  of *[[Yersinia pestis|Y. pestis]]* is not accurately reconstructed using 

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

#### Code

```bash
clades=("1.ORI" "1.IN" "1.ANT" "1.PRE" "2.MED" "2.ANT" "4.ANT" "3.ANT" "0.ANT" "0.ANT4" "0.PE" "0.PRE")
outfile=main/iqtree/all/chromosome/full/filter5/filter-taxa/host_proportion.txt
echo -e "clade\tsamples\thuman\tnon-human\tna" > $outfile

for clade in $clades; 
do 
  samples=`grep -w "$clade" main/iqtree/all/chromosome/full/filter5/filter-taxa/metadata.tsv | wc -l`;
  human=`grep "$clade" main/iqtree/all/chromosome/full/filter5/filter-taxa/metadata.tsv | cut -f 23 | grep -c "^Human"`;
  non_human=`grep "$clade" main/iqtree/all/chromosome/full/filter5/filter-taxa/metadata.tsv | cut -f 23 | grep -c "^Non-Human"`;
  na=`grep "$clade" main/iqtree/all/chromosome/full/filter5/filter-taxa/metadata.tsv | cut -f 23 | grep -c "^NA"`;
  echo "$samples" | awk -v clade=$clade -v human=$human -v non_human=$non_human -v na=$na \
  '{samples=$0;print clade"\t"samples"\t"(human/samples)*100"\t"(non_human/samples)*100"\t"(na/samples)*100}';
done >> $outfile


```

### Phylodynamics

To explore the degree of temporal signal present in the data, two categories of tests were performed . The first was a [[Root to Tip Regression\|root-to-tip (RTT)]] regression on collection date using the python package ```statsmodels``` [[Seabold 2010 Statsmodels Econometric Statistical\|[@seabold2010StatsmodelsEconometricStatistical]]]. Given the relative simplicity of a regression model, the *full* dataset of 601 genomes was used. For the second test of temporal signal, a [[Bayesian Evaluation of Temporal Signal|Bayesian Evaluation of Temporal Signal (BETS)]] was conducted. As the complexity of Bayesian modeling is computationally intensive, the *reduced* dataset (N=191) was used.

> **Kat's Notes**:<br>
> - I will need Sebastian and Leo's input here to write the BEAST methods section.

#### Code


##### Directories and Inputs

```bash
clades=(`cut -f 1 iqtree/all/chromosome/full/filter5/filter-clades/clades.txt`)
models=("strict_clock" "relaxed_clock")
dates=("dates" "no_dates")
dir="beast/all/chromosome/clade"

cd /mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main;

for clade in ${clades[@]};
do
  for model in ${models[@]};
  do
    for date in ${dates[@]};
	do
	  echo $dir/$clade/$model/$date;
	  mkdir -p $dir/$clade/$model/$date/model_test/;
	  mkdir -p $dir/$clade/$model/$date/run/;	 

	  /mnt/c/Users/ktmea/Projects/plague-phylogeography/workflow/scripts/beast_nexus.py \
	    -m iqtree/all/chromosome/full/filter5/filter-taxa/metadata.tsv \
		-a iqtree/all/chromosome/full/filter5/filter-clades/${clade}/${clade}.fasta \
		--nex beast/all/chromosome/clade/${clade}/${clade}.nex 
	done;
  done;
done;
```

##### Beauti

1. Import alignment (```beast.nex```).
1. Rename partitions (```dna```).
1. Site Model (```GTR```).
1. Tree Prior: (```Coalescent Constant Population```).
1. Chain Length (100,000,000)
2. Chain samples (10,000).
3. Screen log (100,000).
4. Save As -> ```beast.xml```
5. Inspect the XML, to make sure the tip dating priors were setup correctly and logged. 


##### XML Edit

```bash
clades=(`cut -f 1 iqtree/all/chromosome/full/filter5/filter-clades/clades.txt`)
models=("strict_clock" "relaxed_clock")
dates=("dates" "no_dates")
dir="beast/all/chromosome/clade"
constants=`tr "," " " < snippy_multi/all/chromosome/full/snippy-multi.constant_sites.txt`;
rootdir='/2/scratch/keaton/plague-phylogeography-projects/main/beast/all/chromosome/clade';

for clade in ${clades[@]};
do
  for model in ${models[@]};
  do
    for date in ${dates[@]};
	do
	  file=$dir/$clade/$model/$date/model_test/beast.xml;	 
	  if [[ -f $file ]]; 
	  then 
	    # Restore the original backup file	 	  
		bak_file=${file}.bak
	    if [[ -f ${bak_file} ]]; 	
		then
		  echo "Restoring ${bak_file}"
		  mv ${bak_file} $file;
		fi;
		
		# Backup the original
		echo "Backing up ${file}"		
		cp $file $file.bak;
		
		# Create tmp file to edit
		echo "Creating temp file $file.tmp"
		cat $file | tr -d "\r" | tr "\n" "#" > $file.tmp
		
		# Change the original alignment name and ID
		IN='<data#id="dna"#spec="Alignment"#name="alignment">';
		OUT='<data#id="original-dna"#spec="Alignment"#name="original-dna">';
		sed -i "s|$IN|$OUT|g" $file.tmp;	
		
		# Add a data element with constant sites
		IN='<\/data>'
		OUT='<\/data>#\t\t<data id="dna" spec="FilteredAlignment" filter="-" data="@original-dna" constantSiteWeights="'$constants'"\/>';
		sed -i "s|$IN|$OUT|g" $file.tmp;
		
		# Save for the actual run
		run_file=$dir/$clade/$model/$date/run/beast.xml;
		cat $file.tmp | tr "#" "\n" > ${run_file};	
		
		# Change the ending run and mcmc elements for model testing
		IN='<\/run>'
		OUT='<\/mcmc>#<\/run>'
		sed -i "s|$IN|$OUT|g" $file.tmp			
		
		# Changing the starting run and mcmc elements
		IN='<run'
		OUT='<run spec="beast.inference.PathSampler"#\tchainLength="1000000"#\talpha="0.3"#\trootdir="'$rootdir/$clade/$model/$date/model_test/'"#\tburnInPercentage="0"#\tpreBurnin="100000" deleteOldLogs="true"#\tnrOfSteps="100">#\tcd $(dir)#\tjava -cp $(java.class.path) beast.app.beastapp.BeastMain $(resume/overwrite) -java -seed $(seed) beast.xml##<mcmc'
		sed -i "s|$IN|$OUT|g" $file.tmp	
		
		# Rename
		cat $file.tmp | tr "#" "\n" > $file; 
		rm -f $file.tmp;
		
	  fi;
	done;
  done;
done;
```

##### Run
1. Activate conda environment:
	```bash
	conda activate beast2
	```
1. Strict clock with dates
	```bash
	beast \
	  -seed 4141239047 \
	  -threads 5 \
	  -beagle_SSE \
	  -beagle_double \
	  beast.xml | tee beast_screen.log	
	```
1. Strict clock without dates
	```bash
	beast \
	  -seed 75273452 \
	  -threads 5 \
	  -beagle_SSE \
	  -beagle_double \
	  beast.xml | tee beast_screen.log		  
	```
1. Relaxed clock with dates
	```bash
	beast \
	  -seed 1259807514 \
	  -threads 5 \
	  -beagle_SSE \
	  -beagle_double \
	  beast.xml | tee beast_screen.log		  
	```
1. Relaxed clock without dates
	```bash
	beast \
	  -seed 5435425542 \
	  -threads 5 \
	  -beagle_SSE \
	  -beagle_double \
	  beast.xml | tee beast_screen.log		  
	```
1. Full Run
	```bash
	beast \
	  -seed 45375043257 \
	  -threads 5 \
	  -beagle_SSE \
	  -beagle_double \
	  beast.xml | tee beast_screen.log		  
	```

##### Checklist

|   Clade    | Model Test | Run | Time End |
|:----------:|:----------:|:---:|:--------:|
| [[1.ORI]]  |     ✅     | ✅  |          |
|  [[1.IN]]  |     ✅     | 🔸  |  ~18:00  | 
| [[1.ANT]]  |     ⬜     | ⬜  |          |
| [[1.PRE]]  |     ⬜     | ⬜  |          |
| [[2.MED]]  |     ⬜     | ⬜  |          |
| [[2.ANT]]  |     🔸     | ⬜  |  ~18:00  |
| [[4.ANT]]  |     ⬜     | ⬜  |          |
| [[3.ANT]]  |     ⬜     | ⬜  |          |
| [[0.ANT]]  |     ⬜     | ⬜  |          |
| [[0.ANT4]] |     ⬜     | ⬜  |          |
|  [[0.PE]]  |     ⬜     | ⬜  |          |
| [[0.PRE]]  |     ⬜     | ⬜  |          |

### Public Resource

The maximum likelihood and Bayesian phylogenetic trees were uploaded to the [[Nextstrain]] visualization platform at https://nextstrain.org/community/ktmeaton/plague-phylogeography-projects@main. All curated metadata is available for download via Nextstrain, Github, and Zenodo.

> **Kat's Notes**:<br>
> - I'll need to prepare stable and archived hosting links before submission.

## References {.page_break_before}

<div id="refs"></div>

## Appendix

### [[Population Structure]]

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


#### [[BETS]]

##### Runs Overview

- There are two major types of BEAST/MCMC analyses:
	1. No hyperprior for the tree/population size (noHyperPrior).
	2. An exponential(?) hyperprior for the tree/population size (epop).
- Nested within these two analyses, we test two models of rate variation:
	1. Strict clock (SC)
	2. Relaxed clock (UCLN)
- Further nested within these analyses, is a test of temporal signal (BETS):
	1. No tip dates.
	2. Tip dates.
- This combination of parameters results in **8 separate models/MCMC runs**.
- Finally, the marginal likelihood of each model/run is calculated using a Generalized Stepping Stone (GSS) approach.
- First, we tested these models(?) on a dataset composed of 191 samples ("Prune"). The MCMC analysis was unstable, we suspect because there was too much rate variation.
- We then tested these models(?) on an alignment separated into **12 clades**.
- This produces a total of **96 MCMC runs** (12 clades x 8 models).

> Indeed, this is the most comprehensive and thorough dating analysis of *[[Yersinia pestis]]*.


##### Output Summary

- In a previous email, we decided to use the results of the no hyper prior (noHyperPrior) for stats tables/figures in the manuscript... *"because they make fewer assumptions"*. If this is correct, what are the epop analyses for?
- I've attached a spreadsheet that summarizes the files that are produced by these runs.
- There are several clades (highlighted in red) that I don't have log files for.
- From the most recent update, there are several clades (highlighted in red) that I have updated log files for, but not updated trees.
- There are several clades (highlighted in orange) for which you sent me new log files. However, the chain length has not changed and no new trees were sent. Was this just a re-upload of old runs?


| Clade |  N  | Dates | Marginal Likelihood | Bayes Factor |
|:-----:|:---:|:-----:|:-------------------:|:------------:|
|       |     |       |                     |              |


Table:  Temporal signal detection using a strict clock with [[Bayesian Evaluation of Temporal Signal\|BETS]]. {#tbl:bets_temporal_signal_strict}

| Clade |  N  | Dates | Marginal Likelihood | Bayes Factor |
|:-----:|:---:|:-----:|:-------------------:|:------------:|
|       |     |       |                     |              |

Table:  Temporal signal detection using a relaxed clock with [[Bayesian Evaluation of Temporal Signal\|BETS]]. {#tbl:bets_temporal_signal_strict}


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