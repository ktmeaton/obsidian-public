---
# Bibliography
title: "CoVizu: Rapid Analysis and Visualization of the Global Diversity of SARS-CoV-2 Genomes"
authors: 
  - "[[Roux-Cil Ferreira]]"
  - "[[Emmanuel Wong]]"
  - "[[Gopi Gugan]]"
  - "[[Kaitlyn Wade]]"
  - "[[Molly Liu]]"
  - "[[Laura Muñoz Baena]]"
  - "[[Connor Chato]]"
  - "[[Bonnie Lu]]"
  - "[[Abayomi S Olabode]]"
  - "[[Art F Y Poon]]"
date: "2021"
aliases: 
  - "Ferreira et al. 2021"
  - "Ferreira et al. (2021)"
  - "@ferreira2021CoVizuRapidAnalysis"
  - CoVizu
bibtex: "ferreira2021CoVizuRapidAnalysis"
doi: "10.1093/ve/veab092"
url: "https://doi.org/10.1093/ve/veab092"
# Obsidian
type: 
  - "[[Literature]]"
  - "[[Tool]]"
tags: 📰
---

# Ferreira et al. (2021) CoVizu: Rapid Analysis and Visualization of the Global Diversity of SARS-CoV-2 Genomes

## Summary

- CoVizu is an open source project to develop a 'near real time' SARS-CoV-2 genome analysis and visualization system that highlights potential cases of importation from other countries or ongoing community transmission.

> Automatically created by [`seldon`](https://github.com/ktmeaton/seldon).

- For each [[Pangolin]] lineage (https://cov-lineages.org), we collapse genomes with identical features into ‘variants’, generate 100 bootstrap samples of the feature set union to generate weights, and compute the symmetric differences between the weighted feature sets for every pair of variants.
- The search interface comprises a text box for submitting a substring query, which can be matched against [[Pangolin]] lineage names, [[GISAID]] accession numbers, countries, and sample names, and date selection widgets for specifying a range of sample collection dates.
- The resulting trees are visualized using the [[JavaScript]] framework [[D3|D3.js]] as [[Beadplot|beadplots]], in which variants are represented by horizontal line segments, annotated with beads representing samples by collection date.
- This step tends to compress the number of samples by about 38 per cent on average (interquantile range 22–50 per cent), with a small number of variants comprising a disproportionately large number of samples.
- The ‘samples’ interface, on the other hand, displays a sortable table that lists the accession number, name (label), and collection date for every sample associated with the selected element.

## Method

### Metadata Collection and Curation
1. Genomic sequence metadata is sourced from a specialized [[GISAID]] data stream.
1. A sequence is excluded if it:
	- Lacks a Pango lineage assignment
	- Was sampled from a non-human host
	- Was shorter than 29,000 nt
	- Lacks a complete sample collection date (e.g., year and month with no day)
	- Was labeled with a collection date preceding [[2019-12-01| 01 December 2019]] or in the future.

### Pairwise Alignment
1. Sequences passing the filter are pairwise aligned to the [[SARS-CoV-2]] reference genome (GenBank accession NC_045512) using [[minimap2]], version 2.17.
1. Variants are extracted as 'features' and include nucleotide substitutions, insertions, and deletions.
1. Intervals of uncalled bases (missing data) are also recorded.
1. A sequence is excluded if it:
	- Contain over 300 (~1%) uncalled bases.
	- Has an unexpectedly high or low number of features (based on the collection date and rate parameter).
1. Features are masked/excluded if they are:
	- Identified as a [Problematic Site](https://github.com/W-L/ProblematicSites_SARS-CoV2)

### Multiple Alignment

1. For each [[Pangolin]] [lineage](https://github.com/cov-lineages/pango-designation/blob/master/lineages.csv), identify a single representative genome. A sequence is chosen if:
	- Has the earliest collection date.
1. A multiple sequence alignment is constructed, all insertions are excluded.
	> What program?

### Lineage Phylogeny | Time Tree

1. A divergence tree is estimated with [[FastTree]]. 
1. Internal nodes with a parametric bootstrap support below 50 per cent are collapsed into polytomies.
1. A time-tree is estimated using [[TreeTime]], with a clock rate of (8×10−4 substitutions/site/year and retaining polytomies.
1. The final tree is serialized into the Newick tree format with terminal nodes labeled by Pango lineage.
> This tree can be downloaded from the [[@ferreira2021CoVizuRapidAnalysis|CoVizu]] webapp. Example: [[covizu_timetree.nwk]].

### Variant Phylogeny | Clustering

1. The evolutionary relationships within lineages are reconstructed using neighbour-joining.
1. Lineages with 5,000 samples or fewer are processed in a single batch distributed over multiple cores.
1. Lineages with more than 5,000 samples are processed singly, with bootstrap replicates distributed over multiple cores
1. Indel variation is incorporated in this step, but to minimize computation time, a uniform rate is assumed over all possible genetic differences and ignore multiple hits.
1. All genomes with identical feature sets are compressed into a single ‘variant’, which compresses the number of samples by about 38%.
1. For lineages with a high global prevalence (ex. [[Delta Variant]], [[B.1.617.2]]), variants are sorted by collection date, retaining the most recent 5000 samples.
	> How many geographic locations are lost?
1. For each linage, all variants are compared pairwise, to create a distance matrix.
1. A neighbour-joining tree is estimated from this distance matrix, with 100 bootstrap replicates.
	> This tree can be downloaded from the [[@ferreira2021CoVizuRapidAnalysis|CoVizu]] webapp. Example: [[covizu_B.1.1.291.nwk]].
1. These bootstraps are processed and condensed into JSON network (nodes and edges).


> Despite being a fast and approximate approach, the topologies and branch lengths are concordant with maximum-likelihood trees.

### Misc

- Strategies for connections at multiple location.

Single source -> Multiple target
Multiple source -> Single target
Multiple source -> Multiple target

Easiest: collapse to first collected
Majority Vote


##  API

- Browse the available data: `https://filogeneti.ca/CoVizu/data/`
- Timetree of Lineages: `https://filogeneti.ca/CoVizu/data/timetree.nwk`
- Mapping of countries to continents: `https://filogeneti.ca/CoVizu/data/countries.json`
- Clusters: `https://filogeneti.ca/CoVizu/data/clusters.json`


```bash
wget -O data/timetree.nwk https://filogeneti.ca/CoVizu/data/timetree.nwk ; 
wget -O data/clusters.json  https://filogeneti.ca/CoVizu/data/clusters.json ;
wget -O data/dbstats.json https://filogeneti.ca/CoVizu/data/dbstats.json ;
```

### clusters.json

- Each node is a variant. It is named after the representative sequence using the [[GISAID]] ID(?)
- How do you know which lineage this maps to? Probably using the [[Pango Designation]] lineages.csv.
	- It has 620,012 lines (`wc -l covizu/data/pango-designation/lineages.csv`)

```json
[{
  "nodes": {
    "EPI_ISL_7657345": [
      ["2021-01-22", "EPI_ISL_7657345", "hCoV-19/France/BFC-HMN-21112290477/2021"], 
      ["2021-02-09", "EPI_ISL_4352071", "hCoV-19/Spain/MD-HGUGM-5702992/2021"], 
      ["2021-03-09", "EPI_ISL_5113976", "hCoV-19/Slovakia/UVZ_PL40_A10_18443/2021"],
      ["2021-03-09", "EPI_ISL_5113977", "hCoV-19/Slovakia/UVZ_PL40_B10_18444/2021"]
      ...
    ],

```

EPI_ISL_7265456	Canada/ON-NML-255882	2021-11-26