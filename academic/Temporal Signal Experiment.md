---
aliases:
  - Temporal Signal Experiment
tags:
  - 📝/🌱
status: idea

---

# Temporal Signal Experiment

1. Does _[[Yersinia pestis|Y. pestis]]_ have any temporal signal?
1. Why or why not?
1. What are the ramifications for phylodynamics analyses? 

---

Three concepts help to explore this.

1. Mutation vs. Substitutions
1. The phylodynamic threshold.
3. Time dependency of molecular rate estimates.

---

### 1. Mutations vs. Substitutions

Single nucleotide polymorphisms (SNPs) continuously emerge by <u>mutation</u>. These mutations occur at a high frequency, but are often short-lived in a single organism and are subsequently purged from the population. Alternatively, a mutation may spread throughout the population by genetic drift or natural selection and become a fixed <u>substitution</u>.

<u>Substitutions</u> are a central focus of phylogenetic analysis, which seeks to model the <u>relative rate</u> at which different substitutions occur. When additional temporal information is known, such as a sample's collection date, phylodynamic methods can add additional nuance by estimating the <u>absolute rate</u> of change, often in units of years. For example, the substitution rate of _[[Yersinia pestis|Y. pestis]]_ has been calculated to range from 1 x 10<sup>-8</sup> to 2 x 10<sup>-8</sup> subs/site/year, [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]] or 1 substitution every 10-25 years (4 million sites).

### 2. The Phylodynamic Threshold

Amongst bacterial pathogens, this is one of the slowest rates observed [[Duchene 2016 Genome-scale Rates Evolutionary|[@duchene2016GenomescaleRatesEvolutionary]]]. It means that _[[Y. pestis]]_ lineages often cannot be differentiated until several decades have passed. The question of how much time must pass before sufficient molecular change occurs is referred to as the [[Phylodynamic Threshold]] [[Duchene 2020 Temporal Signal Phylodynamic\|[@duchene2020TemporalSignalPhylodynamic]]]. In SARS-CoV-2, this threshold was crossed within 2 months after the global pandemic began, owing to its relatively faster substitution rate 1.1 x 10<sup>-3</sup> subs/site/year, or 1 substitutions every 2 weeks (28000 sites). Thus phylodynamic resolution and accuracy are highly dependent on the estimated substitution rates.

### 3. Time Dependency

In whole-genome sequencing, it is common to capture both fixed <u>substitutions</u> in the population and transient <u>mutations</u> found in a single isolate. It can be challenging to distinguish these variants, and the variable influence of <u>mutations</u> has led to disparate rate estimates between studies. In particular, rates estimated from samples collected over a small number of generations are proportionately higher than long-term studies, a phenomenon referred to as the [[Time Dependency of Molecular Rate Estimates\|time dependency of molecular rate estimates]] [[Ho 2005 Time Dependency Molecular\|[@ho2005TimeDependencyMolecular]]]. As the sampling-time frame increases, the effect of spurious mutations diminishes and the estimated [[rate of change]] stablizes to the slower [[Substitution Rate|substitution rate]].

As an organism with an extremely slow substitution rate, phylodynamic analyses of *[[Yersinia pestis|Y. pestis]]* have been particularly impacted by this [[time dependency]].  There is considerable debate over whether _[[Yersinia pestis|Y. pestis]]_ has absolutely no temporal signal [[Wagner et al. 2014 Yersinia Pestis Plague|[@wagner2014YersiniaPestisPlague]]], or if sub-populations have such distinct rates that a species-wide signal is obscured [[Spyrou 2019 Phylogeography Second Plague|[@spyrou2019PhylogeographySecondPlague;]] [[Duchene 2016 Genome-scale Rates Evolutionary|@duchene2016GenomescaleRatesEvolutionary]]]. This uncertainty has produced radically different temporal models between studies, with divergence dates shifted by thousands of years [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Rasmussen 2015 Early Divergent Strains\|@rasmussen2015EarlyDivergentStrains]]].

### Hypothesis

My hypothesis is that the observed rate variation is a produce of the three concepts mentioned above. 

1. **Transient Mutations**:
The phylogeny of _[[Yersinia pestis|Y. pestis]]_ is characterized by numerous strains with long external branch lengths. Primarily found in two populations, the *pestoides* biovar [[0.PE]] and *medievalis* biovar [[2.MED]]. These long branches are consistently associated with a relative increased in transversions (decreased TsTv ratio). This may be due to "biological" variations in the wild isolate, or sequencing error.
2. **Adaptive Substitutions**:
Several clades have an increased proportion of non-synonmous substitutions (ns / ss). This is associated with laboratory adaptation (vaccine lineage EV) and environmental change 



### 3 Time Dependency


---

- This can easily be over-powered/obscured by the mutation rate. Mutations can spuriously occur through a variety of mechanisms [[Ho 2005 Time Dependency Molecular\|[@ho2005TimeDependencyMolecular]]], 2 of which are relevant here:
- **Spurious Mutation**. Present only one in a single isolate. Would otherwise be purified/not fixed as a substitution in the population. Manifests as long external branches, and is associated with increased transversions (decreased TsTv ratio). May be "true" variation in a wild isolate or an artifact due to sequencing error.
4. **Adaptive Mutation**. Present in lineages that have undergone a substantial change in environment. Results in an increase in non-synonymous changes. The most dramatic examples Examples include laboratory adaptation (vaccine linaege EV). Also, the European Second Pandemic lineage [[1.PRE]] compared to the African [[1.ANT]].

2. Why do only the Ancient samples have temporal signal in previous studies?
	- Access to the raw sequence data = more control in filtering out sequencing error.
	- Long sampling time frame ()
- Most genome sequences (N=) were sampled from 1950-2010

- TsTv Changes:
	- Decrease in singletons (long terminal branches).
	- Decrease in EV vaccine lineage.
	- Increase in Harbin/Nicholisk

- ns/ss Changes:
	- Increase in EV vaccine lineages.

- EV = more transversions, more non-synonmous.