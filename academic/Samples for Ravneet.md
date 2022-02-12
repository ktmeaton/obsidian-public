---
project: pla Depletion
due: 2022-02-11
time "--"
people:
tags: ⏬
status: priority
title: Samples for Ravneet
type: Task
---

# Samples for Ravneet

## Second Pandemic

```bash
SRA_DIR="/2/scratch/keaton/plague-phylogeography/results/data/sra/"
OUTPUT_DIR="/home/poinarlab/Projects/Plague/PlaDepletion/data/SecondPandemic"
SAMPLES=($SRA_DIR\SAMEA5054091 $SRA_DIR\SAMEA5818833 $SRA_DIR\SAMEA7293141 $SRA_DIR\SAMEA7293142 $SRA_DIR\SAMEA7293138 $SRA_DIR\SAMEA6502100 $SRA_DIR\SAMEA3937656 $SRA_DIR\SAMEA7293134 $SRA_DIR\SAMEA7313243)
/home/poinarlab/pipeline/scripts/prep_legacy_input_sra.sh $OUTPUT_DIR ${SAMPLES[@]}
```

- [x] SAMEA5054091
- [x] SAMEA5818833
- [ ] SAMEA7313231
	- Maybe low cov? not downloaded
- [ ] SAMEA7293140
	- Maybe low cov? not downloaded
- [x] SAMEA7293141 
- [x] SAMEA7293142
- [ ] SAMEA7293137 
	- Maybe low cov? not downloaded
- [x] SAMEA7293138 
- [ ] SAMEA7293139 
	- Maybe low cov? not downloaded
- [x] SAMEA6502100
- [x] SAMEA3937656 
- [ ] SAMEA8136250 SAMEA8136251
	- 2021 too recent, not downloaded
- [ ] SAMEA8136275 SAMEA8136274 SAMEA8136273 
	- 2021 too recent, not downloaded
- [x] SAMEA7293134
- [x] SAMEA7313243
	- Already migrated, it is `SAMEA7313243-45`
	- The authors gave each library it's own biosample accession, so I merged them.
- [ ] SAMEA7313228 
	- 2021 too recent, not downloaded
- [ ] SAMEA7313229
	- 2021 too recent, not downloaded


## First Pandemic

```bash
SRA_DIR="/2/scratch/keaton/plague-phylogeography/results/data/sra/"
OUTPUT_DIR="/home/poinarlab/Projects/Plague/PlaDepletion/data/FirstPandemic"
# A76
ls -d SAMN02442{694,695,714,723,728}
mkdir SAMN02442694_728

ls SAMN02442{694,695,714,723,728}/*
mv SAMN02442{694,695,714,723,728}/* SAMN02442694_728/

mkdir SAMN02442692_727
ls -d SAMN02442{692,693,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,715,716,717,718,719,720,721,722,724,725,726,727}

ls -l SAMN02442{692,693,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,715,716,717,718,719,720,721,722,724,725,726,727}/*
mv SAMN02442{692,693,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,715,716,717,718,719,720,721,722,724,725,726,727}/* SAMN02442692_727/


SAMPLES=($SRA_DIR/SAMEA5661375 $SRA_DIR/SAMEA5661378_83 $SRA_DIR/SAMN02442694_728 $SRA_DIR/SAMN02442692_727)
/home/poinarlab/pipeline/scripts/prep_legacy_input_sra.sh $OUTPUT_DIR ${SAMPLES[@]}
```

- [x] A76 (<https://www.ncbi.nlm.nih.gov/biosample/?term=yersinia+pestis+A76>)
	- Kat's note, I'm going to call this... `SAMN02442694-728`
	- SAMN02442694
	- SAMN02442695
	-  SAMN02442714
	- SAMN02442723
	- SAMN02442728
- [x] A120 (<https://www.ncbi.nlm.nih.gov/biosample/?term=yersinia+pestis+A120>)
		- Kat's note, I'm going to call this... `SAMN02442692-727`
		- SAMN02442692
		- SAMN02442693
		- SAMN02442696
		- SAMN02442697
		- SAMN02442698
		- SAMN02442699
		- SAMN02442700
		- SAMN02442701
		- SAMN02442702
		- SAMN02442703
		- SAMN02442704
		- SAMN02442705
		- SAMN02442706
		- SAMN02442707
		- SAMN02442708
		- SAMN02442709
		- SAMN02442710
		- SAMN02442711
		- SAMN02442712
		- SAMN02442713
		- SAMN02442715
		- SAMN02442716
		- SAMN02442717
		- SAMN02442718
		- SAMN02442719
		- SAMN02442720
		- SAMN02442721
		- SAMN02442722
		- SAMN02442724
		- SAMN02442725
		- SAMN02442726
		- SAMN02442727
- [x] SAMEA5661375 
- [x] SAMEA5661378 SAMEA5661379 SAMEA5661380 SAMEA5661381 SAMEA5661382 SAMEA5661383
	- Kat's note, I'm going to call this... `SAMEA5661378_83`

## Runs

```bash
conda_env="/home/keaton/miniconda3/envs/plague-phylogeography"
download_sra="/2/scratch/poinarlab/plague-phylogeography/workflow/scripts/download_sra.sh"
biosample_acc="SAMEA7313231"
sra_runs=("ERR4626666" "ERR4626656" "ERR4624301" "ERR4624269" "ERR4624268")
out_dir="/2/scratch/keaton/plague-phylogeography/results/data/sra"
sra_cache="/2/scratch/keaton/plague-phylogeography/"

conda activate $conda_env
for run in ${sra_runs[@]}; do
  echo "$download_sra $sra_cache $out_dir $biosample_acc $run";
  $download_sra $sra_cache $out_dir $biosample_acc $run;
  break
done

$download_sra $sra_cache $out_dir $biosample_acc $run

cache_path
outdir
biosample_acc
sra_acc
```