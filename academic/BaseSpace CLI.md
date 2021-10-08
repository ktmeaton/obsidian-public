---
aliases:
  - BaseSpace CLI
tags:
  - 📝/🌱
status: idea

---

# BaseSpace Command-Line Interface (CLI)

- A [[Comand Line Interface]] for the [[BaseSpace]] sequencing platform.
- Automate [[BaseSpace]] project creation.
- Automate [[FASTQ]] data download and upload.
- Documentation: https://developer.basespace.illumina.com/docs/content/documentation/cli/cli-examples

## Terminology

| Term              | Definition                                                         |
| ----------------- | ------------------------------------------------------------------ |
| Dataset           | A collection of FASTQ files from one de-multiplexed library        |
| Biosample         | A sample, can be linked to multiple datasets across multiple runs. |
| Project           | A collection of biosamples and datasets.                           |

## Install

1. Download the Linux executable.
	```bash
	wget https://launch.basespace.illumina.com/CLI/latest/amd64-linux/bs
	chmod +x bs
	```
2. Move executable into PATH.
	- A. Super User
		```bash
		sudo mv bs /usr/local/bin/
		```
	- B. Local User\*
		```bash	
		mkdir -p $HOME/bin/
		mv bs $HOME/bin/
		export PATH=$PATH:$HOME/bin
		```
	- \* To permanently alias the BaseSpace CLI, run:
		```bash
		echo 'export PATH=$PATH:$HOME/bin' >> $HOME/.bashrc
		source ~/.bashrc
		```

<div style="page-break-after: always;"></div>

## Authenticate

1. Authenticate, open the link in a web-browser, enter BaseSpace username and password.
	```bash
	bs auth
	```
1. To store and name multiple accounts (recommended):
	```bash
	bs auth -c primary
	bs auth -c secondary
	```
1. Confirm authentication.
	```bash
	bs whoami
	bs whoami -c primary
	bs whoami -c secondary
	```

## File System Setup

Create a directory for the tutorial.

```bash
mkdir $HOME/tutorial_bs_cli;
mkdir $HOME/tutorial_bs_cli/data;
mkdir $HOME/tutorial_bs_cli/mapping;

cd $HOME/tutorial_bs_cli;
```

<div style="page-break-after: always;"></div>

## Download Data from BaseSpace

### FASTQ Data by Sample

- List files associated with sample `PLS7b` on the `secondary`\* account.
	```bash
	bs list datasets \
	  -c secondary \
	  --filter-field=Name \
	  --filter-term="PLS7b" 
	```

	| Name  | Id                                  | Project.Name              | DatasetType.Id      |
	| ----- | ----------------------------------- | ------------------------- | ------------------- |
	| PLS7b | <p style="color:red">ds.a90547f9896f4264afae413677880458</p> | Poinar_KE_Plague_Shotgun3 | illumina.fastq.v1.8 |

	\* Querying the `primary` account is very slow because there are 5000+ datasets.
- Download FASTQ files.
	```bash
	bs download dataset \
	  -c secondary \
	  -i ds.a90547f9896f4264afae413677880458 \
	  -o $HOME/tutorial_bs_cli/data/PLS7b_ds.a90547f9896f4264afae413677880458/
	```


### FASTQ Data by Project

- List files associated with a shotgun project.
	```bash
	bs list projects -c secondary --filter-term "Shotgun"
	```

	| Name                      | Id        | TotalSize  |
	| ------------------------- | --------- | ---------- |
	| Poinar_KE_Plague_Shotgun3 | <p style="color:red">252688437</p> | 1161859653 |


- Download all samples from a project.
	```bash
	bs download project -c secondary -i 252688437 -o $HOME/tutorial_bs_cli/data
	```

<div style="page-break-after: always;"></div>

## Prepare Input for the Legacy Pipeline

Projects downloaded from BaseSpace are structured as follows.
```
📁 210521_Poinar-12_pPCP1_ENR_Pool
 ├─ 📁 P187-S6e-pPCP1_ds.03e759e9727c45649707ef73049c211f
     ├─ 📝 P187-S6e-pPCP1_S11_L001_R1_001.fastq.gz
     ├─ 📝 P187-S6e-pPCP1_S11_L001_R2_001.fastq.gz
	 ├─ 📝 P187-S6e-pPCP1_S11_L002_R1_001.fastq.gz
	 ├─ 📝 P187-S6e-pPCP1_S11_L002_R2_001.fastq.gz
  ...
```

The legacy pipeline requires files to be structured as follows. Specifically, the sample directories need to have the prefix "Sample_".
```
📁 210521_Poinar-12_pPCP1_ENR_Pool
 ├─ 📁 Sample_P187-S6e-pPCP1
     ├─ 📝 P187-S6e-pPCP1_S11_L001_R1_001.fastq.gz
     ├─ 📝 P187-S6e-pPCP1_S11_L001_R2_001.fastq.gz
	 ├─ 📝 P187-S6e-pPCP1_S11_L002_R1_001.fastq.gz
	 ├─ 📝 P187-S6e-pPCP1_S11_L002_R2_001.fastq.gz
  ...
```

### Data the User Downloaded

- Rename sample folders.
	```bash
	DATA_DIR=$HOME/tutorial_bs_cli/data;

	for old_dir in `ls -d $DATA_DIR/*`; do 
	  if [[ ! -d $old_dir ]]; then continue; fi;
	  sample_id=`basename $old_dir | cut -d "_" -f 1`; 
	  new_dir="$DATA_DIR/Sample_$sample_id";
	  mv $old_dir $new_dir;
	done
	```

<div style="page-break-after: always;"></div>

### Data from the Infoserv Database

#### Entire Project

1. Create renamed symlinks to data stored in the sequence database.
	```bash
	DB=/2/scratch/poinarlab/sequence_db;
	PROJECT=210521_Poinar-12_Den_ReSeq_Pool/;
	INDIR=$DB/$PROJECT;
	OUTDIR=$HOME/tutorial_bs_cli/data/
	
	/home/poinarlab/pipeline/scripts/prep_legacy_input_project.sh $OUTDIR $INDIR;
	```

#### One Sample
1. Let's add a different sample (`D24`)from a different project (`210521_Poinar-12_pPCP1_ENR_Pool/`) to our data directory.
	```bash
	DB=/2/scratch/poinarlab/sequence_db/;
	PROJECT=210521_Poinar-12_pPCP1_ENR_Pool/;
	SAMPLE=`ls -d $DB/$PROJECT/D24*`;
	OUTDIR=$HOME/tutorial_bs_cli/data/;

	/home/poinarlab/pipeline/scripts/prep_legacy_input_samples.sh $OUTDIR $SAMPLE;
	```

#### Multiple Samples

1. Let's also add samples `D62` and `D72`.
	```bash	
	DB=/2/scratch/poinarlab/sequence_db/;
	PROJECT=210521_Poinar-12_pPCP1_ENR_Pool/;
	SAMPLES=`ls -d $DB/$PROJECT/{D62*,D72*}`;
	OUTDIR=$HOME/tutorial_bs_cli/data/;

	/home/poinarlab/pipeline/scripts/prep_legacy_input_samples.sh $OUTDIR $SAMPLES;
	```

<div style="page-break-after: always;"></div>

### Configure the legacy pipeline.

1. Create the pipeline instructions.
	```bash
	DATA_DIR=$HOME/tutorial_bs_cli/data/
	MAP_DIR=$HOME/tutorial_bs_cli/mapping/
	REF=/home/poinarlab/Reference_sequences/GCA_000009065.1_ASM906v1_genomic.fna;

	/home/poinarlab/pipeline/legacy.pl $DATA_DIR $REF > $MAP_DIR/Makefile;
	```
1. Run the pipeline.
	```bash
	cd $MAP_DIR;
	make
	```

## Troubleshooting

- Error:
	```bash
	ERROR: *** could not parse config file: 
	open /home/username/.basespace/default.cfg: no such file or directory ***
	```
- Solution:
	1. Authenticate with `bs auth`. 
	2. Or, specify your account config like `bs config -c primary`.

## Create a Metadata Database

```bash
/home/poinarlab/pipeline/scripts/update_metadata_db.sh secondary > secondary.txt;
less -S metadata_secondary.txt
```

```bash
grep -v "\-\+\-" metadata_primary.txt > metadata_primary_sheet.txt
```

