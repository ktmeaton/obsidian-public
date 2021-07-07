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
  - name: [[Julia Gamble]]
    orcid: 0000-0001-7486-757X
    affiliations: [
      "[[University of Manitoba]]"
    ]	
  - name: [[Jesper Boldsen]]
    orcid: 0000-0002-2850-0934
    affiliations: [
      "[[University of Southern Denmark]]", 
      "[[ADBOU]]"
    ]		
  - name: [[Ann Carmichael]]
    affiliations: [
      "[[Indian University Bloomington]]", 
    ]
  - name: [[Nükhet Varlık]]
    orcid: 0000-0001-6870-5945
    affiliations: [
      "[[University of South Carolina]]", 
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

## Abstract {.page_break_before}

### Background

The sequencing of ancient pathogen genomes has resulted in vast advancements to our understanding of the second plague pandemic. However, due to limited sample availability, debate remains about the Plague’s origins, routes of dissemination, genomic diversity, and persistence. Specifically, Scandinavia has a unique history with regards to plague persistence as it is home to the oldest known strain of plague to date and has been ravaged by historic epidemics, only for the plague to have disappeared from this region in the modern era.

### Problem

It is unknown to what extent local plague reservoirs fed the recurring epidemics in Scandinavia as compared to the continual introduction of globally circulated strains. Previously studied historical records primarily derive from large commercial centres such as London, which are contrasted by countries such as Denmark where the archives have retained limited information about the spread of the plague and its impact on society.

### Objectives

To confidently identify and sequence ancient *[[Yersinia pestis]]* from Danish archaeological sites across a wide geographic and temporal range. With the aim of performing genomic analyses to estimate the timing, spread, and evolutionary changes occurring within Danish plague strains as compared to neighboring regions.

### Significance

First, there have been relatively few studies that explore the genetics of plague in Scandinavia across time and geography, particularly in Denmark. Second, this paper contributes to a larger body of epidemiological literature that considers the patterns and mechanisms by which diseases emerge, propagate, and go extinct.

## Sites and Samples {.page_break_before}

326 individuals were sampled across 6 regions from 14 archaeological sites (Table @tbl:site_summary). The site occupation dates span from the 10th to 18th centuries which encompasses the Viking Age (8th - 10th century), the Medieval Period (11th - 16th century) and the Early Modern Period (16th - 19th century) in Denmark.

|  Region   |      Site Name      |   Site Code   | Site Occupation | Samples |
|:---------:|:-------------------:|:-------------:|:---------------:|:-------:|
|   Ribe    |   Ribe Gräbrødre    |   ASR 1015    |   1200 - 1560   |   53    |
|           |  Ribe Lindegärden   |   ASR 2391    |   900 - 1000    |    5    |
|           |                     |  ASR 13/13II  |   900 - 1000    |   15    |
|           |                     |   ASR 13II    |   1200 - 1560   |   28    |
|   Viby    |       Nordby        |   FHM 3970    |   1050 - 1250   |   36    |
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


![Geographic map of archaeological sites by region.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/e6877b0/denmark/beast/all/chromosome/full/filter30/relaxed_clock/dates/run/site_map.png){#fig:map_sites}

## Plague Detection  {.page_break_before}

13 individuals were identified as plague-positive based on a combination of PCR assays, shotgun sequencing, and targeted enrichment for the *[[Yersinia pestis\|Y. pestis]]* whole genome (Tables @tbl:plague_positive_high_coverage and @tbl:plague_positive_low_coverage). Of the 13 individuals, 9 had chromosomal coverage sufficient for phylogenetic analyses.

Overall, plague was detected in 4% of all individuals in this study. When excluding plague-negative archaeological sites, this estimate rises to 8.2% of individuals. *[[Yersinia pestis|Y. pestis]]* was observed exclusively in the Medieval Period, with no evidence of plague in the Viking Age settlements at Ribe Lindegärden or the Early Modern cemetery at Horsens. 

> - Absence of plague in Viking/Early Modern could easily be a false negative.<br>
> - These periods are sparsely sampled, with fewer sites and individuals sampled.<br>
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

 
## Dating {.page_break_before}

### Archaeology
 
 I'm relying heavily on the discussion in Boldsen (2009) [[Boldsen 2009 Leprosy Medieval Denmark\|[@boldsen2009LeprosyMedievalDenmark]]], as quoted here:
 
*"The dating of individual skeletons is a fundamental problem in historical studies like this, and even the period of usage of each cemetery raises some serious problems. However, most cemeteries have at least some documentary sources broadly framing them in time. The most intensely studied skeletal samples, Tirup and Westerhus, are really the only exceptions in being dated solely on archaeological evidence (Kieffer-Olsen et al. 1986, Sivěn 2005)."*

*"In medieval graves the position of the arms in relation to the rest of the skeleton in the grave is the only feature that systematically indicates dating of the burial within the temporal frame provided by the period of usage of the cemetery. Arm position dating is primarily based on work by Redin (1976) and Kieffer-Olsen (1993). The successive stages of arm position from A (the arms besides the body) over B (hand joint over the lower part of the abdomen and usually found in the pelvis) and C (the forearms over the upper part of the abdomen and the elbows flexed in an approximately right angle) to D (the hands placed on the shoulders, forearms often crossed over the chest) have primarily been described by Kieffer-Olsen (1993) but Jantzen et al. (1994) have slightly modified the transition dates between the various stages."*.

![Arm position dating.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/cb2039e/denmark/metadata/all/arm_position_dating.png){#fig:dating_arm_position width=75%}

### Molecular {.page_break_before}

The skeletal and molecular dates of the 9 high coverage *[[Yersinia pestis|Y. pestis]]* genomes are presented in Table @tbl:tip_dating_summary and Figure @fig:timeline_sites. Almost all molecular dates had overlap with the archaeological dates as determined by the site occupation period and burial patterns. The exception to this pattern was individual G371 from the site of Tirup. 

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

### Radiocarbon

To investigate the dating disparity for G371, we performed 14C radiocarbon dating (Figure @fig:radiocarbon_g371). The radiocarbon estimate largely agrees with the archaeological dates, with an estimated mean date of 1260 CE (+/- 75 yrs with 1 sigma). Thus there is robust evidence that the individual lived and died sometime between the late 12th and early 14th century

However, the associated *[[Yersinia pestis|Y. pestis]]* genome is dated to the 15th century. While the 2 sigma distribution of the radiocarbon date does extends into the 15th century, there remains a substantial conflict between the date of the host and the associated pathogen.

![Radiocarbon dating of G371.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/7be6a02/denmark/metadata/all/radiocarbon_G371.png){#fig:radiocarbon_g371 width=40%}

![Timeline of archaeological sites and plague-positive individuals. The shaded range spans the highest probability period from the oldest to the youngest sample.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/e6877b0/denmark/beast/all/chromosome/full/filter30/relaxed_clock/dates/run/site_timeline.png){#fig:timeline_sites}

## Phylogeny  {.page_break_before}

![A timeline phylogeny of the Second Plague Pandemic. Asterisks indicate branches with strong statistical support along the main branch.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/8cdeab8/denmark/beast/all/chromosome/full/filter30/relaxed_clock/dates/run/1.PRE_timeline.png){#fig:1.PRE_timeline}

### Denmark and the Black Death

Two individuals from Ribe, G25A and G16, cluster with *[[Yersinia pestis|Y. pestis]]* strains dated to the 14th century. This cluster is thought to be associated with the [[Black Death]], as the genomes are nearly identical and have been isolated from all across Europe, including France, Spain, England, Germany, and Norway. *[[Yersinia pestis|Y. pestis]]* in this cluster is nearly indistinguishable, thus indicating rapid geographic dispersal faster than mutations could accrue. Given this high degree of genetic similarity, the branching order and thus migration patterns of this epidemic clade cannot be resolved. Our understanding of this event is therefore that of a "burst" radiation and it is challenging to identify whether there is a single wave or multiple lineages dispersing in this period.

### The Ancestors of the Third Pandemic

Interestingly, the *[[Yersinia pestis|Y. pestis]]* genome associated with individual G25Bx98 from Ribe (who was found in the same grave as G25A?) is genetically distinct from the earlier strains from this region. This isolate falls within a clade of high epidemiological significance, which is the ancestral group giving rise to the [[Third Pandemic]] of plague. This clade was previously hypothesized to reflect a backward migration of plague from Northern Europe into Asia. The *[[Yersinia pestis|Y. pestis]]* genome retrieved from G25Bx98 tentatively supports hypothesis, as it falls basal to the more derived strains from The Netherlands and Russia. 

> - The resolution of this clade was not reproduced in the divergence-scaled phylogeny (Figure @fig:1.PRE_divtree).

### Medieval Plague

In contrast to the genetic homogeneity observed across Europe during the Black Death period, later isolates of plague from the Medieval period are easily distinguished. *[[Yersinia pestis|Y. pestis]]* collected from sites near Horsens and Ribe form distinct lineages that are interspersed with plague collected from other countries. This intra-regional diversity has also been observed in Germany and England, as *[[Yersinia pestis|Y. pestis]]* from these countries can be found throughout the Second Pandemic phylogeny. Medieval plague therefore exhibits cryptic geographic structure as the 

. Instead, lineages of plague typically cluster by time period up until the 16th century.

The clustering patterns observed in the phylogeny are better explained by similar 

This suggests that outbreaks of plague in Denmark were not localized epidemics. Rather, they were connected to the rest of Europe. Interconnected network of disease dispersal.

### Early Modern Plague

By the onset of the Early Modern Period (16th century), European plague splits into 2 distinct lineages. 
1. The Baltic countries (Lithuania, Poland, Germany) and the Alps (Switzerland)
2. England, France, Russia

### Cycles of Plague

Reapparance/re-emergence of plague in Ribe

## References {.page_break_before}

<div id="refs"></div>

## Appendix {.page_break_before}

### Phylogeny


![A time-scaled phylogeny of the Second Plague Pandemic. Asterisks indicate branches with strong statistical support.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/3a3c1bd/denmark/auspice/all/chromosome/full/filter30/beast/1.PRE_timetree.png){#fig:1.PRE_timetree}

![A divergence-scaled phylogeny of the Second Plague Pandemic. Asterisks indicate branches with strong statistical support.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/8cdeab8/denmark/auspice/all/chromosome/full/filter30/ml/1.PRE_divtree.png){#fig:1.PRE_divtree}

### Miscellaneous  {.page_break_before}

|    Arch ID     | Project ID | Site Code | PCR | Human (%) | Plague (%) | Chrom | pCD1 | pMT1 | pPCP1 |
|:--------------:|:----------:|:---------:|:---:|:---------:|:----------:| ----- | ---- | ---- | ----- |
|    G70 x212    |    R44     | ASR 1015  | 3/6 |   1.48    |    0.00    | 0.1   | 0.1  | 0.1  | 0.0   |
|      G860      |    R39     | ASR 1015  | 5/6 |   0.09    |     ?      | ?     | ?    | ?    | ?     |
|      G364      |    R43     | ASR 1015  | 4/6 |     ?     |     ?      | ?     | ?    | ?    | ?     |
|  K1167 x1167   |    P235    | ASR 13 II | 3/6 |     ?     |     ?      | ?     | ?    | ?    | ?     |
|    A21 x23     |    D25     | ØHM 1247  | 4/6 |   0.01    |    0.00    | 0.05  | 0.1  | 0.0  | 0.0   |
| G260 K539 x876 |    R27     | VSM 09264 | 3/6 |     ?     |     ?      | ?     | ?    | ?    | ?     |

Table: Plague false positive summary. {#tbl:false_positive_summary}

### Methods

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