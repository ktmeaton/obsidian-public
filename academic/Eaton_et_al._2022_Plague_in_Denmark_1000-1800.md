---
# Metadata
title: Plague in Denmark (1000-1800)
subtitle: A longitudinal study of _Yersinia pestis_

authors:
  - name: Katherine Eaton
    orcid: 0000-0001-6862-7756
    affiliations: [	
        "Department of Anthropology, McMaster University",
        "McMaster Ancient DNA Center",
    ]
    email: ktmeaton@gmail.com

  - name: Ravneet Sidhu
    orcid: 0000-0001-5673-5813
    affiliations:
      [	
        "Department of Anthropology, McMaster University",
        "McMaster Ancient DNA Center",
      ]
    email: sidhur5@mcmaster.ca

  - name: Jennifer Klunk
    orcid: 0000-0002-6521-8516
    affiliations: [
      "Daicel Arbor Biosciences",
      "McMaster Ancient DNA Center",
    ]
    email: jenniferklunk9@gmail.com

  - name: Julia Gamble
    orcid: 0000-0001-7486-757X
    affiliations: [
      "University of Manitoba"
    ]
    email: julia.gamble@gmail.com

  - name: Jesper Boldsen
    orcid: 0000-0002-2850-0934
    affiliations: [
      "University of Southern Denmark, ADBOU"
    ]
    email: jboldsen@health.sdu.dk

  - name: Ann Carmichael
    affiliations: [ "Department of History, Indiana University Bloomington" ]
    email: anncarmicha47@gmail.com 

  - name: Nükhet Varlık
    orcid: 0000-0001-6870-5945
    affiliations: [ "Department of History, Rutgers University-Newark" ]
    email: nvarlik@gmail.com

  - name: Sebastian Duchene
    orcid: 0000-0002-2863-0907
    affiliations: ["The Peter Doherty Institute for Infection and Immunity, University of Melbourne"]
    email: sebastian.duchene@unimelb.edu.au

  - name: Leo Featherstone
    orcid: 0000-0002-8878-1758
    affiliations: ["The Peter Doherty Institute for Infection and Immunity, University of Melbourne"]
    email: leo.featherstone@unimelb.edu.au

  - name: Vaughan Grimes 
    orcid: 0000-0002-2177-3147
    affiliations: ["Department of Archaeology, Memorial University"]
    email: vgrimes@mun.ca

  - name: Brian Golding
    orcid: 0000-0002-7575-0282
    affiliations: ["Department of Biology, McMaster University"]
    email: golding@mcmaster.ca

  - name: Sharon DeWitte
    orcid: 0000-0003-0754-8485 
    affiliations: ["Department of Anthropology, University of South Carolina"]
    email: sharon.dewitte@gmail.com

  - name: Hendrik Poinar
    orcid: 0000-0002-0314-4160
    affiliations:
      [
        "McMaster Ancient DNA Center",
        "Department of Anthropology, McMaster University"
      ]
    email: poinarh@mcmaster.ca

compile-manubot: |
  conda activate manubot \
  && pandoc/manubot.sh \
    --input Eaton_et_al._2022_Plague_in_Denmark_1000-1800.md \
    --template ../../rootstock/templates/paper \
    --csl pandoc/csl/nature-communications.csl \
    --bib-plain \
    --page-numbering \
    --pdf \
    --docx

# Manubot
lang: en-US	
repo: ktmeaton/obsidian-public
repo_url: https://github.com/ktmeaton/obsidian-public
filepath: 'academic/Eaton_et_al._2022_Plague_in_Denmark_1000-1800'
base_url: "https://ktmeaton.github.io/obsidian-public/academic/Eaton_et_al._2022_Plague_in_Denmark_1000-1800"
authors_manual: true
draft: false

# Obsidian
project: Plague Denmark
tags: 🧨 
status: priority
type: Paper
---

<!-- Comment out for dissertation -->
<!--
**Katherine Eaton**\*^1,2^, **Ravneet Sidhu**^\*1,3^, Jennifer Klunk^1,4^, Julia Gamble^5^, Jesper Boldsen^6^, Ann G. Carmichael^7^, Nükhet Varlık^8^,  Sebastian Duchene^9^, Leo Featherstone^9^, Vaughan Grimes^10^, G. Brian Golding^3^, Sharon DeWitte^11^, Hendrik N. Poinar^1,2,12,13,14^

^\*^Contributed equally.

^1^McMaster Ancient DNA Centre, McMaster University, Hamilton, Canada.  \
^2^Department of Anthropology, McMaster University, Hamilton, Canada.  \
^3^Department of Biology, McMaster University, Hamilton, Canada.  \
^4^Daicel Arbor Biosciences, Ann Arbor, USA.  \
^5^Department of Anthropology, University of Manitoba, Winnipeg, Canada. \
^6^Department of Forensic Medicine, Unit of Anthropology (ADBOU), University of Southern Denmark, Odense, Denmark. \
^7^Department of History, Indiana University Bloomington, Bloomington, USA.  \
^8^Department of History, Rutgers University-Newark, Newark, USA.  \
^9^The Peter Doherty Institute for Infection and Immunity, University of Melbourne, Melbourne, Australia.  \
^10^Department of Archaeology, Memorial University of Newfoundland, St. Johns, Canada. \
^11^Department of Anthropology, University of South Carolina, Columbia, USA. \
^12^Department of Biochemistry, McMaster University, Hamilton, Canada.  \
^13^Michael G. DeGroote Institute of Infectious Disease Research, McMaster University, Hamilton, Canada.  \
^14^Canadian Institute for Advanced Research, Toronto, Canada.

-->
<!-- -->

## Abstract

The epidemiology of plague in the past is highly controversial, owing to the scarcity and ambiguity of historical evidence. A frequent source of debate is the re-emergence and continuity of plague in Europe during the 14^th^ to 18^th^ centuries CE. Scandinavia is particularly underrepresented in the historical archives, despite having a uniquely long history of plague (5000 years) as revealed through ancient DNA analysis. To better understand the historical epidemiology of plague in this region, we performed in-depth (N=298), longitudinal screening (800 years) for the plague bacterium, _Yersinia pestis_, across 13 archaeological sites in Denmark. We captured the emergence and continuity of _Y. pestis_ in this region over a period of 400 years (14^th^ - 17^th^ century CE), for which the plague-positivity rate was 8.3% (3.3% - 14.3% by site). These results deepen the epidemiological link between the plague bacterium, _Y. pestis_, and the unknown _pestilence_ that afflicted medieval and early modern Europe. Furthermore, this study paves the way for the next generation of historical disease research, in which hypotheses concerning mortality can be tested using population-scale, genomic evidence from ancient pathogens.

## Introduction

Europe endured a 500-year long pandemic from the 14^th^ to 18^th^ centuries CE [@spyrou2019PhylogeographySecondPlague]. During this period, mysterious outbreaks reoccurred every 10 years with mortality estimates as high as 50% during the infamous Black Death (1346-1353) [@christensen2003ThesePerilousTimes].  Paleogeneticists have increasingly identified the plague bacterium _Yersinia pestis_ as the most likely agent, although the epidemiology of this pandemic remains controversial [@benedictow2016BlackDeathLater]. The major source of debate concerns two aspects: mortality and spread. The ecology of _Y. pestis_ is highly complex, and involves both zoonotic "spillover" from rodent populations as well as inter-human transmission [@perry1997YersiniaPestisEtiologic]. As a result, both disease exposure and spread are known to vary between regions and over time [@benedictow2016BlackDeathLater]. These differences are challenging to reconcile, and have led to significant controversy concerning the location of plague reservoirs in the past [@bramanti2021AssessingOriginsEuropean].

Recent studies have explored this question by synthesizing genetic evidence [@bramanti2021AssessingOriginsEuropean] and historical records [@schmid2015ClimatedrivenIntroductionBlack; @yue2017TradeRoutesPlague] across Europe. These sources have significant geographic gaps, such as the complete lack of evidence from Scandinavia in digitized databases [@roosen2018DangersNoncriticalUse]. This gap has been attributed to the sparseness of historical sources and ambiguity with regards to disease terminology during the medieval period [@christensen2003ThesePerilousTimes]. However, recent ancient DNA research [@rascovan2019EmergenceSpreadBasal] has revealed that the history of plague in Scandinavia is among the oldest in the world, and established the presence of _Y. pestis_ in Sweden 5000 years ago. This raises the possibility of long-term persistence of plague in Scandinavia, with _Y. pestis_ re-emerging as a local, endemic disease. 

To evaluate the possibility of undocumented plague persistence, we screened for the presence of _Y. pestis_ in the Anthropological DataBase Odense University (ADBOU) collection. This extraordinary collection includes preserved and curated skeletal remains from over 16,000 Danish individuals, dated from the Viking Age to the Early Modern period. To ensure a wide variety of locations were represented, we sampled 298 individuals across 13 archaeological sites from the mainland (Jutland), as well as two islands (Funen and Lolland). Based on the skeletal dates, these individuals represent 800 years of population history (1000-1800 CE) which includes both the known pandemic period in Denmark (1350-1657)  and the quiescent periods (1000-1350 CE, 1658-1800) for which no outbreaks of plague are historically documented [@benedictow2016BlackDeathLater].

## Results and Discussion

We detected _Y. pestis_ in 7 archaeological sites using PCR assays and targeted sequencing (\*@fig:1.PRE_map A). Across the 7 sites, 8.3% of individuals (13/157) tested positive for _Y. pestis_, ranging from 3.3% at Ribe Lindegärden to 14.3% at Hågerup. This positivity rate could be considered an underestimate of the 'true' prevalence of _Y. pestis_ in Danish populations, due to variable DNA preservation. On the other hand, it may be an overestimate due to the osteological paradox [@wood1992OsteologicalParadoxProblems], in which mortality is selective and the deceased are not representative of the living population. While the exact extrapolation is unclear, our _Y. pestis_ positivity rate (3.3 - 14.3%) does align with mortality estimates (5 - 20%) during the later epidemics of the medieval and early modern period [@dewitte2017BlackDeathBodies; @slavin2021OutWestFormation].

Of the 13 plague-positive individuals, 9 had sufficient sequencing depth (>3X) of the _Y. pestis_ chromosome for phylogenetic analysis (\*@fig:1.PRE_timeline D). To estimate a time-scaled phylogeny and dates for these 9 samples, we fit a relaxed molecular clock to an alignment of _Y. pestis_ genomes which included 40 other isolates (\*@fig:1.PRE_map B). We observed that all Danish strains clustered strongly (posterior: 1.0) within the known diversity of medieval and early modern _Y. pestis_ in Europe (\*@fig:1.PRE_timetree). We found no evidence to suggest that Neolithic lineages of _Y. pestis_ in Scandinavia (5000 YBP) [@rascovan2019EmergenceSpreadBasal] left descendants in medieval Danish populations. If long-term persistence of _Y. pestis_ did occur in this region, it fell outside the geographic and temporal scope of this study.

We found no evidence of _Y. pestis_ in Denmark between 1000 and 1300 CE. The factors influencing the preservation of ancient DNA are wide-ranging and complex, thus the absence of evidence cannot prove evidence of absence. That being said, we sampled a minimum of 85 individuals and a maximum of 165 individuals that pre-date the 14^th^ century (\*@fig:1.PRE_timeline A). Taking the mean positivity rate observed in this study (8.3%), we would expect to detect _Y. pestis_ in 7 to 13 individuals from this time frame if it were present. We therefore interpret our negative results from this period as tentative evidence that _Y. pestis_ was a relatively new pathogen in medieval Denmark, that did not become abundant and/or widespread until at least the 14^th^ century.

The earliest evidence of _Y. pestis_ in Denmark was found in the town of Ribe. Two individuals were associated with _Y. pestis_ from the first half of the 14^th^ century, dated to 1333 (1301-1366) and 1350 (1319-1383). These estimates are highly congruent with the historical record, as the first documented appearance of plague in Denmark was at Ribe in 1349 [@lenz2016BlackDeath]. Furthermore, these strains fell within an unresolved cluster (posterior: 0.15) of samples from Northern and Western Europe (\*@fig:1.PRE_timetree) which has previously been linked to clonal spread of the Black Death (1343-1356) [@spyrou2019PhylogeographySecondPlague]. Our molecular dates support this historical association, albeit only weakly, as the precise epidemic period cannot be resolved due to the large confidence intervals of our estimates (>50 years). 

The next period in which we identified _Y. pestis_ was in the latter half of the 14^th^ century. A third isolate from Ribe was dated to 1370 (1336-1408) and strongly clustered (posterior: 0.99) with post-Black Death samples from The Netherlands and Russia. These samples have previously been attributed to the _pestis secunda_ (1357-1366) [@namouchi2018IntegrativeApproachUsing], although we find the _pestis tertia_ (1364-76) [@slavin2021OutWestFormation] to be an equally likely candidate. This clade also has broader epidemiological significance, as it is directly ancestral to the Third Pandemic of plague (19^th^-20^th^ century) [@spyrou2019PhylogeographySecondPlague]. Our results therefore reveal new global connections, as the same lineage that afflicted medieval Danish populations would later re-emerge to cause modern epidemics of plague, including the recent outbreaks in Madagascar [@nguyen20182017PlagueOutbreak].

We observed a gap in the continuity of plague at Ribe, as no _Y. pestis_ was detected there between 1408 and 1484. This was surprising, as 86% of individuals (43/50) from this site were archaeologically dated to between 1400 and 1536. Instead, the distribution of _Y. pestis_ appeared to shift during this period from the eastern coast of Jutland to the western coast. We recovered 3 distinct, and possibly contemporaneous, isolates of _Y. pestis_ from 3 sites near Horsens dated to 1429 (1392-1467), 1433 (1403-1464) and 1457 (1427-1487). These genomes were most closely related to individuals sampled in Germany, Lithuania, Poland, and England (\*@fig:1.PRE_timetree). This geographic association parallels the historical record, in which outbreaks in Denmark coincided with those in the Baltic region [@slavin2021OutWestFormation]. However, recent studies have demonstrated that the directionality and spread of zoonotic diseases cannot be robustly inferred from genomic data alone [@kalkauskas2021SamplingBiasModel; @eaton2021PlaguedCrypticClock]. Instead, our results establish an epidemiological link between _Y. pestis_ and historical case records in Denmark, which could be jointly modeled with greater resolving power [@featherstone2021InfectiousDiseasePhylodynamics] in future work.

In the 16^th^ century, we once again observed _Y. pestis_ at Ribe. We dated two _Y. pestis_ isolates from this region to 1513 (1484-1546) and 1525 (1494-1560).  Furthermore, we also found evidence of _Y. pestis_ in the northern site of Faldborg dated to 1594 (1550-1649). As an estimate of plague's disappearance (1649), this is congruent with the historical record which documents the last recorded outbreak of plague in Jutland to last from 1654-1657 [@benedictow2016BlackDeathLater]. We found no evidence of _Y. pestis_ in Denmark after this point, specifically between 1649 and 1800 CE.  However, no individuals definitively post-date 1649 CE, although this period could include a maximum of 70 individuals (\*@fig:1.PRE_timeline A).  We would therefore expect to detect _Y. pestis_ in 0 to 2 individuals (3.3%) from this time frame if it were present. Our results do not differ from this expectation, and are therefore not informative with regards to the disappearance of _Y. pestis_ in Denmark. To address this question, additional samples would be required from the 17^th^ and 18^th^ centuries.



![Geographic distribution of 298 archaeological samples used in this study. **A**. Map of 6 municipalities sampled in Denmark encompassing 13 archaeological sites. Site labels indicate: Archaeological Site (Earliest Date Sampled - Latest Date Sampled) _Y. pestis_ positive individuals / total individuals. Plague positive sites are bolded. **B**. Map of 49 _Y. pestis_ genomes used for phylogenetic analysis. The sampling locations were standardized to the centroid of the associated province/state. Colors indicate the sampling dates as estimated from the Bayesian molecular clock analysis. Numbered labels indicate the number of genomes sampled from each location.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/e29e80b/denmark/auspice/all/chromosome/full/filter30/beast/1.PRE_map.png){#fig:1.PRE_map width=80% short-caption="Geographic distribution of 298 archaeological samples used in this study."}


::: columns

<!--Left-->
:::: column
![Temporal distribution of archaeological samples used in this study. **A**. Mean skeletal dates for all individuals (N=298). **B**. Skeletal date intervals for all individuals (N=298) using a bin width of 50 years. **C**. Distribution of _Y. pestis_ tip-dates for plague-positive individuals (N=9) according to the 95% highest posterior density (HPD) from the Bayesian molecular clock analysis. Asterisks indicate the phylogenetic placement had strong posterior support (>= 0.95). **D**. Mean sequencing depth of the _Y. pestis_ chromosome.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/e29e80b/denmark/auspice/all/chromosome/full/filter30/beast/1.PRE_timeline.png){#fig:1.PRE_timeline width=70% short-caption="Temporal distribution of archaeological samples used in this study."}
::::

<!--Right-->
:::: column
![Maximum-clade credibility (MCC) tree depicting a time-scaled phylogeny of 49 European _Y. pestis_ genomes. Asterisks indicate clades with strong posterior support (>=0.95). Colors indicate the mean sampling dates as estimated from the Bayesian molecular clock analysis. Bars indicate tip-dating uncertainty, as represented by the 95% highest posterior density (HPD) interval.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/878663e/denmark/auspice/all/chromosome/full/filter30/beast/1.PRE_timetree.png){#fig:1.PRE_timetree width=80% short-caption="Maximum-clade credibility (MCC) tree depicting a time-scaled phylogeny of 49 European _Y. pestis_ genomes."}
::::

:::

## Conclusion

This study marks the first population-level analysis of ancient _Y. pestis_, where we performed in-depth (N=298), longitudinal sampling (800 years) within a single country (Denmark). We describe the earliest known appearance of _Y. pestis_ in Denmark (14^th^ century), and document the continuity of this pathogen in Scandinavia over a period of 400 years (17^th^ century). Furthermore, we provide the first positivity rates of historical plague from molecular evidence, as we 
detected _Y. pestis_ in 8.3% of Danish individuals. Our phylogenetic analysis was highly congruent with the sparse textual evidence of _pestilence_ in Denmark, with regards to the timing of outbreaks and geographic ties to the Baltic region. We also provide novel evidence of plague exposure among Danish populations, such as the site of Tirup, where there is no surviving historical evidence. These results are of importance for both researchers of plague and other infectious diseases, as they (1) illuminate undocumented pathogens in the historical record, (2) reveal new connections between our past and present experience of plague, (3) broaden our understanding of the epidemiology of re-emerging diseases.

## Materials and Methods

We sampled 298 individuals across 13 archaeological sites in Denmark (\*@fig:1.PRE_timeline A, Table S1). Site occupation dates spanned from the 11^th^ to the 19^th^ century CE. We estimated individual date ranges based on burial position, which was categorized according to cultural shifts that occurred in Denmark throughout the medieval and early modern period [@boldsen2009LeprosyMedievalDenmark]. When the original stratigraphic context was preserved, we refined these individual estimates further. For individuals with ambiguous or conflicting archaeological estimates, we performed radiocarbon dating when additional destructive sampling was permitted.

DNA was extracted from teeth and dental pulp according to a specialized protocol for ancient DNA [@dabney2013CompleteMitochondrialGenome]. Reagent blanks were introduced as negative controls to monitor DNA contamination in subsequent steps. We screened for plague using a PCR assay that targets the _pla_ virulence gene in _Yersinia pestis_ [@wagner2014YersiniaPestisPlague]. Extracts showing amplification in at least 4/6 replicates were converted into paired-end sequencing libraries [@kircher2012DoubleIndexingOvercomes]. Targeted capture of the _Y. pestis_ genome was performed using previously designed probes [@wagner2014YersiniaPestisPlague] and sequenced on an Illumina platform.

Sequenced molecules were aligned to a reference genome using the _nf-core/eager_ pipeline [@yates2021ReproduciblePortableEfficient]. To phylogenetically place these new samples, we downloaded a comparative dataset of 40 high-coverage _Y. pestis_ genomes (>3X) dated between the 14^th^ and 18^th^ centuries. We then constructed a multiple alignment with the snippy pipeline (https://github.com/tseemann/snippy), which included 356 variation positions and 4,289,810 constant sites.

To tip-date each genome, we performed a Bayesian Evaluation of Temporal Signal (BETS) [@duchene2020BayesianEvaluationTemporal] with BEAST2 [@bouckaert2019BEASTAdvancedSoftware]. We assumed a constant population size and compared the use of a strict clock and an uncorrelated lognormal (UCLN) relaxed clock. Diffuse normal priors were constructed for all tip-dates, using the mean radiocarbon/mortuary date and half the uncertainty as the standard deviation. All Danish samples were assigned equivalent priors with a mean date of 1330 CE and a standard deviation of 115 years. Bayes factors were calculated by comparing the marginal likelihoods of each candidate model, as estimated with a generalized stepping stone (GSS) computation. The model with the highest marginal likelihood was then run for 100,000,000 generations to ensure the effective sample size (ESS) of all relevant parameters was greater than 200. 

Data visualization was performed using the python package _seaborn_ and _auspice_, a component of the Nextstrain visualization suite [@hadfield2018NextstrainRealtimeTracking].

## Data Availability

Raw sequence reads have been deposited in NCBI BioProject PRJNAXXXXX. Archaeological metadata is provided in the supplementary information (Table S1).


## Acknowledgments

This work was supported by the Social Sciences and Humanities Research Council of Canada (#20008499) and the MacDATA Institute (McMaster University, Canada). This research was enabled in part by support provided by Compute Ontario (<https://www.computeontario.ca/>) and Compute Canada (<https://www.computecanada.ca>). We would like to thank Julianna Stangroom, Michael Klowak, Dr. Emil Karpinski, Dr. Matthew Emery, and Dr. Stephanie Marciniak for their assistance in laboratory procedures. We also thank Dr. Ana Duggan for her insight regarding Bayesian methods for phylogenetic analysis. We thank members of the Sherman Centre for Digital Scholarship, including Dr. Andrea Zeffiro, Dr. John Fink, Dr. Matthew Davis, and Dr. Amanda Montague, for their assistance in developing the underlying genomic database. Finally, we would like to thank all past and present members of the McMaster Ancient DNA Centre and the Golding Lab at McMaster University.

## Author Contributions

K.E, R.S, J.K, and H.N.P designed the study. J.G, J.B, and S.D provided access to archaeological sites and materials. V.G performed radiocarbon dating. K.E, R.S, and J.K performed laboratory analysis. A.G.C and N.V. provided historical sources and interpretation.  S.D and L.F critiqued and revised the computational methods and discussion. G.B.G provided access to computational resources and data storage. H.N.P and G.B.G  supervised the study. K.E wrote the manuscript with contributions from all co-authors.

## Competing Interests Statement

The authors declare no competing interests.

## Supplementary Information

### Tables
  -  [Table S1](https://ktmeaton.github.io/obsidian-public/academic/Eaton_et_al._2022_Plague_in_Denmark_1000-1800.xlsx)