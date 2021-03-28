---
aliases:
  - Kalkauskas et al. 2021
  - '@kalkauskas2021SamplingBiasModel'
---

# Kalkauskas et al. 2021 Sampling Bias Model

| Field   | Value                                                                                       |
| ------- | ------------------------------------------------------------------------------------------- |
| Title   | Sampling bias and model choice in continuous phylogeography. Getting lost on a random walk. | 
| Year    | 2021                                                                                        |
| Authors | Kalkauskas et al.                                                                           |
| DOI     | <https://doi.org/10.1371/journal.pcbi.1008561>                                              |
| bibtex  | kalkauskas2021SamplingBiasModel                                                             |

## Summary
- The authors demonstrate how [[Sampling Bias|sampling bias]] is severely detrimental to [[Phylogeography|phylogeographic]] models of [[Pathogen|pathogen]] spread. They show that the inclusion of [[Sequence-Free]] samples significantly alleviates [[Sampling Bias]]. However, this approach depends on knowing the [[full extent of an organism's spatial distribution]].
- This is extremely exciting for two reasons:
	- Provides a statistical argument for the importance of [[Interdisciplinary]] work, and the dangers of not doing so (in agreement with [[Faria et al. 2018 Genomic Epidemiological Monitoring|Faria et al. 2018]]). Thus supplying a strong motivation to purse this work.
	- Provides an explicit methodological framework for the integration of [[Interdisciplinary|interdisciplinary]] datasets, in the form of [[Sequence-Free]] data being added to [[Genome|genomic]] analyses.
- The [[Sequence-Free]] approach is cited to [[Edwards et al. 2011]] and [[Duchene et al. 2019]]. An important question is how many [[Sequence-Free|sequence-free]] samples do you need? They tested 100 sequence samples, and 20 sequence-free was sufficient (as compared to 40, 60, or 80)
- [[Phylogeography]] reconstructions using a [[Brownian-Motion]] model are strongly affected by [[Sampling Bias]], such as [[Under-represented|undersampling]] of certain areas.
- The spatial [[Λ-Fleming-Viot]] process (ΛFV) is more appropriate for scenarios of [[Endemic]] [[Spread]], and BMP is more appropriate for recent outbreaks or colonizations.
- The authors have helpful advice regarding whether to choose [[discrete trait|discrete]] analysis or [[continuous trait|continuous analysis]]. [[discrete trait|Discrete]] is either out of necessity (only country is known) and/or spread is hindered by geographical or political barriers. [[continuous trait|Continuous]] is appropriate when [[latitude]] and [[longitude]] are known, and [[Spread|spread]] is geographically homogenous over an area (ie. continent.)

## Notes

- I'm not certain that how many [[Sequence-Free]] samples to include is entirely numerical.
## Figures

|    Fig 4                                       |
|:--------------------------------------------:|
| ![[kalkauskas2021SamplingBiasModel_fig4.png]] |
| [(Top) Maximum Clade Credibility tree of West Nile Virus in the western and eastern USA. (Bottom) MRCA location of all western samples. (Blue: All samples, Red: Only western samples, Orange: western samples and sequence-free eastern samples ).](Kalkauskas%20et%20al.%202021%20Sampling%20Bias%20Model.md) |

|    Fig 4b                                       |
|:--------------------------------------------:|
| ![[../images/kalkauskas2021SamplingBiasModel_fig4b.png]] |
| [MRCA location of all western samples. (Blue: All samples, Red: Only western samples, Orange: western samples and sequence-free eastern samples ).](Kalkauskas%20et%20al.%202021%20Sampling%20Bias%20Model.md) |

## Notes

---

tags: 
  - #📥/📰 
  - #🟨