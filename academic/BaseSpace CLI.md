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
- Automate FASTQ data download.
- Automate FASTQ data upload.
- Documentation: https://developer.basespace.illumina.com/docs/content/documentation/cli/cli-examples

## Terminology

- Dataset: A collection of FASTQ files from one de-multiplexed library.
- Biosample: A sample, can be linked to multiple datasets across multiple runs.
- Project: A collection of biosamples and datasets.

## Local Install

> Note: If you are on the group account on info, the BaseSpace CLI is already installed.

1. Download the Linux executable.
	```bash
	wget https://launch.basespace.illumina.com/CLI/latest/amd64-linux/bs
	chmod +x bs
	```
1. Move the executable to PATH.
	```bash	
	# Option 1: As local user
	mkdir -p ~/bin/
	mv bs ~/bin/
	alias bs=~/bin/bs
	
	# Option 2: As superuser
	sudo mv bs /usr/local/bin/
	```

## Authenticate

1. Authenticate, open the link in a web-browser, enter BaseSpace username and password.
	```bash
	bs auth
	```
1. Confirm authentication.
	```bash
	bs whoami
	```

## 2. Download

### Sample

- List files associated with sample: `PLS7b`
	```bash
	bs list datasets --filter-field=Name --filter-term="PLS7b" 
	```
	
	| Name  | Id                                  | Project.Name              | DatasetType.Id      |
	| ----- | ----------------------------------- | ------------------------- | ------------------- |
	| PLS7b | <p style="color:red">ds.a90547f9896f4264afae413677880458</p> | Poinar_KE_Plague_Shotgun3 | illumina.fastq.v1.8 |

- Download FASTQ files.
	```bash
	bs download dataset -i ds.a90547f9896f4264afae413677880458 -o Sample_PLS7b
	```
- Remove dataset summary.
	```bash
	rm Sample_PLS7b/*.json
	```

### Project

- List files associated with a shotgun project.
	```bash
	bs list projects --filter-term "Shotgun"
	```

	| Name                      | Id        | TotalSize  |
	| ------------------------- | --------- | ---------- |
	| Poinar_KE_Plague_Shotgun3 | <p style="color:red">252688437</p> | 1161859653 |


- Download all samples from a project.
	```bash
	bs download project -i 252688437 -o Poinar_KE_Plague_Shotgun3
	```
- Rename BaseSpace folders for compatibility with the legacy pipeline.
	```bash
	
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
	
	
## Metadata Database

```bash
bs list datasets \
  -F Name \
  -F Project.Name \
  -F Id \
  -F Project.Id
  -F TotalSize \
  -F DataSetType.Id \
  -F DateCreated \
  -F DateModified
```

  "Id",
  "Name",
  "DateCreated",
  "DateModified",
  "AppSession.Id",
  "AppSession.Name",
  "AppSession.Application.AppFamilySlug",
  "AppSession.Application.AppVersionSlug",
  "AppSession.Application.Id",
  "AppSession.Application.VersionNumber",
  "AppSession.Application.HomepageUri",
  "AppSession.Application.ShortDescription",
  "AppSession.Application.LongDescription",
  "AppSession.Application.Category",
  "AppSession.Application.UserOwnedBy.Id",
  "AppSession.Application.UserOwnedBy.Name",
  "AppSession.Application.UserOwnedBy.GravatarURL",
  "AppSession.Application.UserOwnedBy.DateLastActive",
  "AppSession.Application.UserOwnedBy.DateCreated",
  "AppSession.Application.Name",
  "AppSession.Application.CompanyName",
  "AppSession.ExecutionStatus",
  "AppSession.QcStatus",
  "AppSession.DeliveryStatus",
  "AppSession.UserCreatedBy.Id",
  "AppSession.UserCreatedBy.Name",
  "AppSession.UserCreatedBy.GravatarURL",
  "AppSession.UserCreatedBy.DateLastActive",
  "AppSession.UserCreatedBy.DateCreated",
  "AppSession.StatusSummary",
  "AppSession.DateCreated",
  "AppSession.DateModified",
  "AppSession.DateCompleted",
  "AppSession.TotalSize",
  "AppSession.RunningDuration",
  "AppSession.ComputeStatistics.Unit",
  "AppSession.ComputeStatistics.Amount",
  "Project.Name",
  "Project.Id",
  "Project.UserOwnedBy.Id",
  "Project.UserOwnedBy.Name",
  "Project.UserOwnedBy.GravatarURL",
  "Project.UserOwnedBy.DateLastActive",
  "Project.UserOwnedBy.DateCreated",
  "Project.DateCreated",
  "Project.DateModified",
  "Project.Description",
  "Project.TotalSize",
  "UserOwnedBy.Id",
  "UserOwnedBy.Name",
  "UserOwnedBy.GravatarURL",
  "UserOwnedBy.DateLastActive",
  "UserOwnedBy.DateCreated",
  "DataSetType.Id",
  "DataSetType.Name",
  "QcStatus",
  "QcStatusSummary",
  "UploadStatus",
  "UploadStatusSummary",
  "ValidationStatus",
  "TotalSize",
  "IsFileDataDeleted",
  "IsArchived",
  "V1pre3Id"