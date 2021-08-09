---
aliases:
  - Eager Tutorial
tags:
  - 📝/🌱
status: idea

---

# nf-core/eager Tutorial


## Overview

```mermaid
graph LR; 

1-->2; 
2-->3;
3-->4;
4-->5;
5-->6;


1[FastQC];
2[AdapterRemoval]
3[BWA];
4[Samtools];
5[MarkDuplicates]
6[Preseq]

```



## Prerequisites

- [[conda]]
- [[mamba]] (`conda install mamba`)

## Install

### Option 1: Laptop
1. Download the tutorial repository from GitHub.
	```bash
	git clone https://github.com/ktmeaton/nf-core_eager_tutorial.git
	cd nf-core_eager_tutorial
	```

1. Otherwise, install the pipeline to your computer by creating a conda environment (very slow, go grab a coffee ☕)
	```bash
	mamba env create -f envs/environment.yml
	```

### Option 2: Infoserv

1. The tutorial data and pipeline already installed. Navigate to the tutorial directory:
	```bash
	cd /home/poinarlab/Projects/nf-core_eager_tutorial/
	```

## Test

### Setup

1. Activate the conda environment.
	```bash
	conda activate nf-core-eager-2.2.1
	```
1. Create a directory to store the pipeline output
	```bash
	mkdir -p test;
	```
1. Save the FastQ files to a variable
	```bash
	files=`find $PWD/data -name "*.fastq.gz" | tr "\n" " "`;
	files=${files:0:-1};
	echo $files;
	```
1. Create a metadata file for all samples and their paths.
	```bash
	python3 scripts/eager_tsv.py \
	  --organism "Yersinia pestis" \
	  --tsv test/metadata.tsv \
	  --files "$files"
	 ```
1. Inspect the metadata file. 
	 ```
	column -s $'\t' -t test/metadata.tsv | less -S
	```
1. Configure Java Memory (4 GB).
	```bash
	export NXF_OPTS='-Xms50m -Xmx4000m';
	```

### Run
1. Navigate to the output directory.
	```bash
	cd test/
	```
1. Run the test pipeline.
	```bash
	nextflow \
		-c ../config/infoserv.config \
		run nf-core/eager \
		-r 2.2.1 \
		-profile standard \
		--igenomes_ignore \
		-with-report report.html \
		--input metadata.tsv \
		--outdir . \
		--fasta ../reference/GCA_000009065.1_ASM906v1_genomic.fna \
		--clip_readlength 35 \
		--mergedonly \
		--preserve5p \
		--mapper bwaaln \
		--bwaalnn 0.01 \
		--bwaalnl 16 \
		--run_bam_filtering \
		--bam_mapping_quality_threshold 30 \
		--max_cpus 2 \
		--max_memory 4000.MB \
		--max_time 600m \
		-resume | tee screen.log;
	```
1. Cleanup
```bash
../scripts/eager_cleanup.sh {results_dir} {wildcards.reads_origin} {wildcards.sample};
```


3. Parameter explanation.
	```yaml
	- c: ../config/infoserv.config
		- A file that contains the system configuration (memory, cpu, etc.)
	- run: nf-core/eager
		- The name of the nf-core pipeline we want to run (ie. eager)
	- r: 2.2.1
		- The version of the pipeline we want to run.
	- profile: standard
		- How should nextflow find all the programs? In standard, we have installed them ourselves.
	--igenomes_ignore:
		- igenomes are a collection of online reference genomes. They are not used so we ignore them.
	-with-report: report.html
		- Create a summary report of the run.
	--input: metadata.tsv
		- The metadata file that lists what the samples are and where to find them.
	--outdir: .
		- Directory where the output should be stored.
	--fasta: ../reference/GCA_000009065.1_ASM906v1_genomic.fna
		- Reference genome to align to.
	--clip_readlength: 35
		- Minimum fragment length of 35 bp.
	--mergedonly:
		- For paired-end libraries, only keep reads that have been successfully merged.
	--preserve5p:
		- Don't do quality trimming of read ends.
	--mapper: bwaaln
		- Align using the bwa aln algorithm.
	--bwaalnn: 0.01
		- Configure the 'n' sub-parameter of bwa.
	--bwaalnl: 16	
		- Configure the 'l' sub-parameter of bwa.
	--run_bam_filtering
		- Enable filter the output bams for mapping quality.
	--bam_mapping_quality_threshold: 30
		- Filter using a mapping quality of 30.
	--max_cpus: 2
		- At most, use 2 CPUS.
	--max_memory: 4000.MB
		- At most, use 4000 MB (4 GB) of memory.
	--max_time: 600m	
		- At most, run for 600 minutes (6 hours).
	 -resume:
	 	- If this pipelinew as previously run, just reume, don't re-run all steps.
	```

## Customize