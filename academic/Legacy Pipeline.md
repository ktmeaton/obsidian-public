---
aliases:
  - Legacy Pipeline
tags:
  - 📝/🌱
status: idea

---

# Legacy Pipeline

```bash
# Step 1. Specify paths to the raw data from basespace
DB=/2/scratch/poinarlab/sequence_db;
PROJECT=211015_Poinar-13_RS_Turkey_Pool_3;
DB_PROJECT=$DB/$PROJECT;

# Step 2. Specify a directory that will store links to the data
DATA_DIR=$HOME/211015_Poinar-13_RS_Turkey_Pool_3/data
/home/poinarlab/pipeline/scripts/prep_legacy_input_project.sh $DATA_DIR $DB_PROJECT;

# Step 3. Specify a directory that will store mapping output
MAP_DIR=$HOME/211015_Poinar-13_RS_Turkey_Pool_3/mapping
mkdir -p MAP_DIR
cd $MAP_DIR

# Step 4. Run the legacy pipeline
/home/poinarlab/pipeline/legacy.pl $DATA_DIR /path/to/reference.fasta > Makefile;
make
```