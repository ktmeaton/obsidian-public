---
project:
due: 2021-08-16
people:
tags: ✨
status: done
title: Email Ravneet
type: [[Task]]
---

# Email Ravneet

Hi Ravneet,

I'm currently transferring my plague database to the poinarlab account. Here is an overview of the database so far:

```yaml
* means the transfer is still in-progress

main-directory: /2/scratch/poinarlab/plague-phylogeography/results
sub-directories:
    - config: snakemake pipeline configuration files.
	- sqlite_db: SQLITE database of sample metadata.
	- metadata:
		- all:
			- metadata.tsv: Tab-delimited sample metadata.
	- data:
		- assembly: Assembled genomes, fasta format.
		- reference: Reference genome CO92 and annotations.
		- sra*: Raw sequencing data, fastq.gz format.
	- eager:
		- sra*: nf-core/eager output for SRA samples.		
	- snippy_pairwise:
		- assembly: Snippy pairwise output for assembled genomes.
		- sra*: Snippy pairwise output for SRA samples.
	- qualimap:
		- assembly: Output of qualimap for assembled genomes, quality filtered bams and statistics.
		- sra*: Output of qualimap for SRA samples, quality filtered bams and statistics.
	
```

