---
aliases:
  - BaseSpace CLI Scratch
tags:
  - 📝/🌱
status: idea

---

# BaseSpace CLI Scratch

## Upload Data to BaseSpace

1. Create Project
	```
	bs create project -c secondary -n tutorial_bs_cli
	```
1. Get the ID associated with the project
	```bash
	bs project list -c secondary
	```
	
	| Name            | Id        | TotalSize | 
	| --------------- | --------- | --------- |
	| tutorial_bs_cli | 123456789 | 0         |

1. Navigate to the local project directory.
	```bash
	cd 180802_Poinar_KE_Megapestis4-89755666
	```
1. Prep list of samples
	```bash
	samples=(
	`ls -1 **/*.fastq.gz | sed 's#.*/##' | cut -d "_" -f 1 | sort | uniq`
	);
	```
1. Inspect the list of samples.
	```bash
	echo $samples
	E100S6aM4 E100S6bM4 E100S6cM4 E103S6aM4 E103S6bM4...
	```
1. Iterate through each sample, upload associated FASTQ files.
	```bash
	for sample in $samples;
	do
	  # Check if dataset already exists in BaseSpace for current sample
	  exists=`bs dataset get --name $sample`;
	  
	  # If dataset exists, skip the rest of the loop, continue to next sample
	  if [[ $exists ]]; then continue; fi;
	  
	  # If dataset doesn't exist, upload associated fastq files.
	  echo "Uploading sample: $sample";
	  bs dataset upload --project 282786510 **/*$sample*.fastq.gz;
	done
	```
	
	
## 2. Local File Structure

- Directory structure:
	```
	📁 project_test
	 ├─ 📁 data
	     ├─ 📁 Sample_PLS7b/ 
		     ├─ 📝 PLS7b_S164_L001_R1_001.fastq.gz
			 ├─ 📝 PLS7b_S164_L001_R2_001.fastq.gz
			 ├─ 📝 PLS7b_S164_L002_R1_001.fastq.gz
			 ├─ 📝 PLS7b_S164_L002_R2_001.fastq.gz	
		 ...
	 ├─ 📁 mapping	
	     ├─ 📝 PLS7b_
	```

- Directory example:
	```
	📁 180802_Poinar_KE_Megapestis4-89755666
	 ├─ 📁 BaseSpace_CLI_2018-08-07_23_48_09Z-114426315
		  ├─ 📁 E100S6aM4-ds.ea9a9b54ea3b4174b64dba9f6dae308f 
				  ├─ 📝 E100S6aM4_S55_L001_R1_001.fastq.gz
				  ├─ 📝 E100S6aM4_S55_L001_R2_001.fastq.gz
				  ├─ 📝 E100S6aM4_S55_L002_R1_001.fastq.gz
				  ├─ 📝 E100S6aM4_S55_L002_R2_001.fastq.gz
	```