---
project: null
due: 2021-07-29
people: null
tags: ✨
status: done
title: Locus Coverage for Danish Samples
type: [ [ Task ] ]
---

# *[[Yersinia pestis]]* Locus Coverage for Danish Samples

## Inputs

1. [x] Project directory with mapping pipeline output.
 	-  `directory: /home/poinarlab/Projects/Plague/Denmark`
1. [x] Mapped BAM files, merged across libraries, filtered for length and mapping quality.
	- `files: mapping/Plague/merged/*.bam`
1. [x] Reference GFF file.
	- `file: data_reference/GCA_000009065.1_ASM906v1_genomic.gff`

## Output

1. [x] Breadth of coverage by sample and genomic feature.
  	- `file: locus_coverage/locus_coverage.txt`
	- Rows: Samples
	- Columns: ID of feature.
	- Units: Proportion of feature covered.
1. [x] Depth of coverage by sample and genomic feature.
  	- `file: locus_coverage/locus_coverage.txt`
	- Rows: Samples
	- Columns: ID of feature.
	- Units: Mean depth of feature.
1. [x] Lookup table of features in the reference genome.
	- `file: data_reference/GCA_000009065.1_ASM906v1_genomic.txt`
	- Rows: Features
	- Columns:
		- id
		- seqname
		- source
		- feature
		- start
		- end
		- score
		- strand
		- frame
		- attribute 
		
<div style="page-break-after: always;"></div>

## Methods

### 1. Setup

```bash
cd /home/poinarlab/Projects/Plague/Denmark
conda activate envs/snippy
```

### 2. Calculate coverage and depth by sample.

```bash
#!/bin/bash

GFF=data_reference/GCA_000009065.1_ASM906v1_genomic.gff;
OUTDIR=locus_coverage;

for BAMPATH in `ls mapping/Plague/merged/*.bam`; 
do 
  # Extract just the filename from the path
  BAMFILE=`basename $BAMPATH`;

  # Extract the sample ID from the filename
  SAMPLE=${BAMFILE%.*}

  echo "Calculating statistics for sample $SAMPLE.";

  # Calculate breadth of coverage for all elements in the reference gff
  COVFILE=$OUTDIR/${SAMPLE}_locus_coverage_full.txt
  bedtools coverage -a $GFF -b $BAMPATH > $COVFILE;

  # Calculate depth of coverage for all elements in the reference gff
  DEPFILE=$OUTDIR/${SAMPLE}_locus_depth_full.txt
  bedtools coverage -a $GFF -b $BAMPATH  -mean > $DEPFILE

  # Extract statistics of interest from the comprehensive output
  loci=`cut -f9 $COVFILE | sed 's/ID=//g' | cut -d ";" -f 1 | tr '\n' '\t'`;
  cov=`cut -f 13 $COVFILE | tr '\n' '\t'`;
  dep=`cut -f 10 $DEPFILE | tr '\n' '\t'`;

  # Write these statistics to new summarized files
  COVFILE=$OUTDIR/${SAMPLE}_locus_coverage.txt
  echo -e "Sample\t$loci\n$SAMPLE\t$cov" > $COVFILE;
  DEPFILE=$OUTDIR/${SAMPLE}_locus_depth.txt
  echo -e "Sample\t$loci\n$SAMPLE\t$dep" > $DEPFILE;

  # Remove the old comprehensive output
  rm -f $OUTDIR/${SAMPLE}_locus_coverage_full.txt;
  rm -f $OUTDIR/${SAMPLE}_locus_depth_full.txt;

done
```

<div style="page-break-after: always;"></div>

### 3. Collect statistics in master table.

```bash
#!/bin/bash

OUTDIR=locus_coverage;

# -------------------------------
# Coverage summary
COVFILES=(`ls $OUTDIR/*coverage*.txt`);
OUTPUT=${OUTDIR}/locus_coverage.txt	
# Write the header columns to the output file
head -n1 $COVFILES > $OUTPUT;

# Write all the samples coverage to the output
for COVPATH in ${COVFILES[@]};
do
  tail -n1 $COVPATH >> $OUTPUT;
done;

# -------------------------------
# Depth summary
DEPFILES=(`ls $OUTDIR/*depth*.txt`);
OUTPUT=${OUTDIR}/locus_depth.txt	
# Write the header columns to the output file
head -n1 $DEPFILES > $OUTPUT;

# Write all the samples coverage to the output
for DEPPATH in ${DEPFILES[@]};
do
  tail -n1 $DEPPATH >> $OUTPUT;
done;			
```

<div style="page-break-after: always;"></div>

### 4. Parse Reference GFF into tidy table.

```python
#!/usr/local/env python3

import os
import subprocess

# Setup file paths to find the reference gff
project_dir = "/home/poinarlab/Projects/Plague/Denmark"
ref_gff_file = "data_reference/GCA_000009065.1_ASM906v1_genomic.gff"
ref_gff_path = os.path.join(project_dir, ref_gff_file)

# These are the columns of the output file
ref_gff_columns = [
        "id",
        "seqname",
        "source",
        "feature",
        "start",
        "end",
        "score",
        "strand",
        "frame",
        "attribute",
]

# Create a name for the output file
ref_gff_tsv = ref_gff_path + ".tsv"
# Remove the output file if it already exists
subprocess.run(["rm", "-f", ref_gff_tsv]) 

# iterate through the lines of the reference GFF
with open(ref_gff_path) as infile:
    # Open up the output file
    with open(ref_gff_tsv, "a") as outfile:

		# Write the column headers
		line = "\t".join(ref_gff_columns)
		outfile.write(line + "\n")
        ref_gff_read = infile.read().split("\n")
        for line in ref_gff_read:
		    # Ignore comment lines that have #
            if not line.startswith("#"):
                split_line = line.strip().split("\t")
                attr = split_line[-1].split(";")
                attr_id = attr[0].split("=")
                if len(attr_id) < 2:
                    continue
                attr_id = attr_id[1]
                line = "{}\t".format(attr_id) + line
                outfile.write(line + "\n")
```