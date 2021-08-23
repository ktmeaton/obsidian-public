---
aliases:
  -Phylodynamics Experiment Exclude Outliers
---

# Phylodynamics Experiment Exclude Outliers

| Field   | Value |
| ------- | ----- |
| Project |       |
| Date    |       | 

---
## Objectives

- Will the [[Molecular Clock\|clock modelling]] work better when [[outlier]] [[Clade|clades]] [[0.PE]] and [[2.MED]] are removed?

![The mean substitution rate (left) and coefficient of rate variation (right) by population. Each distribution is annotated with the peak value. ](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/ee37554/main/beast/all/chromosome/clade/log/rate_coeff.png){#fig:rate_coefficient width=60%}

---
## Outline

---
## Methods

### All

#### Nexus Priors

```bash
beast_dir=/mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/beast/all/chromosome/full/filter5;
metadata="/mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/metadata/all/metadata.tsv";
cd $beast_dir;

/mnt/c/Users/ktmea/Projects/plague-phylogeography/workflow/scripts/beast_nexus.py \
  -m ${metadata} \
  -a beast.fasta \
  --nex beast.nex;
  
mkdir -p relaxed_clock/dates/run/;
```

#### Beauti

1. Import alignment (```beast.nex```).
1. Rename partitions (```dna```).
1. Site Model (```GTR```).
1. Clock Model (```Strict or UCLN```)
3. Tree Prior: (```Coalescent Constant Population```).
4. Chain Length (100,000,000)
5. Chain samples (10,000).
6. Screen log (100,000).
7. Save As -> ```beast.xml```
8. Inspect the XML, to make sure the tip dating priors were setup correctly and logged. 

#### XML Edit

```bash
models=("strict_clock" "relaxed_clock")
dates=("dates" "no_dates")
constants_file="/mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/snippy_multi/all/chromosome/full/snippy-multi.constant_sites.txt";
constants=`tr "," " " < $constants_file`;
rootdir='/2/scratch/keaton/plague-phylogeography-projects/main/beast/all/chromosome/no_outliers/filter5';

for model in ${models[@]};
  do
    for date in ${dates[@]};
	do
	  file=$model/$date/model_test/beast.xml;	 
	  if [[ -f $file ]]; 
	  then 
	    # Restore the original backup file	 	  
		bak_file=${file}.bak
	    if [[ -f ${bak_file} ]]; 	
		then
		  echo "Restoring ${bak_file}"
		  mv ${bak_file} $file;
		fi;
		
		# Backup the original
		echo "Backing up ${file}"		
		cp $file $file.bak;
		
		# Create tmp file to edit
		echo "Creating temp file $file.tmp"
		cat $file | tr -d "\r" | tr "\n" "#" > $file.tmp
		
		# Change the original alignment name and ID
		IN='<data#id="dna"#spec="Alignment"#name="alignment">';
		OUT='<data#id="original-dna"#spec="Alignment"#name="original-dna">';
		sed -i "s|$IN|$OUT|g" $file.tmp;	
		
		# Add a data element with constant sites
		IN='<\/data>'
		OUT='<\/data>#\t\t<data id="dna" spec="FilteredAlignment" filter="-" data="@original-dna" constantSiteWeights="'$constants'"\/>';
		sed -i "s|$IN|$OUT|g" $file.tmp;
		
		# Save for the actual run
		run_file=$model/$date/run/beast.xml;
		cat $file.tmp | tr "#" "\n" > ${run_file};	
		
		# Change the ending run and mcmc elements for model testing
		IN='<\/run>'
		OUT='<\/mcmc>#<\/run>'
		sed -i "s|$IN|$OUT|g" $file.tmp			
		
		# Changing the starting run and mcmc elements
		IN='<run'
		OUT='<run spec="beast.inference.PathSampler"#\tchainLength="1000000"#\talpha="0.3"#\trootdir="'$rootdir/$model/$date/model_test/'"#\tburnInPercentage="0"#\tpreBurnin="100000" deleteOldLogs="true"#\tnrOfSteps="100">#\tcd $(dir)#\tjava -cp $(java.class.path) beast.app.beastapp.BeastMain $(resume/overwrite) -java -seed $(seed) beast.xml##<mcmc'
		sed -i "s|$IN|$OUT|g" $file.tmp	
		
		# Rename
		cat $file.tmp | tr "#" "\n" > $file; 
		rm -f $file.tmp;
		
	  fi;
	done;
done;
```

#### Run
1. Activate conda environment:
	```bash
	conda activate beast2
	cd beast/all/chromosome/full/filter5/
	```
1. Increase [[BEAST]] memory.
	```bash
	sed -i 's/Xmx8g/Xmx24g/g' ~/miniconda3/envs/beast2/bin/beast
	```  
1. Full Run
	```bash
	beast \
	  -seed 908762525 \
	  -threads 5 \
	  -beagle_SSE \
	  -beagle_double \
	  beast.xml | tee beast_screen.log		  
	```
1. Inspect
	```bash
	grep -v "#" full/filter5/relaxed_clock/dates/run/beast.log | awk '{print $1"\t"$6"\t"$(NF-4)}' | less -S
	grep -v "#" no_outliers/filter5/relaxed_clock/dates/run/beast.log | awk '{print $1"\t"$6"\t"$(NF-2)}' | less -S
	
	```
Runtime: 
	- 1 Million Samples = 20 minutes
	- 10 Million Samples = 3.33 hours
	- 100 Million Samples = 33.3 hours



### No Outliers

#### Alignments

```bash
# Prep directories
beast_dir="/mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/beast/all/chromosome/no_outliers/filter5";
mkdir -p $beast_dir;




cd main/iqtree/all/chromosome/full/filter5/filter-clades/;
clades=(`cut -f 1 clades.txt | grep -v "0.PE" | grep -v "2.MED"`);
suffixes=(".fasta" ".dates.txt");

# Create new files
i=0;
for clade in ${clades[@]};
do
  echo "$clade"
  for suffix in ${suffixes[@]};
  do
    outfile="${beast_dir}/beast${suffix}";
	if [[ $i == 0 ]];then
		cat $clade/*$suffix > $outfile;
	else
		cat $clade/*$suffix >> $outfile;
	fi
  done;
  i=`expr $i + 1`;
done;

```

#### Prep Beast Directories

```bash
metadata="/mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/metadata/all/metadata.tsv";
cd $beast_dir;

# Create nexus file with priors

/mnt/c/Users/ktmea/Projects/plague-phylogeography/workflow/scripts/beast_nexus.py \
  -m ${metadata} \
  -a beast.fasta \
  --nex beast.nex;

models=("strict_clock" "relaxed_clock")
dates=("dates" "no_dates")

for model in ${models[@]}; do
  for date in ${dates[@]};
  do
    echo $model/$date;
    mkdir -p $model/$date/model_test/;
    mkdir -p $model/$date/run/;	 
  done;
done;
```


#### Beauti

1. Import alignment (```beast.nex```).
1. Rename partitions (```dna```).
1. Site Model (```GTR```).
1. Clock Model (```Strict or UCLN```)
3. Tree Prior: (```Coalescent Constant Population```).
4. Chain Length (100,000,000)
5. Chain samples (10,000).
6. Screen log (100,000).
7. Save As -> ```beast.xml```
8. Inspect the XML, to make sure the tip dating priors were setup correctly and logged. 

#### XML Edit

```bash
constants_file="/mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/snippy_multi/all/chromosome/full/snippy-multi.constant_sites.txt";
constants=`tr "," " " < $constants_file`;
rootdir='/2/scratch/keaton/plague-phylogeography-projects/main/beast/all/chromosome/no_outliers/filter5';

for model in ${models[@]};
  do
    for date in ${dates[@]};
	do
	  file=$model/$date/model_test/beast.xml;	 
	  if [[ -f $file ]]; 
	  then 
	    # Restore the original backup file	 	  
		bak_file=${file}.bak
	    if [[ -f ${bak_file} ]]; 	
		then
		  echo "Restoring ${bak_file}"
		  mv ${bak_file} $file;
		fi;
		
		# Backup the original
		echo "Backing up ${file}"		
		cp $file $file.bak;
		
		# Create tmp file to edit
		echo "Creating temp file $file.tmp"
		cat $file | tr -d "\r" | tr "\n" "#" > $file.tmp
		
		# Change the original alignment name and ID
		IN='<data#id="dna"#spec="Alignment"#name="alignment">';
		OUT='<data#id="original-dna"#spec="Alignment"#name="original-dna">';
		sed -i "s|$IN|$OUT|g" $file.tmp;	
		
		# Add a data element with constant sites
		IN='<\/data>'
		OUT='<\/data>#\t\t<data id="dna" spec="FilteredAlignment" filter="-" data="@original-dna" constantSiteWeights="'$constants'"\/>';
		sed -i "s|$IN|$OUT|g" $file.tmp;
		
		# Save for the actual run
		run_file=$model/$date/run/beast.xml;
		cat $file.tmp | tr "#" "\n" > ${run_file};	
		
		# Change the ending run and mcmc elements for model testing
		IN='<\/run>'
		OUT='<\/mcmc>#<\/run>'
		sed -i "s|$IN|$OUT|g" $file.tmp			
		
		# Changing the starting run and mcmc elements
		IN='<run'
		OUT='<run spec="beast.inference.PathSampler"#\tchainLength="1000000"#\talpha="0.3"#\trootdir="'$rootdir/$model/$date/model_test/'"#\tburnInPercentage="0"#\tpreBurnin="100000" deleteOldLogs="true"#\tnrOfSteps="100">#\tcd $(dir)#\tjava -cp $(java.class.path) beast.app.beastapp.BeastMain $(resume/overwrite) -java -seed $(seed) beast.xml##<mcmc'
		sed -i "s|$IN|$OUT|g" $file.tmp	
		
		# Rename
		cat $file.tmp | tr "#" "\n" > $file; 
		rm -f $file.tmp;
		
	  fi;
	done;
done;
```

#### Run
1. Activate conda environment:
	```bash
	conda activate beast2
	cd beast/all/chromosome/no_outliers/filter5/
	```
1. Increase [[BEAST]] memory.
	```bash
	sed -i 's/Xmx8g/Xmx24g/g' ~/miniconda3/envs/beast2/bin/beast
	```
1. Strict clock with dates
	```bash
	beast \
	  -seed 645235425 \
	  -threads 5 \
	  -beagle_SSE \
	  -beagle_double \
	  beast.xml | tee beast_screen.log	
	```
1. Strict clock without dates
	```bash
	beast \
	  -seed 653266252 \
	  -threads 5 \
	  -beagle_SSE \
	  -beagle_double \
	  beast.xml | tee beast_screen.log		  
	```
1. Relaxed clock with dates
	```bash
	beast \
	  -seed 178452578 \
	  -threads 5 \
	  -beagle_SSE \
	  -beagle_double \
	  beast.xml | tee beast_screen.log		  
	```
1. Relaxed clock without dates
	```bash
	beast \
	  -seed 874578575 \
	  -threads 5 \
	  -beagle_SSE \
	  -beagle_double \
	  beast.xml | tee beast_screen.log		  
	```
1. Full Run
	```bash
	beast \
	  -seed 45375043257 \
	  -threads 5 \
	  -beagle_SSE \
	  -beagle_double \
	  beast.xml | tee beast_screen.log		  
	```


## Results

---
## Conclusions



---

tags: [[Experiment]], #📝/🌱