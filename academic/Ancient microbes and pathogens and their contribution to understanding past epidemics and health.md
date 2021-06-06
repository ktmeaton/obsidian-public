---
title: Ancient microbes and pathogens and their contribution to understanding past epidemics and health
date: 2021-06-04
---

# Ancient microbes and pathogens and their contribution to understanding past epidemics and health

## [[Towards an Understanding of the Early History of the Second Plague Pandemic]]

Speaker: [[Maria Spyrou]]

### Summary

> 1. An extraordinary site (Kara-Djigach) near Lake Issyk-Kul, Kyrgyzstan has a high number of burial tombstones with inscriptions dating to 1338-1339. There is historical evidence of a 'pestilence' at this time, but it has long been debated whether this was plague (*[[Yersinia pestis|Y. pestis]]*).
> 1. After shotgun metagenomic screening, 3 individuals were plague positive. After in-solution capture, the genome coverages were 0.1X, 2.6X, and 6.9X. The data from the two highest coverage samples was combined.
> 1. Phylogenetically, the Kara-Djigach genome falls EXACTLY at the [[Big Bang Polytomy]]. Suggesting this isolate is the ancestor of *[[Yersinia pestis|Y. pestis]]* branches 1,2,3 and 4.
> 1. From this new data, the [[Big Bang Polytomy]] is estimated to have occurred in the first half of the 14th century.
> 1. All lineages that precede the [[Big Bang Polytomy]] (0.ANT) derive from the Tian Shan mountains (Kyrgyzstan and China) where marmots are the main reservoir host. The Kara-Djigach epidemic may possibly have been a local emergence from these rodent reservoirs.
> 1. This genome suggests a link between a Central Asian plague epidemic (1338-1339 CE) followed by westward spread to Europe(1346).

### Notes

#### Hypotheses on the Black Death sources

- East Asia
- Eastern Eurasia Steppe
-  Central Asia
-  Caucasus/Caspion Region

All are associated with some evidence, difficult to favor one over the other.

#### Sampling Bias

- Since most of the Second Pandemic [[Yersinia pestis|Y. pestis]] genomes come from Europe, they have not told us much about the origins of the Second Pandemic.
- Similarly, historical research focuses on Europe.

#### Sites

- Around Lake Issykul:
	- Kara-Djigach, Burana: Chosen because they're association with the Second Plague pandemic has been debated for over 100 years.
	- Early/late(?) 19th century excavations (1886?): high number of burial tombstones, dated to 1338-1339. Contain inscriptions stating individuals died of a pestilence.
	- Early archaeological finds have been displaced or lost.
	- [[Philip Slavin]] is the collaborator on the excavations identifying relevant records and remains.

#### Kara-Djigach

- Tombstones span a 100-year period, 30% of those are dated 1338-1339, confirming a spike in mortality.
- Majority of these burials are in a special region "Chapel 1".

#### aDNA Methods

1. Shotgun metagenomic screening, using MALT / HOPS / EAGER.
1. Evaluated by edit distance and terminal damage.
1. Identified 3 individuals with potential ancient Y. pestis DNA (Graves 9, 19, 28), all dated to the epidemic year.
1. [[Yersinia pestis|Y. pestis]] in-solution capture producing genomes at 0.1X, 2.6X, and 6.9X depth coverage.
1. Low-coverage genome is estimated to be a true positive based on the metagenomic analysis.
1. For the analysis, combined the 2 high coverage genomes.

#### Phylogenetics

1. The genome from Kara-Djigach falls EXACTLY on the [[Big Bang Polytomy]].
1. Timing for this event is variable difficult to narrow down. Historical evidence has proposed it actually occurred 100 years prior to the black Death.

#### Dating

1. Big Bang Polytomy Dates to the first half of the 14th century.

THe history of branches 2,3,4 are not as well known. Obvious next target for future aDNA studies.

#### Geography

All isolation locations of the clade dating prior to the Big Bang Polytomy (0.ANT) area around Tian Shan Mountains (Kyrgystan). Since Marmots are the hosts in this reason, think that the Kara-Djigach emergence was due to them.

#### Implications

- Help narrow down time-frame and source of Second Plague Pandemic
- Link between Central Asian plague epidemic (1338-1339 CE) and European Second Plague Pandemic (1346?)
- Kara-Djigach is the ancestor of the diversification event, giving rising to Branches 1-4
- Possible westward dispersal of plague between 1338 and 1346.





## [[Insights into the genomic evolution of Yersinia pestis through comparative pangenomics and de novo assembly]].

Speaker: [[Aida Andrades Valtuena]]

### Summary

- Unprecedented continuous assembly for ancient Y. pestis
- First annotated Y. pestis assembly
- Reproduced the structural variant identified by Maria/Marcel
- De novo is possible, even with short fragments, but high coverage needed!
- 
### Notes

- Bronze Age Plague does not show genomic evidence of flea-adaptation.
- Everything else does (acquisition of ymt, pseudogenization of PDE2, PDE3, rcsA and ureD genes)
- Can you de novo assemble an ancient Y pestis genome
- Selected BED030 (Spyrou 2019) which has exceptional preservation, mean fragment lenght of 102 bp.
- This genome was missing a big chunk of its genome. Are there any other structural variants?
- Began with simulated data, using varying coverage (gargammel) 100X, 200X, 300X coverage of chromosome. Varying read lengths, damage, and kmers.
- Result: 200X coverage is best, SPAdes was best in terms of genomic coverage fraction, largest alignments. Even with read lengths of 65, was able to recover 50% of the genome with 34 fragments.
- So, deep sequenced BED030 to a mean fold coverage of 157.56X . Reconstructed the chromosome with two scaffolds, and 1 each for the plasmids.
- Performed genome annotation


