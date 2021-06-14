---
title: [[Heterozygosity Experiment]]
project: [[Plague Denmark]]
aliases:
  - Heterozygosity Experiment
date: June 14, 2021
due: June 14, 2021
tags: ⬜/✨
status: done
type: 
  - [[Task]]
  - [[Experiment]]
---

# Heterozygosity Experiment

| Field   | Value              |
| ------- | ------------------ |
| Project | [[Plague Denmark]] |
| Date    | [[2021-06-14]]     | 

---

## Objectives

> **1. Why do Denmark samples have high counts of heterozygosity?**
> 
> Conclusions:
> - Sites flagged as heterozygous by [[Snippy\|snippy core]] primarily have a low genotype quality.
> - Low quality can occur because the [[Alternate Allele]] has low counts.
> - One explanation is DNA damage (ex. deamination of cytosines).


> **2. How does this compare to other [[Second Pandemic]] samples?**
> 
> Conclusions:
> - All [[Denmark\|Danish]] samples have more homozygous sites than heterozygous sites
> - The number of heterozygous sites in Danish samples is equal to or less than other Second Pandemic samples.

<div style="page-break-after: always;"></div>
---
## Results

Two characteristics are being investigated:

1. Are there more [[Heterozygous]] variants than [[Homozygous]] variants?
	- A [[Haploid\|haploid]] organism (ie. plague) is expected to have more [[Homozygous]] variants.
	- More [[Heterozygous]] variants may indicate molecules from multiple strains/species.
2. Are the distributions of depth similar between homozygous and heterozygous sites? (peak and spread)
	- A similar distribution depth may indicate the molecules derive from a singular source.

### Baseline

A selection of samples from the [[Second Pandemic]].

- The number of [[Heterozygous]] sites reported by Snippy (in this table) is erroneous. This number includes low quality variants which should not be considered 'true' [[Heterozygous\|heterozygosity]].
- Note that the number of [[Heterozygous]] SNPs is not proportional to the mean coverage (put a pin in this thought).

![[MultiQC Heterozygosity Second Pandemic.png]]

- Because, the [[Heterozygous\|heterozygosity]] counts in the previous table are uninformative, [[Homozygous]] and [[Heterozygous]] sites were extracted directly from the [[snippy]] pairwise alignments.
- Two samples are visualized here to show the true number of homo/het sites is very small (ie. not in the 1000s).
- Black Death 8291 is an example of a GOOD sample.
- STN021.A is an example of a SUSPICIOUS sample.

<div style="page-break-after: always;"></div>

| Sample           | Homo | Het | Homo/Het | Graph                                                                                                                                                                  |
| ---------------- | ---- | --- | -------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Black Death 8291 | 105  | 64  | 1.64     | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/68ec667/denmark/heterozygosity/SAMN00715800.homo_het.png) |
| STN021.A         | 159  | 247 | 0.64     | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a3edd35/denmark/heterozygosity/SAMEA5818830.homo_het.png) |

<div style="page-break-after: always;"></div>

### [[Denmark]] Samples

- Note that the number of [[Heterozygous]] SNPs (ie. low quality variants) is proportional to the mean coverage in [[Denmark\|Danish]] samples. It is unclear why.

![[MultiQC Heterozygosity Denmark.png]]

- All the [[Denmark]] samples have higher counts of homozygous sites and similar distributions to the heterozygous sites.
- All samples are categorized as GOOD.

| Sample | Homo | Het | Graph                                                                                                                                                          |
| ------ | ---- | --- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| D51    | 132  | 32  | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a3edd35/denmark/heterozygosity/D51.homo_het.jpg)  |
| D62    | 59   | 15  | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a3edd35/denmark/heterozygosity/D62.homo_het.jpg)  |
| D71    | 119  | 39  | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a3edd35/denmark/heterozygosity/D71.homo_het.jpg)  |
| D72    | 121  | 17  | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a3edd35/denmark/heterozygosity/D72.homo_het.jpg)  |
| D75    | 158  | 31  | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a3edd35/denmark/heterozygosity/D75.homo_het.jpg)  |
| P187   | 112  | 31  | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a3edd35/denmark/heterozygosity/P187.homo_het.jpg) |
| P212   | 112  | 35  | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a3edd35/denmark/heterozygosity/P212.homo_het.jpg) |
| P387   | 110  | 36  | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a3edd35/denmark/heterozygosity/P387.homo_het.jpg) |
| R36    | 115  | 45  | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/a3edd35/denmark/heterozygosity/R36.homo_het.jpg)  |

<div style="page-break-after: always;"></div>

---
## Methods

### Variant Calling (Pairwise)

```bash
snippy \
  --prefix SAMPLE \
  --reference GCA_000009065.1_ASM906v1_genomic.fna \
  --outdir SAMPLE \
  --bam SAMPLE.bam \
  --mapqual 30 \
  --mincov 3 \
  --minfrac 0.9 \
  --basequal 20 \
  --force \
  --cpus 10 \
  --report 2> SAMPLE.log; \
```

- Multiqc was run on the output directories of [[Snippy]] for all samples.

### Plot Site Distributions

```bash
head -n `awk 'END{print NR - 1}' results/snippy_multi/all/snippy-multi.txt` results/snippy_multi/all/snippy-multi.txt  | tail -n+2  | cut -f 1 | while read sample; 
do 
  in_vcf=`ls results/snippy_pairwise/*/$sample/${sample}.raw.vcf`;
  homo=${in_vcf%%.*}.homo.txt;
  het=${in_vcf%%.*}.het.txt;
  echo $sample;
  bcftools query -i 'TYPE="snp" & GT="1/1" & QUAL>=100' -f '%DP\n' $in_vcf | sort -h > $homo;
  bcftools query -i 'TYPE="snp" & GT="0/1" & QUAL>=100' -f '%DP\n' $in_vcf | sort -h > $het;
  /home/poinarlab/Projects/Plague/Denmark/scripts/plot_homo_het.py \
    --homo $homo \
    --het $het; 
done

mkdir results/heterozygosity
mv results/snippy_pairwise/{local,sra}/*/*.png results/heterozygosity/
```