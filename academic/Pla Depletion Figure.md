---
project:
due: 2021-10-15
people: [[Ravneet Sidhu]]
tags: 🧨
status: priority
title: Pla Depletion Figure
type: [[Task]]
---

# Pla Depletion Figure

Reference header sequences:

/home/ravneet/Reference_Genomes/WG_Neg_Rs/WG_andNeg.fasta
If you want to do the phylogeny, with SNP annotation, will need the gbff file.
AL590842.1

## Gap-bridging reads and major allele frequency (MAF)
![[Whiteboard[2]-01.png]]

1. [ ] Create a bed file of the target regions.


GBR pla Negative plasmid - 6315bp-6560bp
```bed
PlaNeg	6314	6560
AL109969.1	6430	8530
```
  
  ```bash
  
  /home/poinarlab/Projects/Plague/PlaDepletion/Mapping/SecondPan_BothPCP/SAMEA6637002_WG_andNeg.min24MQ30.bam
  ```

 pPCP1 region - 6430bp-8530bp
 
 ```bash
samtools tview \
  /2/scratch/keaton/plague-phylogeography/results/eager/local/R36/final_bams/R36.bam \
  /2/scratch/keaton/plague-phylogeography/results/data/reference/GCA_000009065.1_ASM906v1_genomic/GCA_000009065.1_ASM906v1_genomic.fna
 ```

- Coverage dip 6150-6200, 8800-8940, 7600-7630

## 2. Ratio Distribution

## Data

