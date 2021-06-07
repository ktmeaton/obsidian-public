---
title: 1000 Plagues in the Genomics Age
subtitle: New insights from the global phylogeny of *[[Yersinia pestis]]*
title-img: "https://rawcdn.githack.com/ktmeaton/plague-phylogeography/e74d7b0d732023d109e1abbefde3305eae589ebd/docs/images/thumbnail_DHSI2020.png"
author: 
  - [[Katherine Eaton]], [[Hendrik Poinar]], [[Sebastian Duchene]], [[Leo Featherstone]]
authors:
  - name: [[Katherine Eaton]]
    github: ktmeaton
    orcid: 0000-0001-6862-7756
    affiliations: [[[McMaster Ancient DNA Center]], [[McMaster University]], [[Department of Anthropology]], [[McMaster University]]]
venue: "Poinar Lab Meeting"
progress: true
slideNumber: true
slideLevel: 3
tags:
  - 📝/🌱
  - ⬜/🧨 
status: priority
type: [[Slides]]
due: 2021-06-08
time: 11:00
date: 08 June 2021
toc: false
compile-revealjs: "conda activate pandoc && pandoc/convert_wikilinks.py --input '2021-06-08 Poinar Lab Meeting.md' --output '2021-06-08 Poinar Lab Meeting_convert.md' && pandoc --standalone -o '2021-06-08 Poinar Lab Meeting.html' -t revealjs --slide-level 3 --template pandoc/templates/revealjs-obsidian/template.html --css pandoc/templates/revealjs-obsidian/simple.css --filter pandoc-crossref --citeproc --bibliography pandoc/bib/library.bib --csl pandoc/csl/apa.csl '2021-06-08 Poinar Lab Meeting_convert.md' && rm '2021-06-08 Poinar Lab Meeting_convert.md';" 
---

### Molecular Clock Models

<hr>

- *"When did a past evolutionary event happen?"*
- A molecular clock model estimates the rate at which DNA sequences change.
- Rate estimate + Phylogeny = Node Dating

![
Phylogeographic relationships of American mastodons [[Karpinski 2020 American Mastodon Mitochondrial\|[@karpinski2020AmericanMastodonMitochondrial]]]
](https://rawcdn.githack.com/ktmeaton/obsidian-public/f2b616d9/academic/karpinski2020AmericanMastodonMitochondrial_fig1.png){#fig:phylogeography_mastodon height=400px}


### Does plague have temporal signal?

<hr>

It's highly debated whether plague (*[[Yersinia pestis]]*) has detectable temporal signal.

> *"It's complicated."*
>  - [[Cui 2013 Historical Variations Mutation\|@cui2013HistoricalVariationsMutation]]

>*"Hard No."* 
> - [[Wagner et al. 2014 Yersinia Pestis Plague|@wagner2014YersiniaPestisPlague]]

>*"Sometimes?"* 
>- [[Duchene 2016 Genome-scale Rates Evolutionary|[@duchene2016GenomescaleRatesEvolutionary]]]

>*"Maybe the [[Second Pandemic]] does?"* 
>- [[Spyrou 2019 Phylogeography Second Plague\|@spyrou2019PhylogeographySecondPlague]]

### Let's Revive the Debate!

<hr>

#### Data Collection

1. Downloaded metadata for 1657 *[[Yersinia pestis|Y. pestis]]* genome sequencing projects.
1. Reviewed the original publications to curate collection <u>location</u>, <u>date</u> and <u>host</u>.
1. Downloaded the curated sequence data for <u>600 genomes</u>.

<hr>

#### Phylogeny

1. Constructed a multiple sequence alignment of the *[[Yersinia pestis|Y. pestis]]* chromosome (~4 MB).
1. Estimated a maximum likelihood phylogeny.
1. Test for temporal signal, using a variety of methods.

|                                                                                                                                        |                                                                                                                                     |
|:--------------------------------------------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------------------------------------------:|
| ![[[Sebastian Duchene]].](https://rawcdn.githack.com/ktmeaton/obsidian-public/f2b616d90/academic/Sebastian_Duchene_Picture.png){#fig:sebastian_duchene width=150px} | ![[[Leo Featherstone]].](https://rawcdn.githack.com/ktmeaton/obsidian-public/f2b616d90/academic/Leo_Featherstone_Picture.png){#fig:leo_featherstone width=150px} |
|                                                         [[Sebastian Duchene]]                                                          |                                                        [[Leo Featherstone]]                                                         |

### Global Phylogeny

<hr>

![
The maximum-likelihood phylogeny depicts the global population structure of *[[Yersinia pestis\|Y. pestis]]*.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a6bac2d/main/auspice/all/chromosome/full/filter5/divtree.svg){#fig:divtree_branch-major width=800px}

### Phylodynamics

<hr> 

What's the best method to estimate a molecular clock model?

> #### 1. Sequential [[dellicour2020PhylodynamicWorkflowRapidly\|[@dellicour2020PhylodynamicWorkflowRapidly]]]<br>
> - First estimate a phylogeny then the clock model.
> - IQTREE, TreeTime, LSD2

| Pros                   | Cons                                   |
| ---------------------- | -------------------------------------- |
| Handles large datasets | Dependent on phylogeny being 'correct' |
| Super fast             | Struggles with relaxed clock models    | 

> #### 2. Joint [[Duchene 2020 Bayesian Evaluation Temporal\|[@duchene2020BayesianEvaluationTemporal]]]<br>
> - Estimate a phylogeny and clock model simultaneously.
> - BEAST, specifically, BETS.

| Pros                             | Cons                        |
| -------------------------------- | --------------------------- |
| Wide variety of models available | Can't handle large datasets |
| Not dependent on input tree      | Slow                        |


### Sequential (N=600)

<hr> 

- All terminal branches are long.
- Large number of polytomies.
- Divergences are <u>*older*</u> than expected.

<hr>

![
The time-scaled phylogeny of the modern pandemic clade [[1.ORI]].
](C:\Users\ktmea\Projects\plague-phylogeography-projects\main\auspice\all\chromosome\full\filter5\1.ORI_timetree_ml.svg){#fig:1.ORI_tree_ml height=400px}


### Sequential (N=191)

<hr> 

- The MCMC analysis does not converge when estimating parameters of the clock model.
- The MCMC trace shows poor mixing throughout the run.

<hr>

![MCMC parameter estimation of the mean substitution rate. Left: Poor chain mixing, Right: Multimodal distribution of the rate.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/c12ba4b/main/beast/all/chromosome/prune/filter5/mean_rate_trace_kde.png){#fig:mean_rate_trace_kde}

### What To Do?  {data-transition="none" }

<hr> 

- Visually inspected the [[Root to Tip Regression|root-to-tip regression]] to look for patterns.

<hr> 

![
[[Root to Tip Regression|Root-to-tip regression]] on sampling date.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a6bac2d1ee21c4cccd22860aa2156741c1e3a8d1/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt_all_plain.svg){#fig:rtt_all_plain width=800px}

### What To Do?  {data-transition="none" }

<hr> 

- Several clades appear to have their own linear models.

<hr> 

![
[[Root to Tip Regression|Root-to-tip regression]] on sampling date by clade.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a6bac2d/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt_all_branch_major.svg){#fig:rtt_all_branch_major width=800px}

### Joint (N=600, split by clade)

<hr> 

- <u>*7 out of 12 clades*</u> (46% of samples) have temporal signal using a relaxed clock.
- The remaining clades have no detectable temporal signal.

<hr>

|   Clade    | *N* | Bayes Factor |                    Temporal Signal | Substitution Rate      |
|:----------:| --- |:------------:| ----------------------------------:| ---------------------- |
| [[1.ORI]]  | 117 |     35.7     | <font color="green">**Yes**</font> | 1.29 x 10<sup>-7</sup> |
|  [[1.IN]]  | 39  |    -10.2     |        <font color="red">No</font> | --                     |
| [[1.ANT]]  | 4   |     12.6     | <font color="green">**Yes**</font> | 6.48 x 10<sup>-8</sup> |
| [[1.PRE]]  | 40  |     44.1     | <font color="green">**Yes**</font> | 4.77 x 10<sup>-8</sup> |
| [[2.MED]]  | 116 |      --      |        <font color="red">No</font> | --                     |
| [[2.ANT]]  | 54  |    -13.7     |        <font color="red">No</font> | --                     |
| [[4.ANT]]  | 11  |     3.7      | <font color="green">**Yes**</font> | 9.38 x 10<sup>-8</sup> |
| [[3.ANT]]  | 11  |    -11.4     |        <font color="red">No</font> | --                     |
| [[0.ANT]]  | 103 |     -6.5     |        <font color="red">No</font> | --                     |
| [[0.ANT4]] | 12  |     5.9      | <font color="green">**Yes**</font> | 3.51 x 10<sup>-8</sup> |
|  [[0.PE]]  | 83  |     12.4     | <font color="green">**Yes**</font> | 6.10 x 10<sup>-7</sup> |
| [[0.PRE]]  | 8   |     83.0     | <font color="green">**Yes**</font> | 5.23 x 10<sup>-8</sup> |

Table:  [[Bayesian Evaluation of Temporal Signal]] (BETS) statistics. {#tbl:bets_statistics}


### Sequential vs. Joint

<hr> 

![Left: Sequential method (ML) timetree using a single model. Right: Joint method (Bayesian) timetree using clade-specific models](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a6bac2d1/main/auspice/all/chromosome/full/filter5/1.ORI_timetree_ml_beast.svg){#fig:beast_vs_ml width=900px}

### Conclusions

> #### 1. Fitting a single clock model to all of *[[Yersinia pestis|Y. pestis]]* is not statistically supported.

<small>The [[MCMC]] analyses are relatively unstable and fail to converge in parameter space.</small>

> #### 2. *[[Yersinia pestis|Y. pestis]]* has much more temporal signal than previously thought.

<small>Separating alignments by clade recovers robust temporal signal.</small>

> #### 3. The true substitution rate of *[[Yersinia pestis|Y. pestis]]* is much higher than previously thought.

<small> Prior rate estimates were 2 x 10<sup>-8</sup>. This study finds it ranges from 3 x 10<sup>-8</sup> to 6 x 10<sup>-7</sup>.</small>
	
	
> #### 4. [[Root to Tip Regression|Root-to-tip regression]] is a poor statistical test of temporal signal.


### Don't Trust the RTT

Even in clades with seemingly good strict-clock like behavior!

![
[[Root to Tip Regression|Root-to-tip regression]] for clade [[1.PRE]].
](https://rawcdn.githack.com/ktmeaton/obsidian-public/f2b616d9/academic/1.PRE%20RTT.png){#fig:rtt_PRE height=400px}


### What's Next

![
The maximum-likelihood phylogeny showing clades with temporal signal.
](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a6bac2d/main/auspice/all/chromosome/full/filter5/divtree_temporal_signal.svg){#fig:divtree_temporal_signal width=800px}

## References

