---
title:
  - Meet With Australia
project: [[plague-phylogeography]]
people:
  - [[Sebastian Duchene]]
  - [[Leo Featherstone]]
  - [[Hendrik Poinar]]
tags:
  - ⬜/🧨 
status: priority  
type: [[Meeting]]
due: 2021-05-06
time: 18:00
---

# Meet With Australia

## [[2021-05-06]]

[Meeting Link]()

## [[2021-04-26]]

[Meeting Link](https://us02web.zoom.us/j/84583403662?pwd=OWZpbVhmMVhLc1hJOGd0aVFEZEJRZz09)

### Preparation

#### 1. Datasets
1. Constructed two datasets based on samples that have [[Geographic Location]] and [[Date]]:
	- Full (n=600)
	- Reduced (n=200)

#### 2. [[Clock Model]]

##### Regression

![[rtt_all 3.png|500]]

![[rtt_clades 1.png]]
	
##### Node Dating

![[dating_1.PRE.png|700]]

#### 3. [[Phylogeography]]	

![[ibd_all 3.png]]

##### [[Discrete]]

<iframe id="igraph" scrolling="no" style="border:none;" seamless="seamless" src="https://rawcdn.githack.com/ktmeaton/plague-phylogeography/337baaf80e5e1f356737e46bb0bf8afb2f164fd8/workflow/scripts/arc_diagram.html" height="600px" width=900px ></iframe>

##### [[Continuous]]

1. Experimented with [[Continuous|continuous]] [[Phylogeography|phylogeography]] in [[BEAST2]].

![[spreaD3 All.png]]


### Notes

- Set up different priors on the mean rate
- No good mixing for the relaxed clock, for many of the parameters
- High values for the coefficient of variation (high rate variation)
- Fitting the rate variation to a model is really hard!	
- Strict clock: Setting different priors ends up the with similar/overlapping distributions. Not sensitive to prior!
- How do rates differ between strict and relaxed? Very different!
- Root heights differ (20,000 - 8,000 YBP)
- Need to make a lot of assumptions 

### Tasks
- [x] [[Send Starting Tree to Australia]]
- [x] [[Create Multiple Alignments by Clade]]
- [x] [[tasks/Send IBD Plots]]
- 
- Dating by clade (BETS analysis).
- Relative branch rates (genetic distance, 
- Relaxed clock, fit rate to 1, for phylogeography
- Visualized as a matrix
- Leave one out analysis


- BETS -> 	Leave One Out 
