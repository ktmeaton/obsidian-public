---
project: Poinar Lab
due: 2022-02-01
people:
tags: 🧨
status: priority
title: Transfer Plague Database to Poinarlab
type: Task
---

# Transfer Plague Database to Poinarlab

## [[Kat]] | Install Data Collection Pipeline

1. Create an account directory in scratch.
	```bash
	mkdir /2/scratch/poinarlab
	cd /2/scratch/poinarlab
	```
1. Clone the [[plague-phylogeography]] repo (SLOW).
	```bash
	git clone https://github.com/ktmeaton/plague-phylogeography
	cd plague-phylogeography
	```
1. Install the [[plague-phylogeography]] pipeline (EXTRA SLOW).
	```bash
	conda install mamba
	mamba install -c anaconda git
	mamba env create \
	  --file workflow/envs/merge/environment.yaml \
	  --prefix workflow/envs/plague-phylogeography
	```
1. Activate the environment
	```bash
	conda activate workflow/envs/plague-phylogeography
	# OR
	conda activate /2/scratch/poinarlab/plague-phylogeography/workflow/envs/plague-phylogeography
	```
1. Set PERL5LIB.
	```bash
	export PERL5LIB=/2/scratch/poinarlab/plague-phylogeography/workflow/envs/plague-phylogeography/lib/site_perl/5.26.2/:$PERL5LIB
	```
1. Run the Pipeline CI to test.
	```bash
	snakemake help --profile profiles/infoserv
	snakemake all -np --profile profiles/infoserv
	```
1. Remove old config and copy the `main` pipeline configuration for all samples.
	```bash
	workflow/scripts/project_clean.sh results/ rm
	cp -r /2/scratch/keaton/plague-phylogeography-projects/main/config/ results/
	```
1. Create the metadata file.
	```bash
	snakemake metadata_all --profile profiles/infoserv
	```

## [[Kat]] | Transfer Data

### Test

```bash
samples=(`grep "1.PRE" results/metadata/all/metadata.tsv | cut -f 1`);
for sample in ${samples[@]};
do
  echo $sample
  ls -l /2/scratch/keaton/plague-phylogeography/results/data/sra/${sample}
done
```

1. Copy files.
	```bash
	cp -r /2/scratch/keaton/plague-phylogeography/results/data/sra/SAMN00715800/ results/data/sra/;
	```
1. Rename them to Illumina standard.
	```bash
	for dir in `ls -d results/data/sra/*`;
	do
	  sample=`basename $dir`;
	  lane=1;
	  for r1_file in `ls $dir/*_1.fastq.gz`;
	  do
		r2_file=`echo $r1_file | sed 's/_1.fastq.gz/_2.fastq.gz/g'`;	  
	    filename=`basename $r1_file`;
		run=`echo $filename | cut -d "_" -f 1`;
	    r1_illumina="${sample}_${run}_L00${lane}_R1_001.fastq.gz"
		r2_illumina=`echo $r1_illumina | sed 's/R1/R2/g'`;
		
		# Rename the R1 File
		mv $r1_file $dir/$r1_illumina;
		
		# Rename the R2 File
		if [[ -f $r2_file ]]; then
		  mv $r2_file $dir/$r2_illumina;
		fi;
	    lane=`expr $lane + 1`		
	  done;
	done

	```

1. Symbolic Links
	```bash
	cd /home/poinarlab/Projects/Plague/plague-phylogeography-mapping;
	mkdir -p Second_Pandemic/data
	cd  Second_Pandemic/data
	ln -s /2/scratch/poinarlab/plague-phylogeography/results/data/sra/SAMN00715800 Sample_SAMN00715800
	```

### US and Madagascar

```bash
input_dir="/2/scratch/keaton/plague-phylogeography/results/data/sra/";
output_dir="/2/scratch/poinarlab/plague-phylogeography/results/data/sra/";

tail -n+2 /2/scratch/keaton/plague-phylogeography-projects/pla/metadata/all/metadata.tsv | grep -v "Reference" | cut -f 1 | while read sample;
do
  echo $sample;
  ls -l ${input_dir}/$sample;
  echo 
  break
done;
```

## [[All]] | Mapping

1. Navigate to the mapping pipeline output directory.
	```bash
	cd /home/poinarlab/Projects/Plague/plague-phylogeography-mapping;
	mkdir -p sra/SAMN00715800/
	```
1. Create Makefile
	```bash
	/home/poinarlab/pipeline/legacy.pl \
	  /home/poinarlab/Projects/Plague/plague-phylogeography-mapping/Second_Pandemic/data \
	  /home/poinarlab/Reference_sequences/GCA_000009065.1_ASM906v1_genomic.fna > Second_Pandemic.mk
	```
1. Run Pipeline
	```bash
	```
