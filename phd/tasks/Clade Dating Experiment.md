---
project:
due: 2021-04-30
people:
tags: #⬜/🧨  
status: priority
title: Clade Dating Experiment
type: [[Task]]
---

# Clade Dating Experiment

## Problem

The estimates of [[Clade|clade]] [[MRCA]] are tool old. For example, [[1.ORI]]:

![[1.ORI Phylogeny 78e77f1a.png]]

The [[terminal branches]] are tool long.

## Objectives

Are the [[internal node]] dates 'better' when modelling using the full tree, or just a clade.

```bash
lsd2 \
	-i {input.tree} \
	-s ${{constant_sites}} \
	-o {params.prefix} \
	-f 100 \
	-l '-1' \
	-q 0.2 \
	-r k \
	-d {output.dates} \
	-g {output.outgroups} \
	-G > {output.log};
```