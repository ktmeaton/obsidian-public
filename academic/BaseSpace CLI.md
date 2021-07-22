---
aliases:
  - BaseSpace CLI
tags:
  - 📝/🌱
status: idea

---

# BaseSpace CLI

- A [[Comand Line Interface]] for the [[BaseSpace]] sequencing platform.
- Automate BaseSpace project creation.
- Automate FASTQ data upload.

## 1. Install

1. Download the Linux executable.
	```bash
	wget https://launch.basespace.illumina.com/CLI/latest/amd64-linux/bs
	```
1. Move the exectuable to PATH.
	```bash
	sudo mv bs /usr/local/bin/
	```
1. Authenticate, open the link in a web-browser, enter BaseSpace username and password.
	```bash
	bs auth
	```

## 2. Local File Structure

- Directory structure:
	```
	📁 Project
	 ├─ 📁 Analysis
		  ├─ 📁 Sample 
				  ├─ 📝 Fastq Data
				  ├─ 📝 ...
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

<div style="page-break-after: always;"></div>

## 3. Create Project

1. Create Project
	```
	bs create project Poinar_KE_Megapestis4
	```
1. Get the ID associated with the project
	```bash
	bs project list
	
	+----------------------------------+-----------+------------+
	|               Name               |    Id     | TotalSize  |
	+----------------------------------+-----------+------------+
	| Poinar_KE_Megapestis4            | 282786510 | 0          |
	+----------------------------------+-----------+------------+
	```

## 4. Upload FASTQ Files to Project

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