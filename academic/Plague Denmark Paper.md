---
project: [[Plague Denmark]]
due: June 28, 2021
authors:
  - name: [[Katherine Eaton]]
    github: ktmeaton
    orcid: 0000-0001-6862-7756
    affiliations: [
      "[[McMaster Ancient DNA Center]]", 
      "[[Department of Anthropology]], [[McMaster University]]"
    ]
  - name: [[Ravneet Sidhu]]
    affiliations: [
      "[[McMaster Ancient DNA Center]]", 
      "[[Department of Biology]], [[McMaster University]]"
    ]
  - name: [[Hendrik Poinar]]
    orcid: 0000-0002-0314-4160
    affiliations: [
      "[[McMaster Ancient DNA Center]]", 
      "[[Department of Anthropology]], [[McMaster University]]"
    ]
lang: en-US
repo: ktmeaton/obsidian-public
filepath: academic/[[Plague Denmark Paper]]
tags: ⬜/🧨 
status: priority
title: Plague Denmark Paper
type: [[Task]]
compile-manubot: "conda activate manubot && pandoc/manubot.sh 'Plague Denmark Paper.md' pandoc/bib/library.json ../../rootstock"
url: https://ktmeaton.github.io/obsidian-public/academic/Plague%20Denmark%20Paper.html
---

## Introduction

1. When and where does [[Plague|plague]] (*[[Yersinia pestis|Y. pestis]]*) appear in [[Denmark]]?
2. How are [[Denmark\|Danish]] outbreaks of plague connected to the global [[Second Pandemic]]?


## Data Collection {.page_break_before}

326 individuals were sampled across 6 regions from 14 archaeological sites (Table @tbl:site_summary). The site occupation dates span from the 10th to 18th centuries which encompasses the Viking Age (8th - 10th century), the Medieval Period (11th - 16th century) and the Early Modern Period (16th - 19th century).

|  Region   |      Site Name      |   Site Code   | Site Occupation | Samples |
|:---------:|:-------------------:|:-------------:|:---------------:|:-------:|
|   Ribe    |   Ribe Gräbrødre    |   ASR 1015    |   1200 - 1560   |   53    |
|           |  Ribe Lindegärden   |   ASR 2391    |   900 - 1000    |    5    |
|           |                     |  ASR 13/13II  |   900 - 1000    |   15    |
|           |                     |   ASR 13II    |   1200 - 1560   |   28    |
|  Nordby   |       Nordby        |   FHM 3970    |   1050 - 1250   |   36    |
|  Horsens  |  Monastery Church   |   HOM 1272    |   1600 - 1800   |   50    |
|           |    Ole Wormsgade    |   HOM 1649    |   1100 - 1500   |   17    |
|           |        Sejet        |   HOM 1046    |   1150 - 1574   |   25    |
|           |        Tirup        |   VKH 1201    |   1150 - 1350   |   12    |
|  Hågerup  |       Hågerup       |   ØHM 1247    |   1100 - 1555   |    7    |
| Refshale  |      Refshale       |   Refshale    |   1100 - 1350   |   19    |
|  Viborg   |     Sct. Mikkel     |   JAH 1-77    |   1000 - 1529   |    4    |
|           | The Catholic Church |   VSM 09264   |   1100 - 1529   |    6    |
|           |    Sct. Mathias     | VSM 855F/906F |   1100 - 1529   |   23    |
|           |    Sct. Drotten     |   VSM 902F    |   1100 - 1529   |    8    |
|           |      Faldborg       |    VSM 29F    |   1100 - 1600   |   17    |
| **Total** |                     |               |                 |   326   |

Table: Summary of archaeological sites sampled in this study.  {#tbl:site_summary}


![Geographic map of archaeological sites by region.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/e6877b0/denmark/beast/all/chromosome/full/filter30/relaxed_clock/dates/run/site_map.png){#fig:map_sites width=75%}

## Plague Detection  {.page_break_before}

13 individuals were identified as plague-positive based on a combination of PCR assays, shotgun sequencing, and targeted enrichment for the *[[Yersinia pestis\|Y. pestis]]* whole genome (Tables @tbl:plague_positive_high_coverage and @tbl:plague_positive_low_coverage). Of the 13 individuals, 9 had chromosomal coverage sufficient for phylogenetic analyses (3X mean coverage).

The positivity rate for plague was 4% of all individuals, or 8.2% when excluding plague-negative archaeological sites. 

*[[Yersinia pestis|Y. pestis]]* was observed exclusively in the Medieval Period, with no evidence of plague in the Viking Age settlements at Ribe Lindegärden (N=20) or the Early Modern cemetery at Horsens (N=50). However, the absence of evidence for plague in these periods may be a false-negative, given that these time periods are sparsely sampled.
 
> **Kat's Notes**:<br>
> - Are G25A and G25B two individuals from the same grave?<br>

|   Arch ID   | Project ID |       Site       | PCR | Human (%) | Plague (%) |  CHROM  | pCD1 | pMT1 | pPCP1 |
|:-----------:|:----------:|:----------------:|:---:|:---------:|:----------:|:-------:|:----:|:----:|:-----:|
|     G16     |    D71     |  Ribe Gräbrødre  | 6/6 |   5.95    |    0.18    |  22.6   | 39.4 | 14.7 |  4.6  |
| G861 x1035  |    D75     |  Ribe Gräbrødre  | 6/6 |   4.42    |    0.23    |  17.4   | 40.2 | 16.5 |  3.4  |
|  G25B x98   |    R36     |  Ribe Gräbrødre  | 6/6 |   8.41    |    0.25    |  24.0   | 51.8 | 14.9 |  5.8  |
|    G25A     |    D62     |  Ribe Gräbrødre  | 6/6 |   1.12    |    0.10    |   3.8   | 10.5 | 2.5  |  0.9  |
|    G207     |    D72     |  Ribe Gräbrødre  | 6/6 |   12.94   |    0.04    |   6.0   | 13.5 | 5.8  |  2.2  |
| A146 x3011  |    P187    |      Sejet       | 6/6 |   0.68    |    0.01    |   4.9   | 18.4 | 6.6  | 52.2  |
|    G371     |    P212    |      Tirup       | 6/6 |   0.61    |    0.04    |   6.7   | 26.3 | 8.5  | 56.6  |
|  Gr GC 15   |    D51     |     Faldborg     | 6/6 |   0.67    |    0.05    |   9.0   | 25.4 | 8.1  |  2.0  |
| A1480 x1480 |    P387    |  Ole Wormsgade   | 6/6 |   0.04    |    0.01    |   6.5   | 21.7 | 5.0  | 75.0  |

Table: Plague positive summary of high coverage genomes. {#tbl:plague_positive_high_coverage}

|   Arch ID   | Project ID |       Site       | PCR | Human (%) | Plague (%) | CHROM | pCD1 | pMT1 | pPCP1 |
|:-----------:|:----------:|:----------------:|:---:|:---------:|:----------:|:-----:|:----:|:----:|:-----:|
| A1155 x1155 |    P384    |  Ole Wormsgade   | 4/6 |   0.11    |    0.01    |  1.1  | 4.8  | 1.4  | 19.6  |
|  Gr ID 319  |    R21     |     Faldborg     | 6/6 |   0.85    |    0.01    |  2.6  | 3.8  | 2.3  |  0.4  |
|   A19 X21   |    D24     |     Hågerup      | 6/6 |   0.55    |    0.01    |  2.6  | 6.1  | 1.9  |  0.7  |
|    X1265    |    P246    | Ribe Lindegärden | 6/6 |   0.03    |    0.01    |  0.1  | 0.1  | 0.1  |  3.2  |

Table: Plague positive summary of low coverage genomes. {#tbl:plague_positive_low_coverage}

 
## Skeletal Dating   {.page_break_before}
 
*"The dating of individual skeletons is a fundamental problem in historical studies like this, and even the period of usage of each cemetery raises some serious problems. However, most cemeteries have at least some documentary sources broadly framing them in time. The most intensely studied skeletal samples, Tirup and Westerhus, are really the only exceptions in being dated solely on archaeological evidence (Kieffer-Olsen et al. 1986, Sivěn 2005)."* [[Boldsen 2009 Leprosy Medieval Denmark\|[@boldsen2009LeprosyMedievalDenmark]]].
Aspects of dating of cemetery samples has been discussed for Nordby (Skov 2002), Refshale (Snedker 1973), St. Mikkel (Vellev 1979).

*"In medieval graves the position of the arms in relation to the rest of the skeleton in the grave is the only feature that systematically indicates dating of the burial within the temporal frame provided by the period of usage of the cemetery. Arm position dating is primarily based on work by Redin (1976) and Kieffer-Olsen (1993). The successive stages of arm position from A (the arms besides the body) over B (hand joint over the lower part of the abdomen and usually found in the pelvis) and C (the forearms over the upper part of the abdomen and the elbows flexed in an approximately right angle) to D (the hands placed on the shoulders, forearms often crossed over the chest) have primarily been described by Kieffer-Olsen (1993) but Jantzen et al. (1994) have slightly modified the transition dates between the various stages."* [[Boldsen 2009 Leprosy Medieval Denmark\|[@boldsen2009LeprosyMedievalDenmark]]].

## Molecular Dating  {.page_break_before}

The molecular dates of the 9 high coverage *[[Yersinia pestis|Y. pestis]]* genomes are presented in Table @tbl:tip_dating_summary. All molecular dates had overlap with the expected range of site occupation dates, with the exception of individual G371 from the site of Tirup. To investigate this disparity, we performed 14C radiocarbon dating on this sample (Figure @fig:radiocarbon_g371). The radiocarbon estimate largely agrees with the site occupation date, with an estimated mean date of 1260 CE (+/- 75 yrs with 1 sigma). The 2 sigma distribution of the radiocarbon date extends to 1430 CE which does overlap with the molecular date.

|     ID      |      Site      | Site Occupation |  Tip Date   |
|:-----------:|:--------------:|:---------------:|:-----------:|
|     G16     | Ribe Gräbrødre |   1200 - 1560   | 1310 - 1388 |
| G861 x1035  | Ribe Gräbrødre |   1200 - 1560   | 1489 - 1567 |
|  G25B x98   | Ribe Gräbrødre |   1200 - 1560   | 1327 - 1414 |
|    G25A     | Ribe Gräbrødre |   1200 - 1560   | 1295 - 1375 |
|    G207     | Ribe Gräbrødre |   1200 - 1560   | 1477 - 1551 |
| A146 x3011  |     Sejet      |   1150 - 1574   | 1397 - 1470 |
| A1480 x1480 | Ole Wormsgade  |   1100 - 1500   | 1384 - 1473 |
|    G371     |     Tirup      |   1150 - 1350   | 1419 - 1490 |
|  Gr GC 15   |    Faldborg    |   1100 - 1600   | 1539 - 1655 | 

Table: Summary of the *[[Yersinia pestis|Y. pestis]]* molecular date. The estimated tip date reflects the 95% highest posterior density. {#tbl:tip_dating_summary}


![Radiocarbon dating of G371.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/7be6a02/denmark/metadata/all/radiocarbon_G371.png){#fig:radiocarbon_g371 width=50%}

![Timeline of archaeological sites and plague-positive individuals. The shaded range spans the highest probability period from the oldest to the youngest sample.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/e6877b0/denmark/beast/all/chromosome/full/filter30/relaxed_clock/dates/run/site_timeline.png){#fig:timeline_sites}


### Phylogeny {.page_break_before}

The time-scaled phylogeny reveals geographic and temporal structure during the [[Second Pandemic]] (Figure @fig:1.PRE_timetree). 

![Bayesian time-scaled phylogeny.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/137befa/denmark/auspice/all/chromosome/full/filter30/beast/1.PRE_timetree.png){#fig:1.PRE_timetree}


> **Phase 1: 1300-1450**<br>
> - All *[[Yersinia pestis|Y. pestis]]* genomes from the 14th century cluster together.<br>
> - Samples from the early-mid 1300s are widely dispersed across Europe (Figure @fig:map_phase_1), and have highly similar genetic content resulting poorly resolved branching order. This suggests rapid, epidemic spread, thought to be associated with the Black Death.<br>
> - Samples from the late 1300s also cluster together, and are linked to the *pestis segunda* series of epidemics in Europe.<br>
> - The only Danish samples in Phase I are from Ribe, and fall within both the Black Death and *pestis segunda* groups.
> - These are primarily coastal sites, Germany and Russia as the exception.

> **Phase 2: 1450-1600**<br>
- A very curious branching pattern, lots of 'independent' emergences rather than monophyletic clades.<br>
- All Danish samples from the Horsens region fall here, and although they have temporal overlap with each other, the lineages of plague are distinct.<br>
- ...<br>

> **Phase 3: 1600-1800**<br>
- ...

![Phase 1: 1300 - 1450](https://rawcdn.githack.com/ktmeaton/obsidian-public/c233139/academic/Map%20Black%20Death%20and%20pestis%20segunda.png){#fig:map_phase_1 width=50%}

![Phase 2: 1450 - 1600](https://rawcdn.githack.com/ktmeaton/obsidian-public/c233139/academic/Map%20Phase%202.png){#fig:map_phase_2 width=50%}

![Phase 3: 1600 - 1800](https://rawcdn.githack.com/ktmeaton/obsidian-public/c233139/academic/Map%20Phase%203.png){#fig:map_phase_3 width=50%}

## References {.page_break_before}

<div id="refs"></div>

## Appendix {.page_break_before}

### Misc Notes

|    Arch ID     | Project ID | Site Code | PCR | Human (%) | Plague (%) | Chrom | pCD1 | pMT1 | pPCP1 |
|:--------------:|:----------:|:---------:|:---:|:---------:|:----------:| ----- | ---- | ---- | ----- |
|    G70 x212    |    R44     | ASR 1015  | 3/6 |   1.48    |    0.00    | 0.1   | 0.1  | 0.1  | 0.0   |
|      G860      |    R39     | ASR 1015  | 5/6 |   0.09    |     ?      | ?     | ?    | ?    | ?     |
|      G364      |    R43     | ASR 1015  | 4/6 |     ?     |     ?      | ?     | ?    | ?    | ?     |
|  K1167 x1167   |    P235    | ASR 13 II | 3/6 |     ?     |     ?      | ?     | ?    | ?    | ?     |
|    A21 x23     |    D25     | ØHM 1247  | 4/6 |   0.01    |    0.00    | 0.05  | 0.1  | 0.0  | 0.0   |
| G260 K539 x876 |    R27     | VSM 09264 | 3/6 |     ?     |     ?      | ?     | ?    | ?    | ?     |

Table: Plague false positive summary. {#tbl:false_positive_summary}

To estimate dates for the plague-positive individuals, a [[Bayesian Evaluation of Temporal Signal]] (BETS) was first performed. Briefly, each candidate model was tested using the correct collection dates of all samples and then compared to the same model with all collection dates assumed to be contemporaneous. Bayes factors (BF) were calculated by comparing the marginal likelihoods of each model, as estimated with a generalized stepping stone (GSS) computation across 100 chains each sampled over 1,000,000 generations.

The BETS analysis revealed decisive support for temporal signal (dates vs. no dates) using both the strict clock (SC) and uncorrelated lognormal relaxed clock (UCLN) (Table @tbl:bets_summary). A comparison of the strict vs. relaxed clocks using collection date produced decisive support for the relaxed clock.

|     Model     | Abbrev. | Dates |  Likelihood  | Bayes Factor (Dates) | Bayes Factor (Model) |
|:-------------:|:-------:|:-----:|:------------:|:--------------------:|:--------------------:|
| Strict Clock  |   SC    |  Yes  |   -5948088   |         749          |          --          |
|               |         |  No   |   -5948837   |          --          |          --          |
| Relaxed Clock |  UCLN   |  Yes  | **-5947948** |         715          |         140          |
|               |         |  No   |   -5948663   |          --          |          --          |

Table: [[Bayesian Evaluation of Temporal Signal]] (BETS) summary. {#tbl:bets_summary}

A time-scaled phylogeny with tip-dating was estimated using a relaxed clock and diffuse normal priors centered around the mean collection date. 