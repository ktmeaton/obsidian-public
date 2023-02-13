---
# Bibliography
title: "Metagenome Analysis Using the Kraken Software Suite"
authors: 
  - Jennifer Lu
  - Natalia Rincon
  - Derrick E. Wood
  - Florian P. Breitwieser
  - Christopher Pockrandt
  - Ben Langmead
  - Steven L. Salzberg
  - Martin Steinegger
date: "2022"
aliases: 
  - "Lu et al. 2022"
  - "Lu et al. (2022)"
  - "@lu2022MetagenomeAnalysisUsing"
bibtex: "lu2022MetagenomeAnalysisUsing"
doi: "10.1038/s41596-022-00738-y"
url: "https://rdcu.be/cWGju"

# Obsidian
tags: 📰
project: "[[Kraken Database Validation]]"
status: idea
---

# Lu et al. (2022) Metagenome Analysis Using the Kraken Software Suite

## Summary

> Automatically created by [`seldon`](https://github.com/ktmeaton/seldon).

- Required data
	- The example corneal reads, microbiome fecal reads and Kraken 2 database for use in this protocol are available from NCBI SRA and Amazon AWS
	- The microbiome analysis portion of this protocol is illustrated with a sample microbiome dataset of fecal samples from Taur et al.8.
- For details on how to download the SRA samples, see https://www.ncbi.nlm.nih.gov/sra/docs/sradownload/. Box 1 lists the SRA accession IDs for each of the samples used in the Kraken microbiome analysis procedure and the Kraken pathogen identiﬁcation procedure.
- Pathogen identiﬁcation studies conceptually include the following steps: (1) removal of host DNA from the microbial reads; (2) classiﬁcation of the remaining microbial reads; (3) comparison of sample reads against control samples; and (4) validation of pathogen classiﬁcations.
- Table 1 | Classiﬁcation read counts from fecal samples using the minikraken database Sample SRA ID Total reads Unclassiﬁed reads Unclassiﬁed (%)
- Table 3 | Classiﬁcation read counts from corneal samples using the minikraken database Sample Total reads Unclassiﬁed reads Unclassiﬁed (%)