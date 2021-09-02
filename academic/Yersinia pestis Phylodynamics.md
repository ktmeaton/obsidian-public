---
aliases:
  - [[Yersinia pestis Phylodynamics]]
tags:
  - 📝/🌱
status: idea

---

# _Yersinia pestis_ Phylodynamics

## Rate Variation: Biological Trait or Methodological Artifact?

Previous work has documented substantial rate variation both between and within populations of *[[Yersinia pestis|Y. pestis]]* [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]]. We therefore began by testing if this characteristic was still present in our updated genomic dataset, which is notably larger and more diverse than those used in previous studies. 

Given this expanded diversity, it is unsurprising that a [[Root to Tip Regression|root-to-tip regression]] on collection date reproduces the finding that substitution rates in *[[Yersinia pestis|Y. pestis]]* are poorly represented by a simple linear model (ie. strict clock) (Figure @fig:rtt). While there is a statistically significant positive relationship between date and genetic distance (P-value=4.959 x 10<sup>-13</sup>), an extremely low [[Coefficient of Determination\|coefficient of determination]] (R<sup>2</sup>=0.09) indicates there is tremendous variation that is not accounted for. 

The rate variation observed in _Y. pestis_ (Figure @fig:rtt) presents a curious case of the [[Time Dependency of Molecular Rate Estimates|time dependency of molecular rates]] [[Ho 2005 Time Dependency Molecular\|[@ho2005TimeDependencyMolecular]]]. Rate variation correlates with the sampling time frame, in which populations sampled over several millennia (`[[0.PRE]]`), have less variation than those sampled over centuries (`[[1.PRE]]`), or only a few decades (`[[2.MED]]`). We identify four inter-related mechanisms that drive the observed patterns of rate variation in _[[Yersinia pestis|Y. pestis]]_:

1. A slow, long-term [[Substitution Rate|substitution rate]].
2. A high, short-term [[mutation rate]].
3. Methodological artifacts.
7. Population-specific rate variation.

## Mechanisms of Rate Variation

### Slow, Long-Term [[Substitution Rate|Substitution Rate]]

The [[substitution rate]] of _[[Yersinia pestis|Y. pestis]]_ has previously been estimated to range from 1 x 10<sup>-8</sup> to 2 x 10<sup>-8</sup> subs/site/year, [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]] or 1 substitution every 10-25 years. Amongst bacterial pathogens, this is one of the slowest rates observed [[Duchene 2016 Genome-scale Rates Evolutionary|[@duchene2016GenomescaleRatesEvolutionary]]] and means that  _[[Y. pestis]]_ lineages often cannot be differentiated until several decades have passed. This question of how much time must pass before sufficient molecular change occurs is referred to as the [[phylodynamic threshold]] [[Duchene 2020 Temporal Signal Phylodynamic\|[@duchene2020TemporalSignalPhylodynamic]]]. 

In application, we can see this in the finding that isolates from population `[[1.PRE]]` dated to the medieval [[Black Death]] (1348-1353) are indistinguishable clones, whereas those from subsequent centuries are phylogenetically distinct (Figure @fig:rtt). This highlights a significant limitation of _[[Yersinia pestis|Y. pestis]]_ phylogenetics, as comparisons over short time scale (<10 years) have limited resolution and can be easily biased by noisy [[mutations]].

![ Rate variation in _Yersinia pestis_ using root-to-tip regression.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/c997bec/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt.png){#fig:rtt width=100%}

### High, Short-Term Mutation Rate  {.page_break_before}

Since it can take decades for a [[substitution]] to become fixed in _[[Yersinia pestis|Y. pestis]]_ populations, rate estimates are highly susceptible to the influence of transient [[mutations]]. In whole-genome sequencing, it is common to capture both fixed [[substitutions]] in the population and transient [[mutations]] found in a single isolate. These singleton mutations manifest as long external branches, and may arise from "true" biological variation, particularly when a population is experiencing exponential growth and is sparsely sampled, or from methodological "artifacts" due to sequencing error. 

The global phylogeny of _[[Yersinia pestis|Y. pestis]]_ is heavily impacted by these transient mutations or long external branches. While these outliers are found ubiquitously throughout the phylogeny, several populations are disproportionately affected including *orientalis* (`[[1.ORI]]`), *pestoides* (`[[0.PE]]`),  *medievalis* (`[[2.MED]]`), and *intermedius* (`[[1.IN]]`) (Table @tbl:outliers). Given the extensive presence of these apparent outliers, inclusion or exclusion of these samples may have profound impacts on the models used to estimate population sizes, molecular clocks, and migration events.

| Population | Samples | Outliers | % Outliers |
|:----------:|:-------:|:--------:|:----------:|
|   1.ORI    |   116   |    37    |     32     |
|    1.IN    |   39    |    3     |     8      |
|   1.ANT    |    4    |    0     |     0      |
|   1.PRE    |   40    |    0     |     0      |
|   2.MED    |   116   |    11    |     9      |
|   2.ANT    |   54    |    3     |     6      |
|   4.ANT    |   11    |    0     |     0      |
|   3.ANT    |   11    |    0     |     0      |
|   0.ANT4   |   12    |    0     |     0      |
|   0.ANT    |   103   |    1     |     1      |
|    0.PE    |   86    |    20    |     23     |
|   0.PRE    |    8    |    0     |     0      |

Table: Long branch outliers across _Y. pestis_ populations. {#tbl:outliers width=50%}

### Methodological Artifacts {.page_break_before}

One way to separate out these conflicting signals is by identifying deviant mutation patterns. Notably, we observe a correlation between branch length and extreme values of the transition to transversion ratio (TsTv) (Figure @fig:tstv). As low TsTv ratios have previously been associated with false positive variants [[Indap 2013 Variant Discovery Targeted\|[@indap2013VariantDiscoveryTargeted]]], we hypothesize these outliers represent methodological artifacts.

![ Long external branches in the global _[[Yersinia pestis|Y. pestis]]_ phylogeny are associated with extreme TsTv ratios.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/0739ac9/main/auspice/all/chromosome/full/filter5/ml/divtree_tstv.png){#fig:tstv width=60%}

### Population-Specific Rate Variation

To Be Done!

## Consequences  {.page_break_before}

> 1. **A species-wide molecular clock analysis is highly unstable. **
> - The MCMC shows poor mixing and fails to converge at an estimate for key model parameters such as the mean substitution rate.
> - Eliminating tip-date uncertainty and fixing the tree topology do not improve the model.

> 2. **Analyzing populations in isolation stabilizes the molecular clock analysis.** 
> - Temporal signal detected in 9/12 populations.
> - Good mixing and convergence.

> 3. **Populations with long branch outliers have higher mean substitution rates.**
> - The rates of `[[0.PE]]`, `[[2.MED]]`, `[[1.ORI]]`, and `[[1.IN]]` are "artificially" inflated by samples with false-positive variants. tMRCA estimates for these populations will be too young!
> - Populations without false positive samples have overlapping estimates of the mean substitution rate and standard deviation.
> - Mean substitution rate ranges from 3 x 10<sup>-8</sup> to 8 x 10<sup>-8</sup>.

![ Mean substitution rate and standard deviation.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/bd0b9da/main/beast/all/chromosome/clade/log/meanRate_stdev.png){#fig:tstv width=60%}

> 4. **The mean substitution rate of _Y. pestis_ has been considerably under-estimated.** 
> - Previously thought to be 1x10<sup>-8</sup>. No population is observed to have a rate that slow.
> - tMRCA estimates based on this rate will be too old!

> 5. **Removing long branch outliers drastically changes phylogeography patterns. ** 
> - Filtering out long branches recovers a statistically significant pattern of isolation-by-distance (IBD) for almost all populations!

![ Isolation by distance of `[[2.MED]]` before and after long-branch filtering.](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/b15235e4b4f09d83959e2cdb7f2d2bfa329633a3/main_filter/iqtree_stats/all/chromosome/full/filter5/mantel_comparison_2.MED.png){#fig:tstv width=60%}


## References  {.page_break_before}