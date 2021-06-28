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

## Data Collection

326 individuals were sampled across 8 municipalities from 14 archaeological sites with occupation dates spanning from 900-1600 CE (Table @tbl:site_summary). The most heavily represented periods are the Danish early medieval period (1050–1225) and the Danish medieval period (1225–1536) [[@dangvardpedersen2020MillenniumPopulationChange]].


| Municipality | Site Name                        | Site Code     | Site Date | Excavated | Sampled | Plague Positive |
| ------------ | -------------------------------- | ------------- | --------- | --------- | ------- | --------------- |
| Ribe         | Ribe Gräbrødre                   | ASR 1015      | 1200:1560 | 915       | 53      | 6               |
|              | Ribe Lindegården (Vikings)       | ASR 13 II     | 900:1000  | 10        | ?       | 0               |
|              | Ribe Lindegården (City Cemetery) | ASR 13 II     | 1200:1560 | 113       | ?       | 1               |
|              | Ribe Lindegärden                 | ASR 2391      | 1200:1560 | 183       | 6       | 0               |
| Nordby       | Nordby                           | FHM 3970      | 1050:1250 | 126       | 36      | 0               |
| Sejet        | Sejet                            | HOM 1046      | 1150:1574 | 435       | 25      | 1               |
| Horsens      | Monastery Church                 | HOM 1272      | 1600:1800 | 221       | 50      | 0               |
|              | Ole Wormsgade                    | HOM 1649      | 1100:1500 | 578       | 17      | 2               |
|              | Tirup                            | VKH 1201      | 1150:1350 | 574       | 12      | 1               |
| Hågerup      | Hågerup                          | ØHM 1247      | 1100:1555 | ?         | 7       | 1               |
| Refshale     | Refshale                         | Refshale      | 1100:1350 | 303       | 19      | 0               |
| Viborg       | Sct. Michael                     | JAH 1-77      | 1000:1529 | 285       | 4       | 0               |
|              | The Catholic Church              | VSM 09264     | 1100:1529 | 95        | 6       | 0               |
|              | Sct. Mathias                     | VSM 855F/906F | 1100:1529 | 280       | 23      | 0               |
|              | Sct. Drotten                     | VSM 902F      | 1100:1529 | 84        | 8       | 0               |
|              | Faldborg                         | VSM 29F       | 1100:1600 | 80        | 17      | 2               |
| **Total**    |                                  |               | 900:1600  |           | 326     | 15              |

Table: Site summary.  {#tbl:site_summary}

### Plague Detection {.page_break_before}

15 individuals were identified as plague-positive based on a combination of PCR assays, shotgun sequencing, and targeted enrichment for the *[[Yersinia pestis]]* whole genome {#tbl:plague_positive_summary}. 9 individuals had coverage levels sufficient for phylogenetic analysis as determined by having 50% of the chromosome covered by at least 3X (Table @tbl:si_cov).

| Arch ID    | Project ID | Site Code | PCR | Human (%) | Plague (%) | Chromosome | pCD1  | pMT1  | pPCP1 |
| ---------- | ---------- | --------- | --- | --------- | ---------- | ---------- | ----- | ----- | ----- |
| GrGC15     | D51        | VSM 29F   | 6/6 | 0.67      | 0.05       | 9.04       | 25.4  | 8.12  | 1.97  |
| GrID319    | R21        | VSM 29F   | 6/6 | 0.85      | 0.01       | 2.60       | 4.75  | 2.28  | 0.43  |
| A146x3011  | P187       | HOM 1046  | 6/6 | 0.68      | 0.01       | 4.91       | 18.4  | 6.63  | 52.19 |
| G371       | P212       | VKH 1201  | 6/6 | 0.61      | 0.04       | 6.71       | 26.25 | 8.50  | 56.64 |
| A1155x1155 | P384       | HOM 1649  | 4/6 | 0.11      | 0.01       | 1.10       | 4.83  | 1.41  | 19.55 |
| A1480x1480 | P387       | HOM 1649  | 6/6 | 0.04      | 0.01       | 6.55       | 21.67 | 4.99  | 75.00 |
| A21x23     | D25        | ØHM 1247  | 4/6 | 0.01      | 0.00       | 0.04       | 0.11  | 0.02  | 0     |
| G25A       | D62        | ASR 1015  | 6/6 | 1.12      | 0.10       | 3.83       | 10.48 | 2.48  | 0.86  |
| G16        | D71        | ASR 1015  | 6/6 | 5.95      | 0.18       | 22.95      | 39.38 | 14.69 | 4.56  |
| G207       | D72        | ASR 1015  | 6/6 | 12.94     | 0.04       | 5.95       | 13.53 | 5.82  | 2.18  |
| G861x1035  | D75        | ASR 1015  | 6/6 | 4.42      | 0.23       | 17.42      | 40.23 | 16.48 | 3.40  |
| G25Bx98    | R36        | ASR 1015  | 6/6 | 8.41      | 0.25       | 24.01      | 51.80 | 14.93 | 5.75  |
| G70x212    | R44        | ASR 1015  | 3/6 | 1.48      | 0.00       | 0.06       | 0.11  | 0.05  | 0.01  |
| X1265      | P246       | ASR 13 II | 6/6 | 0.03      | 0.01       | 0.12       | 0.47  | 0.10  | 3.2   |

Table: Plague positive summary. Replicon statistics represent the mean fold coverage. {#tbl:plague_positive_summary}

### Dating {.page_break_before}

To estimate dates for the plague-positive individuals, a [[Bayesian Evaluation of Temporal Signal]] (BETS) was first performed. Briefly, each candidate model was tested using the correct collection dates of all samples and then compared to the same model with all collection dates assumed to be contemporaneous. Bayes factors (BF) were calculated by comparing the marginal likelihoods of each model, as estimated with a generalized stepping stone (GSS) computation across 100 chains each sampled over 1,000,000 generations.

The BETS analysis revealed decisive support for temporal signal (dates vs. no dates) using both the strict clock (SC) and uncorrelated lognormal relaxed clock (UCLN) (Table @tbl:bets_summary). A comparison of the strict vs. relaxed clocks using collection date produced decisive support for the relaxed clock.

| Model         | Abbrev. | Dates | Likelihood   | Bayes Factor (Dates) | Bayes Factor (Model) |
| ------------- | ------- | ----- | ------------ | -------------------- | -------------------- |
| Strict Clock  | SC      | Yes   | -5948088     | 749                  | --                   |
|               |         | No    | -5948837     | --                   | --                   |
| Relaxed Clock | UCLN    | Yes   | **-5947948** | 715                  | 140                  |
|               |         | No    | -5948663     | --                   | --                   |

Table: [[Bayesian Evaluation of Temporal Signal]] (BETS) summary. {#tbl:bets_summary}

A time-scaled phylogeny with tip-dating was estimated using a relaxed clock and diffuse normal priors centered around the mean collection date. The tip dates fro the 9 high coverage *[[Yersinia pestis|Y. pestis]]* genomes are presented in Table @tbl:tip_dating_summary as the 95% highest posterior density (HPD) intervals. 

All estimated tip dates had overlap with the expected range of site occupation dates, with the exception of G371 (P212) from the site of Tirup (VKH 1201).

| Project ID | Site Code | Site Occupation | Tip Date    | Overlap |
| ---------- | --------- | --------------- | ----------- | ------- |
| D51        | VSM 29F   | 1100 : 1600     | 1539 : 1655 | Yes     |
| P187       | HOM 1046  | 1150 : 1574     | 1397 : 1470 | Yes     |
| P212       | VKH 1201  | 1150 : 1350     | 1419 : 1490 | No      |
| P387       | HOM 1649  | 1100 : 1500     | 1384 : 1473 | Yes     |
| D62        | ASR 1015  | 1200 : 1560     | 1295 : 1375 | Yes     |
| D71        | ASR 1015  | 1200 : 1560     | 1310 : 1388 | Yes     |
| D72        | ASR 1015  | 1200 : 1560     | 1477 : 1551 | Yes     |
| D75        | ASR 1015  | 1200 : 1560     | 1489 : 1567 | Yes     |
| R36        | ASR 1015  | 1200 : 1560     | 1327 : 1414 | Yes     | 

Table: Tip-dating summary. {#tbl:tip_dating_summary}

### Phylogeny {.page_break_before}

The time-scaled phylogeny reveals geographic and temporal structure during the [[Second Pandemic]] (Figure @fig:1.PRE_timetree). This study recapitulates the finding that *[[Yersinia pestis|Y. pestis]]* genomes sampled from the 14th century all cluster together. The branching pattern of samples dating to the first half of the 14th century are poorly resolved, due to extremely similar genetic content. However, this 
- Large geographic spread, Italy -> Norway, Spain -> Eastern Russia.

![Bayesian time-scaled phylogeny.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/137befa/denmark/auspice/all/chromosome/full/filter30/beast/1.PRE_timetree.png){#fig:1.PRE_timetree}

| 1300-1450                                   | 1450-1600            | 1600-1800            |
| ------------------------------------------- | -------------------- | -------------------- |
| ![[Map Black Death and pestis segunda.png]] | ![[Map Phase 2.png]] | ![[Map Phase 3.png]] |

## References {.page_break_before}