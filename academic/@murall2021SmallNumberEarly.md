---
# Bibliography
title: "A Small Number of Early Introductions Seeded Widespread Transmission of SARS-CoV-2 in Québec, Canada"
authors: 
  - Carmen Lía Murall
  - Eric Fournier
  - Jose Hector Galvez
  - Arnaud N’Guessan
  - Sarah J. Reiling
  - Pierre-Olivier Quirion
  - Sana Naderi
  - Anne-Marie Roy
  - Shu-Huang Chen
  - Paul Stretenowich
  - Mathieu Bourgey
  - David Bujold
  - Romain Gregoire
  - Pierre Lepage
  - Janick St-Cyr
  - Patrick Willet
  - Réjean Dion
  - Hugues Charest
  - Mark Lathrop
  - Michel Roger
  - Guillaume Bourque
  - Jiannis Ragoussis
  - B. Jesse Shapiro
  - Sandrine Moreira
date: "2021"
aliases: 
  - "Murall et al. 2021"
  - "Murall et al. (2021)"
  - "@murall2021SmallNumberEarly"
bibtex: "murall2021SmallNumberEarly"
doi: "10.1186/s13073-021-00986-9"
url: "https://doi.org/10.1186/s13073-021-00986-9"

# Obsidian
type: Literature
tags: 📰
---

# Murall et al. (2021) A Small Number of Early Introductions Seeded Widespread Transmission of SARS-CoV-2 in Québec, Canada

## Summary

> Automatically created by [`seldon`](https://github.com/ktmeaton/seldon).

- Note that PANGO or Nextstrain are viral phylogenetic lineages used for taxonomic purposes, which are distinct from Québec transmission lineages, which we define at higher phylogenetic resolution as descendants of a single introduction event, and thus represent a partially observed transmission chain.
- The top eight introductions inferred by ML gave rise to 1544 genomes, or 53% of all sequenced cases (ASR parsimony range: 7–12 introductions giving rise to 52–75% of all sequenced genomes in the first wave) until June 1st.
- However, the phylogenetically inferred introductions from the USA suggest that these were not as successful as the introductions that happened in early March: the only transmission lineages with > 20 viral genomes of US origin arrived before March 15th (Fig. 2C).
- Similarly, the 72–76% inferred introductions that gave rise to small transmission lineages of less than 3 sampled genomes, could each represent transmission lineages of up to 40 cases.
- Independent introductions of PANGO lineages with the derived G allele gave rise to a mean transmission lineage size of 6.6 cases, compared to 3.4 for the ancestral D allele; however, this difference is not statistically significant (Additional file 1: Figure S9).

## Materials and Methods



|                 | Murall et al. (2021)                                        |
| --------------- | ----------------------------------------------------------- |
| Sequences       | 15,722                                                      |
| Subsampling     | Canadian: All<br>Global: Proximity + group_by country,month | 
| Sampling Period | 2020 Feb 15 - 2020 June 1                                   |
| Tree Estimation | ML (IQTREE)                                                 |
| Clock Model     | ML (TreeTime), Bayes (BEAST)                                |
| ASR             | ML (ape), MP (mvSLOUCH)                                     |
| Transmission    | R (custom)                                                  |

ASR: Ancestral State Reconstruction
ML: Maximum-Likelihood
MP: Maximum Parsimony