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

## Data Collection {.page_break_before}

326 individuals were sampled across 8 municipalities from 14 archaeological sites with occupation dates spanning from 900 to 1600 CE (Table @tbl:site_summary). The most heavily represented periods are the Danish early medieval period (1050–1225) and the Danish medieval period (1225–1536) [[@dangvardpedersen2020MillenniumPopulationChange]].

> **Kat's Notes**:
> - Positivity rate (all sites): 4.6% (15/326)
> - Positivity rate (excluding negative sites): 9.4% (15/159)

| Municipality |            Site Name             |   Site Code   |  Site Date  | Sampled | Plague Positive |
|:------------:|:--------------------------------:|:-------------:|:-----------:|:-------:|:---------------:|
|     Ribe     |          Ribe Gräbrødre          |   ASR 1015    | 1200 : 1560 |   53    |        6        |
|              |    Ribe Lindegården (Vikings)    |  ASR 13/13II  | 900 : 1000  |   15    |        0        |
|              | Ribe Lindegården (City Cemetery) |   ASR 13II    | 1200 : 1560 |   28    |        1        |
|              |         Ribe Lindegärden         |   ASR 2391    | 900 : 1000  |    5    |        0        |
|    Nordby    |              Nordby              |   FHM 3970    | 1050 : 1250 |   36    |        0        |
|   Horsens    |          Monastery Church         |   HOM 1272    | 1600 : 1800 |   50    |        0        |
|              |          Ole Wormsgade           |   HOM 1649    | 1100 : 1500 |   17    |        2        |
|              |              Sejet               |   HOM 1046    | 1150 : 1574 |   25    |        1        |
|              |              Tirup               |   VKH 1201    | 1150 : 1350 |   12    |        1        |
|   Hågerup    |             Hågerup              |   ØHM 1247    | 1100 : 1555 |    7    |        1        |
|   Refshale   |             Refshale             |   Refshale    | 1100 : 1350 |   19    |        0        |
|    Viborg    |           Sct. Michael           |   JAH 1-77    | 1000 : 1529 |    4    |        0        |
|              |       The Catholic Church        |   VSM 09264   | 1100 : 1529 |    6    |        0        |
|              |           Sct. Mathias           | VSM 855F/906F | 1100 : 1529 |   23    |        0        |
|              |           Sct. Drotten           |   VSM 902F    | 1100 : 1529 |    8    |        0        |
|              |             Faldborg             |    VSM 29F    | 1100 : 1600 |   17    |        2        |
|  **Total**   |                                  |               |             |   326   |       15        |

Table: Site summary.  {#tbl:site_summary}


![[Map Denmark Sites.png]]

### Plague Detection {.page_break_before}

15 individuals were identified as plague-positive based on a combination of PCR assays, shotgun sequencing, and targeted enrichment for the *[[Yersinia pestis]]* whole genome (Table @tbl:plague_positive_summary). 9 individuals had coverage levels sufficient for phylogenetic analysis as determined by having 50% of the chromosome covered by at least 3X (Table @tbl:si_cov).

> **Kat's Notes**:
> - *[[Yersinia pestis|Y. pestis]]* is only detected in the Medieval Period (1225–1536).
> 

|  Arch ID   | Project ID | Site Code | PCR | Human (%) | Plague (%) |
|:----------:|:----------:|:---------:|:---:|:---------:|:----------:|
|   GrGC15   |    D51     |  VSM 29F  | 6/6 |   0.67    |    0.05    |
|  GrID319   |    R21     |  VSM 29F  | 6/6 |   0.85    |    0.01    |
| A146x3011  |    P187    | HOM 1046  | 6/6 |   0.68    |    0.01    |
|    G371    |    P212    | VKH 1201  | 6/6 |   0.61    |    0.04    |
| A1155x1155 |    P384    | HOM 1649  | 4/6 |   0.11    |    0.01    |
| A1480x1480 |    P387    | HOM 1649  | 6/6 |   0.04    |    0.01    |
|   A21x23   |    D25     | ØHM 1247  | 4/6 |   0.01    |    0.00    |
|    G25A    |    D62     | ASR 1015  | 6/6 |   1.12    |    0.10    |
|    G16     |    D71     | ASR 1015  | 6/6 |   5.95    |    0.18    |
|    G207    |    D72     | ASR 1015  | 6/6 |   12.94   |    0.04    |
| G861x1035  |    D75     | ASR 1015  | 6/6 |   4.42    |    0.23    |
|  G25Bx98   |    R36     | ASR 1015  | 6/6 |   8.41    |    0.25    |
|  G70x212   |    R44     | ASR 1015  | 3/6 |   1.48    |    0.00    |
|   X1265    |    P246    | ASR 13 II | 6/6 |   0.03    |    0.01    |

Table: Plague PCR and shotgun summary. {#tbl:pcr_shotgun_summary}


|  Arch ID   | Project ID | Site Code | Chromosome | pCD1 | pMT1 | pPCP1 |
|:----------:|:----------:|:---------:|:----------:|:----:|:----:|:-----:|
|   GrGC15   |    D51     |  VSM 29F  |    9.0     | 25.4 | 8.1  |  2.0  |
|  GrID319   |    R21     |  VSM 29F  |    2.6     | 4.8  | 2.3  |  0.4  |
| A146x3011  |    P187    | HOM 1046  |    4.9     | 18.4 | 6.6  | 52.2  |
|    G371    |    P212    | VKH 1201  |    6.7     | 26.3 | 8.5  | 56.6  |
| A1155x1155 |    P384    | HOM 1649  |    1.1     | 4.8  | 1.4  | 19.6  |
| A1480x1480 |    P387    | HOM 1649  |    6.5     | 21.7 | 5.0  | 75.0  |
|   A21x23   |    D25     | ØHM 1247  |    0.0     | 0.1  | 0.0  |  0.0  |
|    G25A    |    D62     | ASR 1015  |    3.8     | 10.5 | 2.5  |  0.9  |
|    G16     |    D71     | ASR 1015  |    22.6    | 39.4 | 14.7 |  4.6  |
|    G207    |    D72     | ASR 1015  |    6.0     | 13.5 | 5.8  |  2.2  |
| G861x1035  |    D75     | ASR 1015  |    17.4    | 40.2 | 16.5 |  3.4  |
|  G25Bx98   |    R36     | ASR 1015  |    24.0    | 51.8 | 14.9 |  5.8  |
|  G70x212   |    R44     | ASR 1015  |    0.1     | 0.1  | 0.1  |  0.0  | 
|   X1265    |    P246    | ASR 13 II |    0.1     | 0.5  | 0.1  |  3.2  |


Table:  Enrichment summary. Replicon statistics represent the mean fold coverage. {#tbl:enrichment_summary}

![Map Denmark Sites (PLACEHOLDER)](https://rawcdn.githack.com/ktmeaton/obsidian-public/c233139/academic/Map%20Denmark%20Sites.png){#fig:map_sites width=50%}



### Dating {.page_break_before}

To estimate dates for the plague-positive individuals, a [[Bayesian Evaluation of Temporal Signal]] (BETS) was first performed. Briefly, each candidate model was tested using the correct collection dates of all samples and then compared to the same model with all collection dates assumed to be contemporaneous. Bayes factors (BF) were calculated by comparing the marginal likelihoods of each model, as estimated with a generalized stepping stone (GSS) computation across 100 chains each sampled over 1,000,000 generations.

The BETS analysis revealed decisive support for temporal signal (dates vs. no dates) using both the strict clock (SC) and uncorrelated lognormal relaxed clock (UCLN) (Table @tbl:bets_summary). A comparison of the strict vs. relaxed clocks using collection date produced decisive support for the relaxed clock.

|     Model     | Abbrev. | Dates |  Likelihood  | Bayes Factor (Dates) | Bayes Factor (Model) |
|:-------------:|:-------:|:-----:|:------------:|:--------------------:|:--------------------:|
| Strict Clock  |   SC    |  Yes  |   -5948088   |         749          |          --          |
|               |         |  No   |   -5948837   |          --          |          --          |
| Relaxed Clock |  UCLN   |  Yes  | **-5947948** |         715          |         140          |
|               |         |  No   |   -5948663   |          --          |          --          |

Table: [[Bayesian Evaluation of Temporal Signal]] (BETS) summary. {#tbl:bets_summary}

A time-scaled phylogeny with tip-dating was estimated using a relaxed clock and diffuse normal priors centered around the mean collection date. The tip dates from the 9 high coverage *[[Yersinia pestis|Y. pestis]]* genomes are presented in Table @tbl:tip_dating_summary as the 95% highest posterior density (HPD) intervals. 

All estimated tip dates had overlap with the expected range of site occupation dates, with the exception of G371 (P212) from the site of Tirup (VKH 1201).

| Project ID | Site Code | Site Occupation | Arm Position Date |  Tip Date   | Haplotype |
|:----------:|:---------:|:---------------:|:-----------------:|:-----------:|:---------:|
|    D51     |  VSM 29F  |   1100 : 1600   |    1350 : 1450    | 1539 : 1655 |    V12    |
|    P187    | HOM 1046  |   1150 : 1574   |    1250 : 1350    | 1397 : 1470 |    --     |
|    P212    | VKH 1201  |   1150 : 1350   |    1250 : 1350    | 1419 : 1490 |    --     |
|    P387    | HOM 1649  |   1100 : 1500   |         ?         | 1384 : 1473 |    --     |
|    D62     | ASR 1015  |   1200 : 1560   |    1350 : 1450    | 1295 : 1375 |   H7b2    |
|    D71     | ASR 1015  |   1200 : 1560   |    1250 : 1450    | 1310 : 1388 |  U2e2a1a  |
|    D72     | ASR 1015  |   1200 : 1560   |    1350 : 1450    | 1477 : 1551 |  H1a3c1   |
|    D75     | ASR 1015  |   1200 : 1560   |    1350 : 1450    | 1489 : 1567 |    I1f    |
|    R36     | ASR 1015  |   1200 : 1560   |    1350 : 1450    | 1327 : 1414 |    --     |

Table: Tip-dating summary. {#tbl:tip_dating_summary}

### Phylogeny {.page_break_before}

The time-scaled phylogeny reveals geographic and temporal structure during the [[Second Pandemic]] (Figure @fig:1.PRE_timetree). This study recapitulates the finding that *[[Yersinia pestis|Y. pestis]]* genomes sampled from the 14th century all cluster together. The branching pattern of samples dating to the first half of the 14th century are poorly resolved, due to extremely similar genetic content. However, this 
- Large geographic spread, Italy -> Norway, Spain -> Eastern Russia.

![Bayesian time-scaled phylogeny.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/137befa/denmark/auspice/all/chromosome/full/filter30/beast/1.PRE_timetree.png){#fig:1.PRE_timetree}

### Geography

![Phase 1: 1300 - 1450](https://rawcdn.githack.com/ktmeaton/obsidian-public/c233139/academic/Map%20Black%20Death%20and%20pestis%20segunda.png){#fig:map_phase_1 width=50%}

![Phase 2: 1450 - 1600](https://rawcdn.githack.com/ktmeaton/obsidian-public/c233139/academic/Map%20Phase%202.png){#fig:map_phase_2 width=50%}

![Phase 3: 1600 - 1800](https://rawcdn.githack.com/ktmeaton/obsidian-public/c233139/academic/Map%20Phase%203.png){#fig:map_phase_3 width=50%}

## References {.page_break_before}