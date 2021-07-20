---
project: [[Plague Denmark]]
due: June 28, 2021
authors:
  - name: [[Katherine Eaton]]
    github: ktmeaton
    orcid: 0000-0001-6862-7756
    affiliations: [[McMaster University]]
  - name: [[Ravneet Sidhu]]
    affiliations: [[McMaster University]]
  - name: [[Jennifer Klunk]]
    orcid: 0000-0002-6521-8516
    affiliations: [[Daicel Arbor Biosciences]]
  - name: [[Julia Gamble]]
    orcid: 0000-0001-7486-757X
    affiliations: [[University of Manitoba]]
  - name: [[Jesper Boldsen]]
    orcid: 0000-0002-2850-0934
    affiliations: [[University of Southern Denmark]]; [[ADBOU]]	
  - name: [[Ann Carmichael]]
    affiliations: [[Indian University Bloomington]]
  - name: [[Nükhet Varlık]]
    orcid: 0000-0001-6870-5945
    affiliations: [[University of South Carolina]]
  - name: [[Sebastian Duchene]]
    github: sebastianduchene
    orcid: 0000-0002-2863-0907
    affiliations: [[University of Melbourne]]
  - name: [[Leo Featherstone]]
    orcid: 0000-0002-8878-1758	
    affiliations: [[University of Melbourne]]
  - name: Vaughan Grimes	
    orcid: 0000-0002-2177-3147
    affiliations: [[Memorial University]]
  - name: [[G. Brian Golding]]
    orcid: 0000-0002-7575-0282	
    affiliations: [[McMaster University]]
  - name: [[Hendrik N. Poinar]]
    orcid: 0000-0002-0314-4160
    affiliations: [[McMaster University]]
lang: en-US
repo: ktmeaton/obsidian-public
filepath: academic/[[Plague Denmark Paper]]
tags: ⬜/🧨 
status: priority
title: A 900-year longitudinal study of *Yersinia pestis* in Denmark captures the rise and fall of a plague pandemic.
type: [[Task]]
compile-manubot: "conda activate manubot && pandoc/manubot.sh 'Plague_Denmark_Paper.md' pandoc/bib/library.json ../../rootstock"
url: https://ktmeaton.github.io/obsidian-public/academic/Plague%20Denmark%20Paper.html
---

## Introduction {.page_break_before}

*Yersinia pestis*, the causative agent of plague, is the most intensively sequenced ancient pathogen to date. Comparative analyses of ancient *[[Yersinia pestis|Y. pestis]]* genomes have significantly advanced our understanding of past pandemics, by shifting discourse on the fluctuating patterns of virulence, geographic dispersal, and local persistence. In particular, genomics research has revealed how historical plagues of the past, such as the First Pandemic (6th-8th century) and the Second Pandemic (14th-19th century), were linked to by novel lineages of *[[Y. pestis]]* that persisted for multiple centuries before eventually going extinct. 

This curious dynamic of long-term epidemic cycling, followed by centuries of inactivity, is a distinctive feature of plague in Europe, where plague has been identified in both pandemic and pre-pandemic periods. As one of the oldest known strains of plague was discovered in Scandinavia [[Rascovan 2019 Emergence Spread Basal\|[@rascovan2019EmergenceSpreadBasal]]], there is great potential for an intensive examination of *[[Yersinia pestis|Y. pestis]]* in this region to reveal novel insight into the long-term epidemiology of plague.

Despite the recent boom in ancient *[[Yersinia pestis\|Y. pestis]]* sequencing, Scandinavia is currently represented by only two genomes from Sweden (~5000 YBP) and Norway (~700 YBP). Due to this limited data, it is currently unknown to what extent plague was a local, endemic disease in this region as compared to novel epidemics with successive re-introduction. In addition, the identification of plague in pre-pandemic Scandinavia suggests the potential for *[[Yersinia pestis|Y. pestis]]* to have been present in this region outside of historically documented pandemics. Furthermore, the available historical documentation primarily derives from large commercial centres whereas Scandinavia archives, such as those in the Denmark, have retained limited information about the plague and its impact on society [[Christensen 2003 These Perilous Times\|[@christensen2003ThesePerilousTimes]]].

In response to this region's historical importance and lack of genomic representation, this study samples and screens skeletal remains from Danish archaeological sites occupied over 900 years, to detect the presence of *[[Yersinia pestis|Y. pestis]]*. Following genomic capture of *[[Yersinia pestis|Y. pestis]]* from plague-positive individuals, we examine the temporal and geographic structure of Danish plague within a global context.

> **Kat's Notes**: To be expanded upon further and refined following co-author discussion.

## Results  {.page_break_before}

### Sites and Samples

325 individuals were sampled across 6 regions from 14 archaeological sites (Table @tbl:site_summary, Figure @fig:map_sites). The site occupation dates span from the 10th to 18th century which encompasses the Viking Age (9th - 11th century), the Medieval Period (11th - 16th century) and the Early Modern Period (16th - 19th century) in Denmark.

![Geographic map of archaeological sites by region. Stars indicate sites where *[[Yersinia pestis]]* was detected.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/2d215d9d4/denmark/beast/all/chromosome/full/filter30/relaxed_clock/dates/run/site_map.png){#fig:map_sites}

<div style="page-break-after: always;"></div>

|      Period       | Date Start | Date End |  Region  |    Site Name     |   Site Code   |  N  | Plague Positive |
|:-----------------:|:----------:|:--------:|:--------:|:----------------:|:-------------:|:---:|:---------------:|
|      Viking       |    900     |   1000   |   Ribe   | Ribe Lindegärden |   ASR 13II    | 15  |        0        |
|                   |    900     |   1000   |   Ribe   | Ribe Lindegärden |   ASR 2391    |  4  |        0        |
|  Early Medieval   |    1150    |   1350   |   Ribe   |  Ribe Gräbrødre  |   ASR 1015    |  7  |        0        |
|                   |    1150    |   1350   |   Viby   |      Nordby      |   FHM 3970    | 35  |        0        |
|                   |    1150    |   1350   |  Viborg  |   Sct. Drotten   |   VSM 09264   |  6  |        0        |
|                   |    1150    |   1350   |  Viborg  |   Sct. Mathias   | VSM 855F/906F | 21  |        0        |
|                   |    1150    |   1350   |  Viborg  |   Sct. Drotten   |   VSM 902F    |  8  |        0        |
|                   |    1150    |   1350   |  Viborg  |     Faldborg     |    VSM 29F    |  2  |        0        |
|                   |    1150    |   1350   | Refshale |     Refshale     |   Refshale    | 19  |        0        |
|                   |    1150    |   1350   | Horsens  |  Ole Wormsgade   |   HOM 1649    |  7  |        0        |
|                   |    1150    |   1350   | Horsens  |      Tirup       |   VKH 1201    | 11  |        1        |
|                   |    1150    |   1350   | Hågerup  |     Hågerup      |   ØHM 1247    |  7  |        1        |
|   Late Medieval   |    1250    |   1550   |   Ribe   |  Ribe Gräbrødre  |   ASR 1015    |  1  |        0        |
|                   |    1250    |   1450   |  Viborg  |     Faldborg     |    VSM 29F    |  2  |        0        |
|                   |    1250    |   1550   |   Ribe   | Ribe Lindegärden |   ASR 13II    |  9  |        0        |
|                   |    1250    |   1450   | Horsens  |      Sejet       |   HOM 1046    | 14  |        1        |
|                   |    1350    |   1550   |   Ribe   | Ribe Lindegärden |   ASR 13II    | 18  |        1        |
|                   |    1350    |   1550   |   Ribe   |  Ribe Gräbrødre  |   ASR 1015    | 42  |        5        |
|                   |    1350    |   1550   |  Viborg  |     Faldborg     |    VSM 29F    | 13  |        2        |
|                   |    1350    |   1550   |  Viborg  |   Sct. Mathias   | VSM 855F/906F |  2  |        0        |
|                   |    1350    |   1550   |  Viborg  |   Sct. Michael   |   JAH 1-77    |  4  |        0        |
|   Early Modern    |    1600    |   1800   | Horsens  |  Klosterkirken   |   HOM 1272    | 50  |        0        |
|                   |            |          |          |                  |               |     |                 |
| No Skeletal Dates |    900     |   1000   |   Ribe   | Ribe Lindegärden |   ASR 2391    |  1  |        0        |
|                   |    1050    |   1250   |   Viby   |      Nordby      |   FHM 3970    |  1  |        0        |
|                   |    1100    |   1500   | Horsens  |  Ole Wormsgade   |   HOM 1649    | 10  |        2        |
|                   |    1150    |   1350   | Horsens  |      Tirup       |   VKH 1201    |  1  |        0        |
|                   |    1150    |   1574   | Horsens  |      Sejet       |   HOM 1046    | 11  |        0        |
|                   |    1200    |   1560   |   Ribe   | Ribe Lindegärden |   ASR 13II    |  1  |        0        |
|                   |    1200    |   1560   |   Ribe   |  Ribe Gräbrødre  |   ASR 1015    |  3  |        0        |
|                   |            |          |          |                  |               |     |                 |
Table: Summary of archaeological sites sampled in this study.  {#tbl:site_summary}


> **Kat's Note**: <br>
> This table will likely need to be discussed and edited post co-author discussion.

### Plague Detection  {.page_break_before}

13 individuals were identified as plague-positive based on a combination of PCR assays, shotgun sequencing, and targeted enrichment for the *[[Yersinia pestis\|Y. pestis]]* whole genome (Tables @tbl:plague_positive_high_coverage and @tbl:plague_positive_low_coverage). Of the 13 individuals, 9 had chromosomal coverage sufficient for phylogenetic analyses (>= 3X mean depth).

Overall, plague was detected in 4% (13/325) of all individuals in this study (Table @tbl:site_summary). When excluding plague-negative archaeological sites, this estimate rises to 8.2% (13/159) of individuals. *[[Yersinia pestis|Y. pestis]]* was observed primarily in the Medieval Period, with no evidence of plague in the Viking Age settlements at Ribe Lindegärden or the Early Modern cemetery at Horsens. However, these positivity rates suggest that the absence of plague in Viking settlements could be a false negative as the Viking period is sparsely sampled (N=20). Absence of plague at Klosterkirken (1600-1800) is less likely to be a false negative, as the site represents the second largest sample size (N=50) and plague was detected in every other site from the Horsens region.

> **Questions for Julia Gamble**<br>
> - Do you have sex and age estimates for these individuals? Some are missing in the database.<br>
> - Are G25A and G25B two individuals from the same grave? If so, very interesting!<br>
 
|   Arch ID   | Project ID |      Site      | PCR | Human (%) | Plague (%) | CHROM | pCD1 | pMT1 | pPCP1 |
|:-----------:|:----------:|:--------------:|:---:|:---------:|:----------:|:-----:|:----:|:----:|:-----:|
|     G16     |    D71     | Ribe Gräbrødre | 6/6 |   5.95    |    0.18    | 22.6  | 39.4 | 14.7 |  4.6  |
| G861 x1035  |    D75     | Ribe Gräbrødre | 6/6 |   4.42    |    0.23    | 17.4  | 40.2 | 16.5 |  3.4  |
|  G25B x98   |    R36     | Ribe Gräbrødre | 6/6 |   8.41    |    0.25    | 24.0  | 51.8 | 14.9 |  5.8  |
|    G25A     |    D62     | Ribe Gräbrødre | 6/6 |   1.12    |    0.10    |  3.8  | 10.5 | 2.5  |  0.9  |
|    G207     |    D72     | Ribe Gräbrødre | 6/6 |   12.94   |    0.04    |  6.0  | 13.5 | 5.8  |  2.2  |
| A146 x3011  |    P187    |     Sejet      | 6/6 |   0.68    |    0.01    |  4.9  | 18.4 | 6.6  | 52.2  |
|    G371     |    P212    |     Tirup      | 6/6 |   0.61    |    0.04    |  6.7  | 26.3 | 8.5  | 56.6  |
|  Gr GC 15   |    D51     |    Faldborg    | 6/6 |   0.67    |    0.05    |  9.0  | 25.4 | 8.1  |  2.0  |
| A1480 x1480 |    P387    | Ole Wormsgade  | 6/6 |   0.04    |    0.01    |  6.5  | 21.7 | 5.0  | 75.0  |

Table: Plague positive summary of high coverage genomes. Human (%) and plague (%) derive from shotgun estimates. The mean depth of coverage for the chromosome (CHROM) and the plasmids (pCD1, pMT1, pPCP1) are reported after targeted enrichment. {#tbl:plague_positive_high_coverage}

|   Arch ID   | Project ID |       Site       | PCR | Human (%) | Plague (%) | CHROM | pCD1 | pMT1 | pPCP1 |
|:-----------:|:----------:|:----------------:|:---:|:---------:|:----------:|:-----:|:----:|:----:|:-----:|
| A1155 x1155 |    P384    |  Ole Wormsgade   | 4/6 |   0.11    |    0.01    |  1.1  | 4.8  | 1.4  | 19.6  |
|  Gr ID 319  |    R21     |     Faldborg     | 6/6 |   0.85    |    0.01    |  2.6  | 3.8  | 2.3  |  0.4  |
|   A19 X21   |    D24     |     Hågerup      | 6/6 |   0.55    |    0.01    |  2.6  | 6.1  | 1.9  |  0.7  |
|    X1265    |    P246    | Ribe Lindegärden | 6/6 |   0.03    |    0.01    |  0.1  | 0.1  | 0.1  |  3.2  |

Table: Plague positive summary of low coverage genomes. Human (%) and plague (%) derive from shotgun estimates. The mean depth of coverage for the chromosome (CHROM) and the plasmids (pCD1, pMT1, pPCP1) are reported after targeted enrichment. {#tbl:plague_positive_low_coverage}

 
### Skeletal Dating {.page_break_before}

 I'm relying heavily on the discussion in Boldsen (2009) [[Boldsen 2009 Leprosy Medieval Denmark\|[@boldsen2009LeprosyMedievalDenmark]]], as quoted here:
 
*"The dating of individual skeletons is a fundamental problem in historical studies like this, and even the period of usage of each cemetery raises some serious problems. However, most cemeteries have at least some documentary sources broadly framing them in time. The most intensely studied skeletal samples, Tirup and Westerhus, are really the only exceptions in being dated solely on archaeological evidence (Kieffer-Olsen et al. 1986, Sivěn 2005)."*

*"In medieval graves the position of the arms in relation to the rest of the skeleton in the grave is the only feature that systematically indicates dating of the burial within the temporal frame provided by the period of usage of the cemetery. Arm position dating is primarily based on work by Redin (1976) and Kieffer-Olsen (1993). The successive stages of arm position from A (the arms besides the body) over B (hand joint over the lower part of the abdomen and usually found in the pelvis) and C (the forearms over the upper part of the abdomen and the elbows flexed in an approximately right angle) to D (the hands placed on the shoulders, forearms often crossed over the chest) have primarily been described by Kieffer-Olsen (1993) but Jantzen et al. (1994) have slightly modified the transition dates between the various stages."*.

![Arm position dating.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/cb2039e/denmark/metadata/all/arm_position_dating.png){#fig:dating_arm_position width=75%}

> **Question for Julia Gamble and Jesper Boldsen.**
> Can I use this diagram to broadly assign time periods to arm positions? If so, I can add greater resolution to Figure @fig:timeline_sites.<br>
> - Position A: 1150 - 1325<br>
> - Position B: 1250 - 1425<br>
> - Position C: 1350 - 1550<br>
> - Position D: 1450 - 1550<br>

<div style="page-break-after: always;"></div>

### Molecular Dating

A [[Bayesian Evaluation of Temporal Signal|Bayesian Evaluation of Temporal Signal (BETS)]] revealed decisive support for temporal signal during the [[Second Pandemic]], with the relaxed clock model having the highest likelihood (Table @tbl:bets_summary). After running the Monte Carlo Markov Chain (MCMC) analysis for a total of 150,000,000 generations, the estimated sample size (ESS) scores were sufficiently high (>200) for all parameters except for the tip-date of Russian strain Azov38, which could not be refined beyond a 95% highest posterior density (HPD) interval of 1553 to 1686 (Figure @fig:SAMEA7313243_45_date).

|     Model     | Dates |  Likelihood  | Dates vs. No Dates | Relaxed Clock vs. Strict Clock |
|:-------------:|:-----:|:------------:|:------------------:|:------------------------------:|
| Relaxed Clock |  Yes  | **-5947948** |        715         |              140               |
|               |  No   |   -5948663   |         --         |              174               |
| Strict Clock  |  Yes  |   -5948088   |        749         |               --               | 
|               |  No   |   -5948837   |         --         |               --               |

Table: Summary of clock model comparisons using a [[Bayesian Evaluation of Temporal Signal|Bayesian Evaluation of Temporal Signal (BETS)]] analysis. {#tbl:bets_summary}

The skeletal and molecular dates of the 9 high coverage *[[Yersinia pestis|Y. pestis]]* genomes are presented in Table @tbl:tip_dating_summary and Figure @fig:timeline_sites. Almost all molecular dates had overlap with the archaeological dates as determined by the site occupation period and burial patterns. The exception to this pattern was individual G371 from the site of Tirup. 

To investigate the dating disparity for G371, we performed 14C radiocarbon dating. The radiocarbon estimate largely agrees with the archaeological dates, with an estimated mean date of 1260 CE (+/- 75 yrs with 1 sigma). Thus there is robust evidence that the individual lived and died sometime between the late 12th and early 14th century. However, the associated *[[Yersinia pestis|Y. pestis]]* genome is dated to the 15th century. While the 2 sigma distribution of the radiocarbon date partially extends into the 15th century, there remains a substantial conflict between the date of the host, as estimated through archaeological context and radiocarbon dating, and the DNA of the associated pathogen. 

|     ID      | Region  |      Site      | Site Occupation | Arm Position | Skeletal Date |  Tip Date   |
|:-----------:|:-------:|:--------------:|:---------------:|:------------:|:-------------:|:-----------:|
|     G16     |  Ribe   | Ribe Gräbrødre |   1200 - 1560   |      C       |  1350 - 1550  | 1310 - 1388 |
| G861 x1035  |  Ribe   | Ribe Gräbrødre |   1200 - 1560   |      C       |  1350 - 1550  | 1489 - 1567 |
|  G25B x98   |  Ribe   | Ribe Gräbrødre |   1200 - 1560   |      C       |  1350 - 1550  | 1327 - 1414 |
|    G25A     |  Ribe   | Ribe Gräbrødre |   1200 - 1560   |      C       |  1350 - 1550  | 1295 - 1375 |
|    G207     |  Ribe   | Ribe Gräbrødre |   1200 - 1560   |      C       |  1350 - 1550  | 1477 - 1551 |
| A146 x3011  | Horsens |     Sejet      |   1150 - 1574   |      B       |  1250 - 1425  | 1397 - 1470 |
| A1480 x1480 | Horsens | Ole Wormsgade  |   1100 - 1500   |      ?       |       ?       | 1384 - 1473 |
|    G371     | Horsens |     Tirup      |   1150 - 1350   |      B       |  1250 - 1425  | 1419 - 1490 |
|  Gr GC 15   | Viborg  |    Faldborg    |   1100 - 1600   |      C       |  1350 - 1550  | 1539 - 1655 |

Table: Summary of the *[[Yersinia pestis|Y. pestis]]* molecular dates. The estimated tip date reflects the 95% highest posterior density. {#tbl:tip_dating_summary}

<div style="page-break-after: always;"></div>

> **Question for Vaughan Grimes.**
> Is the interpretation/visual of the radiocarbon date appropriate?<br>

> **Kat's Note** This figure still requires substantial edits.

![Timeline of archaeological sites and plague-positive individuals. The blue shaded range spans the highest probability period from the oldest to the youngest sample in which *Y. pestis* was detected. The color orange indicates the sample and site with disparate dates.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/f5b323e/denmark/beast/all/chromosome/full/filter30/relaxed_clock/dates/run/site_timeline.png){#fig:timeline_sites width=75%}

### Phylogeny {.page_break_before}

A time-scaled phylogeny was estimated to compare the 9 Danish *[[Y. pestis]]* genomes to 40 previously published Second Pandemic samples (Figure @fig:1.PRE_timetree). The temporal structure of the [[Second Pandemic]] is also visualized as a timeline, which re-orients the time-scaled phylogeny to trace a path from the root to the most recently collected sample (Figure @fig:1.PRE_timeline). The geographic distribution of *[[Y. pestis*]] genomes used in the phylogenetic analysis is displayed in Figure @fig:1.PRE_map.

*[[Yersinia pestis|Y. pestis]]* genomes from Denmark do not form a single, geographically restricted clade. Instead, Danish plague is distributed throughout the phylogeny, in a similar fashion to the genomes retrieved from Germany and England. This distribution aligns closely with historical documentation describing the multiple waves of 'pestilence' that affected medieval Europe [[Slavin 2021 Out West Formation\|[@slavin2021OutWestFormation]]], and thus we use this theoretical framework to contextualized the observed genetic diversity in Denmark.

![A time-scaled phylogeny of the Second Plague Pandemic.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/aaa5034/denmark/auspice/all/chromosome/full/filter30/beast/1.PRE_timetree.png){#fig:1.PRE_timetree}

![A timeline phylogeny of the Second Plague Pandemic.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/aaa5034/denmark/beast/all/chromosome/full/filter30/relaxed_clock/dates/run/1.PRE_timeline.png){#fig:1.PRE_timeline}

![Geographic distribution of Second Pandemic samples used in the *[[Yersinia pestis]]* phylogeny.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/532a976/denmark/auspice/all/chromosome/full/filter30/beast/1.PRE_map.png){#fig:1.PRE_map}

#### The First Phase: Black Death {.page_break_before}

Two individuals from Ribe, G25A and G16, cluster with *[[Yersinia pestis|Y. pestis]]* strains dated to the 14th century (Table @tbl:dates_black_death). This cluster is thought to be associated with the infamous [[Black Death]] (1346-1353) where mortality estimates ranged from 20-50% [[Slavin 2021 Out West Formation\|[@slavin2021OutWestFormation, p.10;]] [[Gottfried 1985 Black Death\|@gottfried1985BlackDeath p.131]]]. This association is based upon the observations of temporal overlap and little to no genetic diversity that rapidly dispersed across Europe, including France, Spain, England, Germany, Norway, and now Denmark. Overall, this pattern is typical of epidemic spread [@cite], and has also been observed at the advent of the Third Plague Pandemic [@cite]. 

Similar to the rest of Western and Northern Europe, *[[Yersinia pestis|Y. pestis]]* appears suddenly in Denmark in the 14th century. The genomes from G25A and G16 mark the first observation of *[[Yersinia pestis|Y. pestis]]* in Denmark and are congruent with historical records that document the arrival of the Black Death in Ribe in 1349 [[Lenz 2016 Black Death\|[@lenz2016BlackDeath]]].  No evidence of *[[Yersinia pestis|Y. pestis]]* was found in Denmark during the preceding centuries, suggesting plague was a relatively new disease for medieval Danish populations. Unfortunately, the high degree of genetic similarity means that the branching patterns, and thus dispersal of *[[Yersinia pestis|Y. pestis]]*, cannot be resolved during this period.

> **Kat's Note**:<br>
> - G25A has the lowest sequencing depth, with a mean chromosomal depth of 3.8 molecules per nucleotide. This might mean that diagnostic positions for the post-Black Death clade are missing as "false" negatives. This would make it seem earlier/less-derived if those mutations are 'missing'. I will investigate!


#### The Second Phase: *pestis secunda*

Interestingly, the *[[Yersinia pestis|Y. pestis]]* genome associated with individual G25Bx98 (who was found in the same grave as G25A?) is genetically distinct from the earlier strains from Ribe. This isolate falls within a clade of high epidemiological significance, which is the ancestral group giving rise to the [[Third Pandemic]] of plague and the rest of [[Branch 1]]. Historically, this clade has been linked to the *pestis secunda*, a wave of plague outbreaks dated between 1357 to 1366 [[Guellil 2020 Genomic Historical Synthesis|[@guellil2020GenomicHistoricalSynthesis;]] [[Namouchi 2018 Integrative Approach Using\|@namouchi2018IntegrativeApproachUsing]]]. The estimated molecular dates do overlap with this time period (Table @tbl:dates_secunda) but do not have sufficient resolution and thus offer only weak support of this hypothesis. However the relative position of this monophyletic clade, which post-dates the Black Death with strong posterior support, tentatively suggests that these populations were affected by a new lineage that diverged soon after the Black Death.

The phylogenetic position of samples within this clade has been hypothesized to reflect a "backward" migration of plague from Northern Europe into Asia. The *[[Yersinia pestis|Y. pestis]]* genome retrieved from G25Bx98 minimally supports this hypothesis, as it falls basal to the more derived strains from The Netherlands and Russia. However, directionality cannot be robustly inferred from four samples alone, particularly given the strong Western European sampling bias of Second Pandemic samples. It will be an important avenue of future research to further develop the relationship between Danish plague and the only Second Pandemic lineage that is known to persist until the present.

#### The Tertiary Phases: *pestis tertia* {.page_break_before}

In contrast to the genetic homogeneity observed across Europe during the Black Death period, isolates of plague in the post-Black Death period are easily distinguished. Three Danish genomes (A1480x1480, A1436x3011, and G371) collected from three different sites near Horsens derive from independent emergences, despite having temporal overlap. This has also been observed in Germany as samples collected in relatively close proximity are genetically distinct. The geographic structure of this clade is therefore not readily apparent, in comparison to later epidemics where samples with geographic and temporal overlap form monophyletic clades (ex. Switzerland and France). 

This pattern of independent emergence is the first defining characteristic of plague during this period. The *[[Yersinia pestis|Y. pestis]]* genomes within this phase, with estimated dates from the 14th to as late as the early 16th century (Table @tbl:dates_tertia), are thus far all uniquely derived lineages. One interpretation of this pattern is "boom-bust" cycling [[Strayer 2017 Boom-bust Dynamics Biological\|[@strayer2017BoombustDynamicsBiological]]], in which "booms" (epidemics) are frequently sampled when bacterial populations expand, and in the case of zoonoses like plague, spill-over from reservoir species into new hosts [[Pastor 2018 Ecology Rodent Outbreaks\|@pastor2018EcologyRodentOutbreaks]]. In contrast, the "bust" periods are under-sampled where bacterial populations decline and possibly retreat back into wild foci. 

Using this framework, the observed genetic diversity in this phase may reflect serial "booms" in which *[[Yersinia pestis|Y. pestis]]* continually re-emerges from a reservoir to infect human populations, followed by extinction of the spill-over lineage. This pattern aligns with the hypothesis of tertiary pestilences, *pestis tertia*, both in terms of temporal overlap and epidemiology. The *pestis tertia* (1364-1376) was followed by subsequent waves of plague that re-occurred every 5-12 years throughout the late 14th and the 15th centuries [[Slavin 2021 Out West Formation\|[@slavin2021OutWestFormation, p.39;]] [[Gottfried 1985 Black Death\|@gottfried1985BlackDeath p.131]]] This frequently cycling was also accompanied by a dramatic reduction in mortality estimates, from 20-50% as observed during the Black Death to 5-15%. If this clade of *[[Yersinia pestis|Y. pestis]]* is linked to the historical *pestis tertia*, one might expect to see genomic changes associated with a decline in virulence.

Indeed, the second defining characteristic of this period is the depletion of a key virulence factor,  the *plasminogen activator* (*pla*) on the pPCP1 plasmid. Previous work has identified the presence of *pla*+ and *pla*- plasmids co-existing in post-Black Death samples [[Susat 2020 Yersinia Pestis Strains\|[@susat2020YersiniaPestisStrains]]]. A re-analysis of publicly available genomes reiterates these results, and reveals two clusters that can be easily distinguished when the sequencing depth of the *pla* gene is compared to the sequencing depth of the *pst* gene, which is also found on the pPCP1 plasmid (Figure @fig:depletion_pla). This depletion event is first observed in strain STA0001 from Germany (1390 - 1476) and is perpetuated in all subsequent strains, with the exception of Gdansk8 from Poland (1461 - 1523) and Rostov2033 from Russia (1762 - 1773). In these two outlier genomes, the *pla*+ plasmid is possibly restored as the dominant variant or the *pla*- plasmid is lost. 

Empirical results in a mouse model suggest that *pla*− mutants are capable of flea-borne transmission, but the transmissibility is reduced [[Sebbane 2006 Role Yersinia Pestis\|[@sebbane2006RoleYersiniaPestis]]]. Furthermore, *pla*- mutants were incapable of causing bubonic plague but still caused low incidences of primary septicemic plague. This variant also increased the time from infection to terminal disease from 2-5 days in *pla*+ strains to 4-12 days in *pla*- strains. From these studies, we hypothesize that ancient *[[Yersinia pestis|Y. pestis]]* during this period may have caused a less transmissible disease, with slower progression, and different symptoms than experienced in the previous centuries.

![Relative depletion of the plasminogen activator (*pla*) virulence factor. Strains Gdansk8 and Rostov2033 which show putative evidence of *pla*+ restoration are indicated. A: Linear regression of the depleted gene (*pla*) depth on the pPCP1 baseline gene (*pst*) depth. B: The distribution of *pla* depletion ratios. C: The relationship between collection date and *pla* depletion. Colored bars represent the 95% HPD on estimated tip date.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/dc0d6f8/denmark/locus_coverage_collect/all/depletion_pla.png){#fig:depletion_pla width=100%}

The three Danish genomes from Horsens have temporal overlap with the 15th century and may potentially capture the transition from to a *pla*-depleted state. Unfortunately, the sequencing depth of the pPCP1 plasmid in these samples is insufficient for statistical analysis. The results of a targeted enrichment for the pPCP1 plasmid and the reconstruction of this structural variant will be the subject of a forthcoming publication.

> **Kat's Note:** Ravneet has completed these experiments, and has exciting results! Stay tuned...

#### Early Modern (16th - 19th Century )

Following the medieval Period, the evolutionary dynamic of *[[Yersinia pestis|Y. pestis]]* changes yet again and a second "burst" event occurs. Similar to the Black Death "burst", this event begins with a series of divergences in quick succession, producing highly similar genomes in contemporaneous individuals from Germany, Lithuania, and Poland. Following these divergences, two major lineages emerge. 

The first lineage, termed the Baltic-Alps, has been previously observed in the Baltic countries (Lithuania, Poland, Germany) and the Alps (Switzerland). Two Danish genomes from coastal Ribe (G207, G861x1035) and one sample from inland Viborg (Gr GC 15) fall within the Baltic-Alps clade. This localization of genetic diversity is highly congruent with historical documentation noting that the frequency of plague in 15th century Denmark was similar to the rest of Europe north of the Alps [[christensen2003ThesePerilousTimes\|[@christensen2003ThesePerilousTimes p. 417]]. Furthermore, from the 16th century onward, historical sources often explicitly state that plague came to Denmark from northern Germany and the Baltic region. 

The second lineage that emerges in this period gives rise to later epidemics of plague in England, Russia, and France. These isolates have been hypothesized to derived from well-documented plague epidemics, Great Northern War Outbreak (1711-1721) and the Great Plague of Marseille (1720-1722). No Danish plague in this study is associated with this lineage.

The last appearance of Danish *[[Yersinia pestis\|Y. pestis]]* in this study dates to between 1539 and 1655 (Table @tbl:dates_baltic_alps). No evidence of *[[Yersinia pestis\|Y. pestis]]* was found after the mid-17th century. This is in agreement with the last documented plague outbreak on the mainland (Jutland) which occurred from 1654 to 1657 [[christensen2003ThesePerilousTimes\|[@christensen2003ThesePerilousTimes p. 441;]] [[frandsen2010LastPlagueBaltic\|@frandsen2010LastPlagueBaltic]]]. While plague would later return to Denmark in 1711 during the Great Northern War Outbreak, this final outbreak was restricted to the island of Zealand.

## Conclusion

1. ***[[Yersinia pestis|Y. pestis]]* is detected across diverse individuals and mortuary practices**. Plague was identified in both adults and sub-adults, rural and urban settlements, and in single and multiple burials. This finding contributes to discourse on epidemic mortuary practices, which have primarily focused on the practice of mass graves and plague pits such as those observed in large centres such as London.

3. **The earliest evidence of Danish *[[Yersinia pestis|Y. pestis]]* is found in Ribe and dates to the mid-14th century**. This suggests that plague may have been a relatively new disease for Danish populations at the time, and was unlikely to have affected generations immediately prior. However, the Viking Age (900-1000), which is the earliest time period examined, is under-sampled and thus this absence of evidence does not prove the absence of plague in the Viking Age or earlier.

1. ***[[Yersinia pestis|Y. pestis]]* in medieval Denmark (14th-15th century) reveals population structure that closely aligns with historically documented pestilence**. Specifically, temporal and geographic patterns are observed that follow the documentation of successive epidemics sweeping across Europe, such as the primary (Black Death), secondary (*pestis secunda)*, and tertiary (*pestis tertia*) waves.

1. ***[[Yersinia pestis|Y. pestis]]* in pre-modern Denmark (16th century) forms a geographically-restricted lineage with other samples collected from the Baltic countries and the Alps.** This unique geographic structure supports the theory concerning formation of a novel plague reservoir. 

1. **Three sequential genomes from the Horsens region capture a key virulence change, in which the plasminogen activator (*pla*) becomes depleted for the remainder of the Second Pandemic**. Restoration of this virulence factor is not observed again in Denmark, although it is observed to be intermittently restored in Poland and Russia.

### Significance

- There have been relatively few studies that explore the genetics of plague in Scandinavia across time and geography, particularly in Denmark. 
- This study is the most intensive longitudinal study of plague in a single region, both in terms of time span and geographic sampling.-
- This paper contributes to a larger body of epidemiological literature that considers the patterns and mechanisms by which diseases emerge, propagate, and go extinct.
-  Additional evidence that *[[Yersinia pestis|Y. pestis]]* was a relatively novel pathogen for medieval European populations, may help guide research for immune-related changes in humans.

## Methods {.page_break_before}

### DNA Extraction

Ancient DNA laboratory work was performed in dedicated clean-room facilities at the
McMaster Ancient DNA Centre (Hamilton, ON). A single root of each individual’s molar was sectioned into two subsamples (50-100 mg) using a circular Dremel. Demineralisation and digestion were performed as previously described [[Schwarz 2009 New Insights Old\|[@schwarz2009NewInsightsOld]]] and DNA extraction was conducted using a specialized protocol designed for ancient DNA [[Dabney 2013 Complete Mitochondrial Genome\|[@dabney2013CompleteMitochondrialGenome]]]. Reagent blanks were introduced as negative controls to monitor DNA contamination in subsequent steps.

### *[[Yersinia pestis]]* PCR screening

An initial plague-screening PCR was performed in duplicate on 1:10 extract dilutions
using a *pla* assay [[Wagner 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]]. In brief, the PCR primers used in this study target the 3’UTR of the *pla* gene which has reduced sequence similarity in non-*Yersinia* species. The forward primer used is thus far known to be identical to *Yersinia pestis* only. A second round of the *pla* PCR assay was performed for all extracts that amplified in the initial PCR, using the 1:10 dilution in duplicate and the original concentration in duplicate. In total, 6 PCR replicates were performed for each plague-positive sample.

### Shotgun Sequencing

The extracted DNA of plague-positive individuals was converted into Illumina sequencing libraries 
using a modified protocol [[Meyer 2010 Illumina Sequencing Library\|[@meyer2010IlluminaSequencingLibrary]] [[Kircher 2012 Double Indexing Overcomes\|@kircher2012DoubleIndexingOvercomes]]] and quantified using an Illumina library qPCR assay. Sample libraries were then pooled at equimolar concentrations while negative controls were sequenced at maximum volume input to maximize detection of contaminant organisms. Paired-end sequencing was performed on an Illumina HiSeq 1500 platform (Farncombe Family Digestive Health Research Institute, Hamilton, ON).

### Targeted Sequencing

In-solution enrichment for the pan-genome of *[[Yersinia pestis]]* was performed with a previously designed bait-set [[Wagner 2014 Yersinia Pestis Plague\|[@wagner2014YersiniaPestisPlague]]] and using the myBaits v4 protocol. The following modifications were incorporated to improve recovery of degraded and divergent DNA sequences: 5uL library input, 100ng bait concentration, hybridisation at 60°C, 16–24h hybridisation capture, and two rounds of enrichment. The enriched libraries were quantified using an Illumina library quantification qPCR assay and pooled at maximum input volume (13uL) due to low concentration. Following pooling, libraries were size-selected on anagarose gel to retain 150–500bp fragments which corresponds to molecule lengths of approximately 15–365bp without the adapter sequences. Paired-end sequencing was performed on an Illumina HiSeq 1500 platform at the Farncombe Metagenomics Facility (Hamilton, ON).

### Comparative Genomes {.page_break_before}

Ancient unassembled genomes from the Second Plague Pandemic were identified using [[NCBImeta]] [[[Eaton 2020 NCBImeta Efficient Comprehensive\|[@eaton2020NCBImetaEfficientComprehensive]]] and downloaded from the SRA database in [[FASTQ]] format using the [[SRA Toolkit]] [[NCBI 2021 SRA Toolkit\|[@NCBI2021SRAToolkit]]] (Table @tbl:genome_second_pandemic). *[[Yersinia pestis|Y. pestis]]* strain [[CO92]] was used as the reference genome for sequence alignment and annotation (Table @tbl:genome_reference). All assembled genomes belonging to phylogenetic branch [[0.ANT3]] were downloaded and used as an outgroup to root the [[Maximum-likelihood\|maximum-likelihood]] phylogeny (Table @tbl:genome_outgroup).

### Genomic Alignment

Pre-processing and alignment to the reference genome was performed using the *[[nf-core/eager]]* pipeline, a reproducible workflow for ancient genome reconstruction [[Yates 2021 Reproducible Portable Efficient\|[@yates2021ReproduciblePortableEfficient]]]. A multiple sequence alignment was constructed using the [[Snippy\|Snippy Core]] module of the [[Snippy]] pipeline [[Snippy 2020\|[@snippy2020]]]. The output alignment was filtered to only include chromosomal variants and to exclude sites that had no more than 30% missing data (ie. no more than 30% of samples having an ambiguous nucleotide) . The value of 30% was selected as the most permissive threshold where the number of shared, parsimony-informative sites (240) was still larger than the number of singleton sites (234) which are observed in a single genome (Figure @fig:aln_missing_data). Furthermore, a 30% threshold was selected as ambiguous nucleotides made up no more than 10% of the alignment (@fig:aln_ambig_sites). The filtered chromosomal alignment contained 4,289,810 constant sites, as well as 474 variants when the outgroup clade ([[0.ANT3]]) was included and 356 variants when the outgroup was excluded.

![The number of variant positions used in the multiple alignment according to different missing data thresholds.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a444cae/denmark/snippy_multi/all/chromosome/full/snippy-multi.snps.missing-data.png){#fig:aln_missing_data width=75%}

![The number of ambiguous nucleotides used in the multiple alignment according to different missing data thresholds.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a444cae/denmark/snippy_multi/all/chromosome/full/snippy-multi.snps.ambig-nuc.png){#fig:aln_ambig_sites width=75%}

### Phylogeny

Model selection was performed using [[Modelfinder]] which identified the K3Pu+F+I model as the optimal choice based on the [[Bayesian Information Criterion\|Bayesian Information Criterion (BIC)]] [[Kalyaanamoorthy 2017 ModelFinder Fast Model\|[@kalyaanamoorthy2017ModelFinderFastModel]]]. A [[Maximum-likelihood\|maximum-likelihood]] phylogeny was then estimated across 10 independent runs of [[IQTREE]] [[Minh 2020 IQTREE New Models\|[@minh2020IQTREENewModels]]]. Branch support was evaluated using 1000 iterations of the [[UFboot\|ultrafast bootstrap approximation]] [[Hoang 2018 UFBoot2 Improving Ultrafast\|[@hoang2018UFBoot2ImprovingUltrafast]]], with a threshold of 95% required for strong support. The outgroup clade ([[0.ANT3]]) was used to estimate the root position and was subsequently pruned from the phylogeny for downstream analysis and visualization.

### Phylodynamics

To evaluate the degree of temporal signal present, a [[Bayesian Evaluation of Temporal Signal]] (BETS) was first performed using [[BEAST v2.6.2]]. As *[[Yersinia pestis|Y. pestis]]* exhibits significant rate variation between clades [[Cui 2013 Historical Variations Mutation|[@cui2013HistoricalVariationsMutation]]], the chromosomal alignment that excludes the outgroup clade ([[0.ANT3]]) was used. To robustly estimate the root position, strain LAI009 from Russia was specified as the outgroup as this sample falls basal to all other [[Second Pandemic]] genomes in the maximum-likelihood phylogeny (Figure @fig:1.PRE_divtree) as well as in previously published analyses [[Spyrou 2019 Phylogeography Second Plague|[@spyrou2019PhylogeographySecondPlague]]].

Briefly, each candidate model was tested using the correct collection dates of all samples and then compared to the same model with all collection dates assumed to be contemporaneous. A constant population size was assumed as the coalescent prior to minimize additional parameter variation. Two candidate models were tested: a strict clock and an uncorrelated relaxed lognormal clock with default priors and starting positions.  

For the models that incorporate the correct collection date, individual priors were constructed for all samples. Strain 8291 from England and all OBS strains from France were assumed to have fixed dates of 1349 and 1721 respectively, as their collection date uncertainty spans only 2 years (1348-1350 and 1720-1722). For all other previously published genomes, a diffuse normal prior was constructed using the mean radiocarbon/mortuary date and half the uncertainty as the standard deviation. Individual priors for the new Danish samples were similarly constructed using the widest possible occupation dates of plague-positive sites (Figure @fig:prior_denmark).

![Individual tip-date prior used to estimate the collection date of all Danish *[[Y. pestis]]* genomes.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/b8abc24/denmark/locus_coverage_collect/all/prior_denmark.png){#fig:prior_denmark width=75%}

Bayes factors (BF) were calculated by comparing the marginal likelihoods of each model, as estimated with a generalized stepping stone (GSS) computation across 100 chains each sampled over 1,000,000 generations. The model with the highest marginal likelihood was then run fully for 150,000,000 generations to ensure the effective sample size (ESS) of all relevant parameters was greater than 200.

> **Kat's Note:**<br>
> I think I might want to re-run this with no sequence data, only sampling from the prior.  From preliminary observations, the data appears to have enough signal that it can 'overcome' the prior distribution. However, I noticed that for strain Rostov2033, which has one of the most restrictive priors, the tip-date distribution is essentially identical to the prior distribution. This needs more investigation.

## References {.page_break_before}

<div id="refs"></div>

## Appendix {.page_break_before}

### Plague Detection

|    Arch ID     | Project ID | Site Code | PCR | Human (%) | Plague (%) | Chrom | pCD1 | pMT1 | pPCP1 |
|:--------------:|:----------:|:---------:|:---:|:---------:|:----------:| ----- | ---- | ---- | ----- |
|    G70 x212    |    R44     | ASR 1015  | 3/6 |   1.48    |    0.00    | 0.1   | 0.1  | 0.1  | 0.0   |
|      G860      |    R39     | ASR 1015  | 5/6 |   0.09    |     ?      | ?     | ?    | ?    | ?     |
|      G364      |    R43     | ASR 1015  | 4/6 |     ?     |     ?      | ?     | ?    | ?    | ?     |
|  K1167 x1167   |    P235    | ASR 13 II | 3/6 |     ?     |     ?      | ?     | ?    | ?    | ?     |
|    A21 x23     |    D25     | ØHM 1247  | 4/6 |   0.01    |    0.00    | 0.05  | 0.1  | 0.0  | 0.0   |
| G260 K539 x876 |    R27     | VSM 09264 | 3/6 |     ?     |     ?      | ?     | ?    | ?    | ?     |

Table: Plague false positive summary. {#tbl:false_positive_summary}


### Comparative Genomes

|     Strain     |    Date     | Branch |     Country     |    Accession    |
|:--------------:|:-----------:|:------:|:---------------:|:---------------:|
|     STN021     | 1485 - 1635 | 1.PRE1 |   Switzerland   |  SAMEA5818830   |
|     STN020     | 1485 - 1635 | 1.PRE1 |   Switzerland   |  SAMEA5818829   |
|     STN019     | 1485 - 1635 | 1.PRE1 |   Switzerland   |  SAMEA5818828   |
|     STN014     | 1485 - 1635 | 1.PRE1 |   Switzerland   |  SAMEA5818826   |
|     STN013     | 1485 - 1635 | 1.PRE1 |   Switzerland   |  SAMEA5818825   |
|     STN008     | 1485 - 1635 | 1.PRE1 |   Switzerland   |  SAMEA5818822   |
|     STN007     | 1485 - 1635 | 1.PRE1 |   Switzerland   |  SAMEA5818821   |
|     STN002     | 1485 - 1635 | 1.PRE1 |   Switzerland   |  SAMEA5818818   |
|     STA001     | 1420 - 1630 | 1.PRE1 |     Germany     |  SAMEA5818817   |
|     NMS002     | 1475 - 1536 | 1.PRE1 |     England     |  SAMEA5818815   |
|     NAB003     | 1292 - 1392 | 1.PRE1 |     Germany     |  SAMEA5818811   |
|     MAN008     | 1283 - 1390 | 1.PRE1 |     Germany     |  SAMEA5818809   |
|     LBG002     | 1455 - 1632 | 1.PRE1 |     Germany     |  SAMEA5818808   |
|     LAI009     | 1300 - 1400 | 1.PRE0 |     Russia      |  SAMEA5818806   |
|     ELW098     | 1485 - 1627 | 1.PRE1 |     Germany     |  SAMEA5818805   |
|     BRA001     | 1618 - 1648 | 1.PRE1 |     Germany     |  SAMEA5818803   |
|     BED034     | 1560 - 1635 | 1.PRE1 |     England     |  SAMEA5818801   |
|     BED030     | 1560 - 1635 | 1.PRE1 |     England     |  SAMEA5818800   |
|     BED028     | 1560 - 1635 | 1.PRE1 |     England     |  SAMEA5818799   |
|     BED024     | 1560 - 1635 | 1.PRE1 |     England     |  SAMEA5818798   |
|    SLC1006     | 1279 - 1389 | 1.PRE1 |     France      |  SAMEA5054093   |
|      OSL1      | 1270 - 1390 | 1.PRE1 |     Norway      |  SAMEA5054092   |
|     Ber45      | 1300 - 1400 | 1.PRE2 | The Netherlands |  SAMEA5054090   |
|     Ber37      | 1300 - 1400 | 1.PRE2 | The Netherlands |  SAMEA5054089   |
| BolgarCity2370 | 1362 - 1400 | 1.PRE3 |     Russia      |  SAMEA3937654   |
| Barcelona3031  | 1300 - 1420 | 1.PRE1 |      Spain      |  SAMEA3937653   |
|     OBS137     | 1720 - 1720 | 1.PRE1 |     France      |  SAMEA3713715   |
|     OBS124     | 1720 - 1720 | 1.PRE1 |     France      |  SAMEA3713714   |
|     OBS116     | 1720 - 1720 | 1.PRE1 |     France      |  SAMEA3713713   |
|     OBS110     | 1720 - 1720 | 1.PRE1 |     France      |  SAMEA3713712   |
|     OBS107     | 1720 - 1720 | 1.PRE1 |     France      |  SAMEA3713711   |
|      8291      |  1348-1350  | 1.PRE1 |     England     |  SAMN00715800   |
|     COL001     | 1300 - 1400 | 1.PRE1 |      Italy      |  SAMEA7293136   |
|      CHE1      | 1500 - 1800 | 1.PRE1 |     Russia      |  SAMEA7293135   |
|   Rostov2033   | 1762 - 1773 | 1.PRE1 |     Russia      | SAMEA7313236_38 |
|     Azov38     | 1400 - 1700 | 1.PRE1 |     Russia      | SAMEA7313243_45 |
|    Gdansk8     | 1400 - 1700 | 1.PRE1 |     Poland      | SAMEA7313246_49 |
|     AGU010     | 1435 - 1477 | 1.PRE1 |    Lithuania    |  SAMEA6651390   |
|     AGU025     | 1441 - 1612 | 1.PRE1 |    Lithuania    |  SAMEA6637004   |
|    AGU007B     | 1463 - 1632 | 1.PRE1 |    Lithuania    |  SAMEA6637002   |

Table: Second Pandemic genomes metadata. {#tbl:genome_second_pandemic}


|     Strain     |    Date     | Branch |         Country          |    Accession    |
|:--------------:|:-----------:|:------:|:------------------------:|:---------------:|
|      CO92      |    1992     | 1.ORI1 | United States of America |  SAMEA1705942   |

Table: Reference genome metadata. {#tbl:genome_reference}


|  Strain   |    Date     | Branch |  Country   |  Accession   |
|:---------:|:-----------:|:------:|:----------:|:------------:|
|    231    |    1947     | 0.ANT3 | Kyrgyzstan | SAMN02777961 |
|  A-1486   |    1966     | 0.ANT3 | Kyrgyzstan | SAMN05149973 |
|    790    | 1961 - 1976 | 0.ANT3 | Kyrgyzstan | SAMN02769799 |
| CMCC38001 |    1979     | 0.ANT3 |   China    | SAMN02403043 |
| CMCC21106 |    2001     | 0.ANT3 |   China    | SAMN02403038 |
| A1956001  |    1956     | 0.ANT3 |   China    | SAMN02403019 |
|   42091   |    1999     | 0.ANT3 |   China    | SAMN02403004 |
|   42082   |    1995     | 0.ANT3 |   China    | SAMN02403003 |

Table: Outgroup genomes metadata. {#tbl:genome_outgroup}

### Phylogeny

![A divergence-scaled phylogeny of the Second Plague Pandemic. Asterisks indicate branches with strong statistical support.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/370570a/denmark/auspice/all/chromosome/full/filter30/ml/1.PRE_divtree.png){#fig:1.PRE_divtree}


### Phylodynamics

![Tip-dating uncertainty for strain Azov38.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a08a83f/denmark/beast/all/chromosome/full/filter30/relaxed_clock/dates/run/SAMEA7313243_45_date_trace.png){#fig:SAMEA7313243_45_date width=75%}

| Country |    Strain     | 95% HPD Date |
|:-------:|:-------------:|:------------:|
| Denmark |     G25A      | 1295 - 1375  |
| Norway  |     OSL1      | 1300 - 1364  |
| Germany |    NAB003     | 1304 - 1359  |
|  Spain  | Barcelona3031 | 1304 - 1364  |
| France  |    SLC1006    | 1308 - 1376  |
| Denmark |      G16      | 1310 - 1388  |
| England |     8291      |      --      |

Table: Estimated tip-dates for the Black Death clade. Strain 8291 was assumed to have a fixed date of 1349, given the archaeological dates of 1348-1350. {#tbl:dates_black_death}

|     Country     |     Strain     | 95% HPD Date |
|:---------------:|:--------------:|:------------:|
|     Denmark     |    G25Bx98     | 1327 - 1414  | 
| The Netherlands |     Ber37      | 1342 - 1398  |
| The Netherlands |     Ber45      | 1354 - 1404  |
|     Russia      | BolgarCity2370 | 1363 - 1396  |

Table: Estimated tip-dates for the *pestis secunda* clade. {#tbl:dates_secunda}

| Country |   Strain   | 95% HPD Date |
|:-------:|:----------:|:------------:|
|  Italy  |   COL001   | 1322 - 1386  |
| Germany |   MAN008   | 1334 - 1401  |
| Denmark | A1480x1480 | 1384 - 1473  |
| Germany |   STA001   | 1390 - 1476  |
| Denmark | A146x3011  | 1397 - 1470  |
| Denmark |    G371    | 1419 - 1490  |
| England |   NMS002   | 1464 - 1518  |
	
Table: Estimated tip-dates for the *pestis tertia* clade. {#tbl:dates_tertia}

|   Country   |  Strain   | 95% HPD Date |
|:-----------:|:---------:|:------------:|
|  Lithuania  |  AGU010   | 1458 - 1492  |
|   Germany   |  ELW098   | 1455 - 1521  |
|  Lithuania  |  AGU007B  | 1460 - 1522  |
|   Poland    |  Gdansk8  | 1461 - 1523  |
|  Lithuania  |  AGU025   | 1471 - 1536  |
|   Denmark   |   G207    | 1477 - 1551  |
|   Denmark   | G861x1035 | 1489 - 1567  |
|   Germany   |  LBG002   | 1493 - 1568  |
| Switzerland |  STN014   | 1529 - 1585  |
| Switzerland |  STN007   | 1532 - 1592  |
| Switzerland |  STN019   | 1532 - 1588  |
| Switzerland |  STN020   | 1532 - 1589  |
| Switzerland |  STN002   | 1533 - 1591  |
| Switzerland |  STN021   | 1538 - 1595  |
| Switzerland |  STN008   | 1540 - 1605  |
| Switzerland |  STN013   | 1541 - 1601  |
|   Denmark   | Gr GC 15  | 1539 - 1655  |
|   Germany   |  BRA001   | 1617 - 1646  |
	
Table: Estimated tip-dates for the Baltic-Alps clade. {#tbl:dates_baltic_alps}

| Country |   Strain   | 95% HPD Date |
|:-------:|:----------:|:------------:|
| England |   BED030   | 1562 - 1610  |
| England |   BED034   | 1581 - 1625  |
| England |   BED024   | 1585 - 1633  |
| England |   BED028   | 1585 - 1631  |
| France  |   OBS124   |      --      |
| France  |   OBS107   |      --      |
| France  |   OBS110   |      --      |
| France  |   OBS116   |      --      |
| France  |   OBS137   |      --      |
| Russia  |   Azov38   | 1553 - 1686  |
| Russia  | Rostov2033 | 1762 - 1773  |
| Russia  |    CHE1    | 1702 - 1889  |

Table: Estimated tip-dates for the England-France-Russia clade. OBS strains were assumed to have a fixed date of 1721, given the archaeological dates of 1720-1722. {#tbl:dates_england_france_russia}

### *pla* Depletion

![Relative Depletion of the plasminogen activator (*pla*) virulence factor on the Second Pandemic phylogeny.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/5b069f4/denmark/locus_coverage_collect/all/depletion_tree_pla.png){#fig:pla_ratio width=100%}