---
# Bibliography
title: "Mutation Profile of SARS-CoV-2 Genome in a Sample from the First Year of the Pandemic in Colombia"
authors: 
  - Jubby Marcela Gálvez
  - Henry Mauricio Chaparro-Solano
  - Ángela María Pinzón-Rondón
  - Ludwig L. Albornoz
  - Juan Mauricio Pardo-Oviedo
  - Fabio Andrés Zapata-Gómez
  - Andrés Felipe Patiño-Aldana
  - Andrea del Pila Hernández-Rodríguez
  - Mateo Díaz-Quiroz
  - Ángela María Ruiz-Sternberg
date: "2022"
aliases: 
  - "Galvez et al. 2022"
  - "Galvez et al. (2022)"
  - "@galvez2022MutationProfileSARSCoV2"
  - "pyro-cov"
bibtex: "galvez2022MutationProfileSARSCoV2"
doi: "10.1016/j.meegid.2021.105192"
url: "https://www.sciencedirect.com/science/article/pii/S1567134821004925"

# Obsidian
type: Literature
tags: 
  - 📰
  - Mutation Surveillance
  - Mutation Profile
---

# Gálvez et al. (2022) Mutation Profile of SARS-CoV-2 Genome in a Sample from the First Year of the Pandemic in Colombia

## Summary

- We also found that the model would have provided early warning of the rise of VoCs, had it been routinely applied to available [[SARS-CoV-2]] data.

- Performing a mutation-based analysis of lineage prevalence has the additional advantage of identifying specific genetic determinants of a lineage’s phenotype, which is critically important both for predicting the phenotype of new lineages and for understanding the biology of transmission and pathogenesis.

- The [[COVID-19|SARS-CoV-2 pandemic]] has already been dominated by several genetic changes of functional and epidemiological importance, including the spike (S) [[D614G]] mutation that has made SARS-CoV-2 more transmissible ([@korber2020SpikeEvidenceD614G|Korber et al. (2020)]], [[@yurkovetskiy2020StructuralFunctionalAnalysis]]) and is associated with higher viral loads. 

- In addition, mutations found in [[Variant of Concern]] (VoC) lineages, such as [[S:N439R]], [[S:N501Y]], and [[S:E484K]], have been linked, respectively, to increased transmissibility(7), enhanced binding to ACE2(8) and antibody escape (9, 10). 

- Identifying functionally important mutations is challenging, however, against the large background of genetic variants with little or no phenotypic consequence.

- [[@galvez2022MutationProfileSARSCoV2|pyro-cov]] avoids the complexity of full phylogenetic inference by first clustering genomes by their [[Pangolin|PANGO Lineages]] and then estimating the incremental effect on growth rate of each of the most common amino acid changes on the lineages in which they appear.

- The trained model can be used to infer lineage growth rates, predict the growth rate of completely new lineages, forecast future lineage proportions, and estimate the effects of individual mutations on transmissibility.



> Automatically created by [`seldon`](https://github.com/ktmeaton/seldon).

- Nevertheless, when corrected by gene length, the  mutation rate per kb was higher in ORF8 (202.07 mutations per kb),  followed by N (115.64 mutations per kb), while the lowest rate was found in the ORF1ab gene (51.48 mutations per kb) (Table 1).

- When corrected for mutations per kb, ORF8 and N genes had the highest rate of mutations (202.1 and 115.6 mutations  per kb, respectively), while S and ORF1ab genes had the lowest (58.3  and 51.5 mutations per kb, respectively).

- Interestingly, we found several LoF mutations (both nonsense and frameshift) as well as a loss of initiation codon mutation that compromises the functional domains of the  ORF8 protein, even when corrected for mutations per kb (Supplementary Material Table 1).

- Hereby we inform 30 PANGO lineages found in 386 [[SARS-CoV-2]]  sequences, including 14 newly reported [[SARS-CoV-2 Seminar 03 PANGO Lineages|PANGO Lineages]] circulating in Colombia, 13 of which are also newly reported in [[South America]] as reviewed by June 5, 2021 (https://github.com/cov-lineages/pangolin).

- With the arrival of [[SARS-CoV-2]], this  scenario slightly changed, although available information remains  scarce and, in countries such as [[Colombia]], [[Brazil]], [[Argentina]], and [[Chile]],  genomic information of [[SARS-CoV-2]] is obtained mainly by research groups in genomic epidemiology rather than by public health surveillance policy or programs.


## Notes

### Mutation Types

- Mutation Type:
	- Missense (53.6%)
	- Synonymous (37.4%)
	- Frameshift | [[Loss of Function|Lof]] (2.73%)
	- Nonsense | [[Loss of Function|LoF]] (1.51%)
- Mutation Location:
	- ORF1ab gene (63.9%)
	- S gene (12.9%)
	- ...
	- ORF10 (0.64%)
- Mutation Rate:
	- ORF8 gene (202.07 muts / kb)
	- N gene (115.64 muts / kb)
	- ...
	- ORF1ab gene (51.48 muts / kb)
- Other types that I ([[Katherine Eaton]]) am interested in:
	- Ts/Tv
	- dn/ds

## [[Mutational Fitness]]

- [[Mutational Fitness]] as used in [[NextStrain]]/[[obsidian-public/academic/Auspice]]/[[Augur]] originates from the [[@galvez2022MutationProfileSARSCoV2|pyro-cov]] model.