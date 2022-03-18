---
# Bibliography
title: "Identifying SARS-CoV-2 Regional Introductions and Transmission Clusters in Real Time"
authors: 
  - Jakob McBroome
  - Jennifer Martin
  - Adriano de Bernardi Schneider
  - Yatish Turakhia
  - Russell Corbett-Detig
date: "2022"
aliases: 
  - "McBroome et al. 2022"
  - "McBroome et al. (2022)"
  - "@mcbroome2022IdentifyingSARSCoV2Regional"
bibtex: "mcbroome2022IdentifyingSARSCoV2Regional"
doi: "10.1101/2022.01.07.22268918"
url: "https://www.medrxiv.org/content/10.1101/2022.01.07.22268918v1"

# Obsidian
type: Literature
tags: 
  - 📰
  - Border
---

# McBroome et al. (2022) Identifying SARS-CoV-2 Regional Introductions and Transmission Clusters in Real Time


## Summary

**Problem:** 
- Many existing methods for phylogenetic analysis are designed for sparse, static datasets and are too computationally expensive to apply to densely sampled, rapidly expanding datasets when results are needed immediately to inform public health action.

**Solution:** 
- We present a phylogenetic summary statistic which quickly and efficiently identifies newly introduced strains in a region, resulting clusters of infected individuals, and their putative geographic origins.
- We also introduce Cluster Tracker (https://clustertracker.gi.ucsc.edu/), a novel
interactive web-based tool to facilitate effective and intuitive SARS-CoV-2 geographic data
exploration and visualization.

### Seldon

> Automatically created by [`seldon`](https://github.com/ktmeaton/seldon).

- When multiple regions are included, origins of putative clusters can be identified after introduction points are found by examining index scores across all other regions for the origin node and noting the region with the highest index.

- A cluster is a set of closely-related samples from the same region and descended from a common ancestor with a regional introduction event.

- The true number of introductions into a given region is likely to be substantially larger because many small clusters will not be sampled by ongoing viral surveillance efforts, but major local transmission clusters should be represented.

- We performed this analysis twice- once including all samples in their tree from any region and once excluding samples from the USA in their tree that were excluded from their clusters.

## Materials and Methods

|                   | McBroome et al. (2021) |
| ----------------- | ---------------------- |
| Region            | USA                    |
| Sequences         | 5,563,847              |
| Subsampling       | None                   |
| Sampling End Date | 2021 Nov 28            |
| Tree Estimation   | MP (UShER)             |
| Clock Model       | None                   |
| ASR               | Heuristic (matUtils)   | 
| Transmission      | MP (matUtils)          |

## Index Example

Li = 1
Di  = 1

Do = 1
Di = 1

## Notes

- **Regional Transmission Event** | A child node is from a different region than the parent node.
- **Cluster** | A set of closely-related samples from the same region and descended from a common ancestor with a regional introduction event
- **Regional Index** | A weighted summary of the composition of descendants of a node of a phylogenetic tree, roughly corresponding to our intuition that the virus represented by that node was inside or outside a specific area.
	> ![[Regional Index Formula.png]]
	> D<sub>i</sub>: total branch length to the nearest leaf which is in that region. 
	> L<sub>i</sub>: number of downstream leaves that are in a given region.
	> L<sub>o</sub> and D<sub>o</sub> are the same for out-of-region leaves.


- The method will perform best when within-region transmission is substantially more common than between-region transmission (as in e.g., country-level or state-level analyses).
	
## Reproduce

1. Replicate a published phylogeographic analysis for the [[COVID-19|SARS-CoV-2 pandemic]].
2. [[@alpert2021EarlyIntroductionsTransmission|Alpert et al. (2021)]] used [[BEAST|Bayesian]] [[Phylogeography|phylogeography]] to identify 23 distinct introductions of
[[B.1.1.7]] into the [[United States]] as of [[2020-04-04|March 4th 2020]]. 
3. Obtain their subsampled tree and applied our heuristic using country labels to define the relevant regions. 
4. We exactly replicated their identified clusters . 
5. [[@alpert2021EarlyIntroductionsTransmission|Alpert et al. (2021)]] additionally predicted “sink” states, or the state to which each of the 23 introductions initially transmitted. 
6. We find that for all 23 clusters, samples in the identified sink state are closest or
tied for closest in branch length to our inferred introduction point. 
7. Our approach can produce results congruent with more complex statistical models in a fraction of
the time.


**Code**: <https://github.com/jmcbroome/cluster-heuristic/tree/main/alpert-replication>

```yaml
input:
  url: https://github.com/jmcbroome/cluster-heuristic/raw/main/alpert-replication/CT-SARS-CoV-2_paper5.json
  
```


## Output

Input:
	- Phylogeny where the branch lengths are number of mutations.
	- Auspice json file.

1. How many introduction events have there been into a region?
2. Where did this introduction originate from?
3. What level of community transmission did this lead to? (cluster_size)
4. How fast did this cluster grow? (clutser_size normalized by sampling time frame)
5. What mutations did this migration introduce into the region?
6. Which node on the phylogeny did the introduction occur?
	- Link to border sample.

## Conclusions

Good news, I think the McBroome 2022 paper/method is exactly what we're looking for!

### What questions can this method answer?
1. How many introduction events have there been into a region?
1. Where did this introduction originate from?
1. How much community transmission did this introduce lead to?
1. How fast did this community transmission grow?
1. What new mutations did this introduce into the region?
1. Was this introduction associated with a border sample?

### Input
1\. A metadata table that at minimum, maps sample IDs to collection region.
2a. A phylogenetic tree where branch lengths are scaled in number of mutations.
2b. OR. An auspice JSON file!

### Method
1. Convert Auspice JSON to MAT ("mutation annotated tree"): (`auspice_json_to_mat.py`)
1. Estimate introduction events: (`matUtils introduce ...`)

### Output
- A statistics rich `tsv` file. Each row is a sample. The columns are statistics relating to putative introduction events, community transmission, confidence values, etc.
- Filtering/visualizing this `tsv` file will produce answers to questions 1-6.