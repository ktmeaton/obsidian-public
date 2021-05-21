---
project:
due: 2021-04-18
people:
tags: ⬜/✨  
status: done
type: [[Task]]
aliases:
  - Analyze First BEAST1 Run
---

# Analyze First BEAST1 Run

## Tasks

```dataview
task from "tasks"
where contains(file.name, "Analyze First BEAST Run.")
```

## Runs

### 1. Ultrametric

```bash
beast -threads 10 -beagle -seed 463178460 beast.xml | tee beast.screenlog
```


- 10,006 lines = 10,000,000 log states
- 10395 lines = 10,000,000 tree states

```bash
head -n 10006 beast.log > beast_10M.log
head -n 10395 beast.trees > beast_10M.trees
treeannotator -burnin 1000 -hpd2D 0.95 beast_10M.trees beast_10M_mcc_hpd95.nex
```

- \* Lots of disjoint HPD

- The MCC tree is ultrametric :( I think I do need to input dates.

```bash
/mnt/c/Users/ktmea/Projects/BEAST2-Phylogeography/convert-spread3/convert-spread3.sh
```

If I don't use tip dates, the tree becomes ultrametric
![[Unknown Phylogeny.png|500]]

### Tip Dates 10M

Using tip dates does seem to be promising in the test tree.

![[Unknown Phylogeny 2.png|500]]

```bash
cat main/snippy_multi/all/chromosome/prune/snippy-multi.constant_sites.txt

1108245,997240,1008295,1105069
```

```xml
<!-- The unique patterns from 1 to end                                       -->
<!-- npatterns=4209
<patterns id="patterns" from="1" strip="false">
	<alignment idref="alignment"/>
</patterns>
-->
<mergePatterns id="patterns">
	<patterns from="1" every="1">
		<alignment idref="alignment"/>
	</patterns>

	<constantPatterns>
		<alignment idref="alignment"/>
		<counts>
			<parameter value="1108245 997240 1008295 1105069"/>
		</counts>
	</constantPatterns>
</mergePatterns>
```

```xml
<rescaledTree id="startingTree">
	<newick usingDates="true">
		...
	</newick>
</rescaledTree>		

<newick id="startingTree" usingDates="true">
	...
</newick>
```

- 1e-7 is the lowest I can start the prior for [[ucld.mean]].

```bash
beast -threads 10 -beagle -seed 463178460 beast.xml | tee beast.screenlog
```

- 0.11 hours/million states
- 10 million states = 1.1 hours
- 
```bash
treeannotator -burnin 1000000 -hpd2D 0.95 beast.trees beast_mcc_hpd95.nex
treeannotator -burnin 1000000 -hpd2D 0.80 beast.trees beast_mcc_hpd80.nex
```

1. [x] Check tree in [[FigTree]].
	![[Unknown Phylogeny 3.png|300]]
1. Check log in [[Tracer]].

	- The substitution model is well-sampled.
| [[meanRate]] Estimate                     | [[meanRate]] Trace                        |
| ----------------------------------------- | ----------------------------------------- |
| ![[BEAST Tracer Histogram.png\|500]] | ![[BEAST Tracer Trace 1.png\|300]] |

	- The geography model is not well-sampled.
	
| [[ucld.mean]] Estimate                    | [[ucld.mean]] Trace                       |
| ----------------------------------------- | ----------------------------------------- |
| ![[BEAST Tracer Histogram 2.png\|500]] | ![[BEAST Tracer Trace 2.png\|300]] |

1. Check geography in [[spreaD3]].

### Tip Dates 100M

```bash
beast -threads 10 -beagle -seed 648754524 beast.xml | tee beast.screenlog
```

```bash
treeannotator -burnin 10000000 -hpd2D 0.95 beast.trees beast_mcc-hpd95.nex
```

- [ ] [[Email BEAST Log to Emil]]

[[What does the rate mean?]]. Rather than reporting sub/site/year, how about years/1 substitution. Years to accumulate one substitution.

```yaml
genome-length = 4,200,000
rate: 1e-8
```

## spreaD3

### Style

```yaml
points:
  - internal
  - tip (branch)
lines:
  - UFboot for threshold?
polygon
  - branch
```