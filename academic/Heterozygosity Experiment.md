---
title: [[Heterozygosity Experiment]]
project: [[Plague Denmark]]
aliases:
  - Heterozygosity Experiment
date: 2021-06-12
due: 2021-06-14
tags: ⬜/🧨 
status: priority
type: 
  - [[Task]]
  - [[Experiment]]
---

# Heterozygosity Experiment

| Field   | Value              |
| ------- | ------------------ |
| Project | [[Plague Denmark]] |
| Date    | [[2021-06-12]]     | 

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
> - The number of heterozygous sites in Danish samples is comparable, or less than, other Second Pandemic samples.
> - The distribution of homozygous and heterozygous is similar on a per sample basis.


---
## Outline

```mermaid
graph LR;

1 --> 2;
1 --> 3b;
2 --> 3a;
3a --> 4;

1[Snippy Pairwise];
2[Snippy Multi];
3a[Sites Summary];
3b[Sites Investigation];
4[Plot Distributions];


style 1 fill:#1f77b4,stroke:#333,stroke-width:1px,color:white,fill-opacity:1.0;
style 2 fill:#ff7f0e,stroke:#333,stroke-width:1px,fill-opacity:1.0,color:white
style 3a fill:#2ca02c,stroke:#333,stroke-width:1px,fill-opacity:1.0,color:white
style 3b fill:#2ca02c,stroke:#333,stroke-width:1px,fill-opacity:1.0,color:white
style 4 fill:#9467bd,stroke:#333,stroke-width:1px,fill-opacity:1.0,color:white
```


---
## Results

Two characteristics are being investigated:

1. Are there more homozygous sites than heterozygous sites?
2. Are the distributions of depth similar between homozygous and heterozygous sites? (ie. peak and spread)

### Baseline

| Sample           | Status | Graph                                                                                                                                                                   |
| ---------------- | ------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Black Death 8291 | Good   | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/eb0c2caee55d9270e0f8f2fa9f9efc01beedd379/denmark/heterozygosity/SAMN00715800.homo_het.jpg)  |
| STN021.A         | Bad    | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/eb0c2caee55d9270e0f8f2fa9f9efc01beedd379/denmark/heterozygosity/SAMEA5818830.homo_het.jpg) |


### [[Denmark]] Samples

| Sample | Status | Graph                                                                                                                                                          |
| ------ | ------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| D51    | Good   | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/eb0c2caee55d9270e0f8f2fa9f9efc01beedd379/denmark/heterozygosity/D51.homo_het.jpg)  |
| D62    | Good   | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/eb0c2caee55d9270e0f8f2fa9f9efc01beedd379/denmark/heterozygosity/D62.homo_het.jpg)  |
| D71    | Good   | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/eb0c2caee55d9270e0f8f2fa9f9efc01beedd379/denmark/heterozygosity/D71.homo_het.jpg)  |
| D72    | Good   | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/eb0c2caee55d9270e0f8f2fa9f9efc01beedd379/denmark/heterozygosity/D72.homo_het.jpg)  |
| D75    | Good   | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/eb0c2caee55d9270e0f8f2fa9f9efc01beedd379/denmark/heterozygosity/D75.homo_het.jpg)  |
| P187   | Good   | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/eb0c2caee55d9270e0f8f2fa9f9efc01beedd379/denmark/heterozygosity/P187.homo_het.jpg) |
| P212   | Good   | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/eb0c2caee55d9270e0f8f2fa9f9efc01beedd379/denmark/heterozygosity/P212.homo_het.jpg) |
| P387   | Good   | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/eb0c2caee55d9270e0f8f2fa9f9efc01beedd379/denmark/heterozygosity/P387.homo_het.jpg) |
| R36    | Good   | ![\|400](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/eb0c2caee55d9270e0f8f2fa9f9efc01beedd379/denmark/heterozygosity/R36.homo_het.jpg)  |



---
## Methods

### Variant Calling

> Should snippy_multi be added to multiqc inputs?

```bash
snakemake snippy_multi_filter_all -np --profile profiles/infoserv
snakemake multiqc_all -np --profile profiles/infoserv
```

### Sites Summary

```bash

awk -F "\t" '{
if (NR==1){print $0"\tALIGNED_PERC\tVARIANT_PERC\tHET_PERC"} 
else{
  len=$2;
  aln=$3; 
  var=$5;  
  het=$6;
  aln_perc = (aln / len) * 100;
  var_perc = (var / len) * 100;
  het_perc = (het / len) * 100;
  print $0"\t"aln_perc"\t"var_perc"\t"het_perc}}' main/snippy_multi/all/snippy-multi.txt | column -t | less -S
```


```bash
awk -F "\t" '{
if (NR==1){print $0"\tALIGNED_PERC\tVARIANT_PERC\tHET_PERC"} 
else{
  len=$2;
  aln=$3; 
  var=$5;  
  het=$6;
  aln_perc = (aln / len) * 100;
  var_perc = (var / len) * 100;
  het_perc = (het / len) * 100;
  print $0"\t"aln_perc"\t"var_perc"\t"het_perc}}' snippy/snippy_multi/All_Samples_2021_0526/raw.txt | column -t | less -S
```

###  Extract Sites

How many SNPs in 8291 (SAMN00715800)? 

```bash
bcftools query -i 'TYPE="snp"' -f '%CHROM\t%POS\t%REF\t%ALT\t%QUAL\t%DP\t%AO\t[%GT]\n' SAMN00715800.raw.vcf | wc -l
1687
```

How many high quality homozygous SNPs?

```bash
bcftools query -i 'TYPE="snp" & GT="1/1" & QUAL>=100' -f '%CHROM\t%POS\t%REF\t%ALT\t%QUAL\t%DP\t%AO\t[%GT]\n' SAMN00715800.raw.vcf | wc -l
105
```

How many high quality heterozygous SNPs?

```bash
bcftools query -i 'TYPE="snp" & GT="0/1" & QUAL>=100' -f '%CHROM\t%POS\t%REF\t%ALT\t%QUAL\t%DP\t%AO\t[%GT]\n' SAMN00715800.raw.vcf | wc -l
64
```

### Summarize and Plot

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
mv results/snippy_pairwise/{sra,local}/*/*.jpg results/heterozygosity/
```


---
## Conclusions



---

tags: [[Experiment]], #📝/🌱