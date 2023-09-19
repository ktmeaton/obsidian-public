---
aliases:
  - Yersinia pestis Phylodynamics Methods
tags:
  - 📝/🌱
status: idea

---

# Yersinia pestis Phylodynamics Methods

## Methods {.page_break_before}

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

1. Import alignment (`beast.nex`).
1. Rename partitions (`dna`).
1. Site Model (`GTR`).
1. Clock Model (`Strict or UCLN`)
3. Tree Prior: (`Coalescent Constant Population or Skyline`).
4. Chain Length (100,000,000)
5. Chain samples (10,000).
6. Screen log (100,000).
7. Save As -> `beast.xml`
8. Inspect the XML, to make sure the tip dating priors were setup correctly and logged. 

#### XML Edit

```bash
models=("strict_clock" "relaxed_clock")
dates=("dates" "no_dates")
#run_dir="run"
run_dir="skyline"
constants_file="/mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main_filter/snippy_multi/all/chromosome/full/snippy-multi.constant_sites.txt";
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
		run_file=$model/$date/${run_dir}/beast.xml;
		
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
1. Increase [[obsidian-public/academic/BEAST]] memory.
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
1. Skyline
	```bash
	beast \
	  -seed 8964223457 \
	  -threads 5 \
	  -beagle_SSE \
	  -beagle_double \
	  beast.xml | tee beast_screen.log		  
	```
3. Inspect
	```bash
	grep -v "#" full/filter5/relaxed_clock/dates/run/beast.log | awk '{print $1"\t"$6"\t"$(NF-4)}' | less -S
	grep -v "#" no_outliers/filter5/relaxed_clock/dates/run/beast.log | awk '{print $1"\t"$6"\t"$(NF-2)}' | less -S
	```

Runtime: 
	- 1 Million Samples = 20 minutes
	- 10 Million Samples = 3.33 hours
	- 100 Million Samples = 33.3 hours
	
- Preview the MCC tree.
```bash
treeannotator -burnin 20 beast.trees beast_mcc.nex
```




---


