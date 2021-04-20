---
project: [[plague-phylogeography]]
due: 2021-04-13
people:
  - [[Sebastian Duchene]]
  - [[Leo Featherstone]]
  - [[Hendrik Poinar]]
tags: ⬜/🧨 
status: priority
type: [[Task]]
---

# Construct New Datasets

I've been struggling with this task for a few reasons.

1. Alignment filtering. I can filter alignments to include or remove singleton variants (occurring in only one sample).
	- For: Dramatically cleans up the temporal signal.
	- Against: Excludes uniquely derived mutations, which may be of interest.

> Hi Everyone,
>
>I'm stumped on a question regarding multiple alignments that I could use your input on. Should singleton sites (occurring only in one sample) be remove or excluded? 
>
>  Keep: Singleton sites are informative for ML/Bayesian methods. And we are often interested in uniquely derived mutations in a clade.
>  Remove: Removing singleton sites seems to dramatically clean up temporal signal. 
>  
>  When singletons are present, there are a large number of long terminal branches. These seem to push node dates much earlier than expected (compared to other studies).
>
> My instinct is that singleton sites should be kept, 
>
> Cheers,
> Kat

## [[Reduce]]

How can I reduce the number of tips? I want to maximize:
- Geographic Diversity (Country)
- Temporal Diversity (Date)

I want to reduce:
- Long terminal branches

```yaml
- branch:
  - country:
    - date:
	  - snp-dist: min
```

## Dataset

```bash
  - aln.fasta: lsd.filter.aln
  - tree.nex: beast.nex
  - dates.txt: beast.dates.txt
  - latlon.txt: beast.latlon.txt
  - contant-sites.txt: snippy-multi.constant_sites.txt
```

## Root To Tip Regression