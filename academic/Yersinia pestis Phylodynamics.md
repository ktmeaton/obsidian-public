---
aliases:
  - [[Yersinia pestis Phylodynamics]]
tags:
  - 📝/🌱
status: idea

---

# _Yersinia pestis_ Phylodynamics

## Rate Variation: Biological Trait or Methodological Artifact?

Previous work has documented substantial rate variation both between and within populations of *[[Yersinia pestis|Y. pestis]]* [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]]. We therefore began by testing if this characteristic was still present in our updated genomic dataset, which is notably larger and more diverse than those used in previous studies. 

Given this expanded diversity, it is unsurprising that a [[Root to Tip Regression|root-to-tip regression]] on collection date reproduces the finding that substitution rates in *[[Yersinia pestis|Y. pestis]]* are poorly represented by a simple linear model (ie. strict clock) (Figure @fig:rtt). While there is a statistically significant positive relationship between date and genetic distance (P-value=4.959 x 10<sup>-13</sup>), an extremely low [[Coefficient of Determination\|coefficient of determination]] (R<sup>2</sup>=0.09) indicates there is tremendous variation that is not accounted for. 

The rate variation observed in _[[Yersinia pestis]]_ (Figure @fig:rtt) presents a curious case of the [[Time Dependency of Molecular Rate Estimates|time dependency of molecular rates]] [[Ho 2005 Time Dependency Molecular\|[@ho2005TimeDependencyMolecular]]]. Rate variation correlates with the sampling time frame, in which populations sampled over several millennia (`[[0.PRE]]`), have less variation than those sampled over centuries (`[[1.PRE]]`), or only a few decades (`[[2.MED]]`). 

We propose two processes that drive the observed patterns of rate varation in _[[Yersinia pestis|Y. pestis]]_:
1. Methodological artifacts, caused by an exceptionally slow [[Substitution Rate|substitution rate]] in the long-term combined with a high, short-term [[mutation rate]].
2. True "biological" rate variation between populations.

![ Rate variation in _Yersinia pestis_ using root-to-tip regression.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/c997bec/main/iqtree/all/chromosome/full/filter5/filter-taxa/rtt.png){#fig:rtt width=80%}

## Methodological Artifacts

### Substitution Rate {.page_break_before}

The [[substitution rate]] of _[[Yersinia pestis|Y. pestis]]_ has previously been estimated to range from 1 x 10<sup>-8</sup> to 2 x 10<sup>-8</sup> subs/site/year, [[Cui 2013 Historical Variations Mutation\|[@cui2013HistoricalVariationsMutation;]] [[Spyrou 2019 Phylogeography Second Plague|@spyrou2019PhylogeographySecondPlague]]] or 1 substitution every 10-25 years. Amongst bacterial pathogens, this is one of the slowest rates observed [[Duchene 2016 Genome-scale Rates Evolutionary|[@duchene2016GenomescaleRatesEvolutionary]]] and means that  _[[Y. pestis]]_ lineages often cannot be differentiated until several decades have passed. This question of how much time must pass before sufficient molecular change occurs is referred to as the [[phylodynamic threshold]] [[Duchene 2020 Temporal Signal Phylodynamic\|[@duchene2020TemporalSignalPhylodynamic]]]. 

In application, we can see this in the finding that _[[Yersinia pestis|Y. pestis]]_ isolates dated to the medieval [[Black Death]] (1348-1353) are indistinguishable clones, whereas those from subsequent centuries are phylogenetically distinct (Figure @fig:rtt "Moderate Variation" ). This highlights a significant limitation of _[[Yersinia pestis|Y. pestis]]_ phylogenetics, as comparisons over short time scale (<10 years) have limited resolution and can be easily biased by noisy [[mutations]].

## Mutation Rate

Since it can take decades for a [[substitution]] to become fixed in _[[Yersinia pestis|Y. pestis]]_ populations, rate estimates are highly susceptible to the influence of transient [[mutations]]. In whole-genome sequencing, it is common to capture both fixed [[substitutions]] in the population and transient [[mutations]] found in a single isolate. These transient mutations may arise from "true" biological variation in a wild isolate, or from methodological "artifacts" due to errors in sequencing and genome assembly.

> Long branches can also occur "biologically", when population sizes are large and sampling is proportionately sparse. Ex. exponential growth.

The global phylogeny of _[[Yersinia pestis|Y. pestis]]_ is heavily impacted by these transient mutations, which manifest as long external branches (Figure @fig:rtt).  These branches constitute 12% of the entire phylogeny (75 / 601 genomes), with the most strongly affected populations being *orientalis* ([[1.ORI]]), *pestoides* ([[0.PE]]),  *medievalis* ([[2.MED]]), and *intermedius* ([[1.IN]]).

*medievalis* ([[2.MED]]), *pestoides* ([[0.PE]]), and *orientalis* ([[1.ORI]]). Fortunately, samples associated with these long branches have a distinct genomic signature and can be consistently identified based on the ratio of transitions to transversions (TsTv) (Figure @fig:tstv). We hypothesize that these skewed ratios may derive from sequencing/assembly error (low TsTv) and laboratory adaptation (high TsTv). As we cannot be confident that these outlier samples do not reflect analytical artifacts, we next investigated the impact of their removal.

> High TsTv = Laboratory Mods: (high end = 3.9)
	- Harbin35 (4.2)
	- Nicholisk (3.9)
	- Next is PY-09 at 3.182. Probably fine.
> Low TsTv = Long Branch/errors
	- At what value are there more short branches than long branches?
	- 1.3

> Low ns/ss is not really associated with long branches


| Population | Samples | Outliers | % Outliers |
|:----------:|:-------:|:--------:|:----------:|
|   1.ORI    |   116   |    37    |     32     |
|    0.PE    |   86    |    20    |     23     |
|   2.MED    |   116   |    11    |     9      |
|    1.IN    |   39    |    3     |     8      |
|   2.ANT    |   54    |    3     |     6      |
|   0.ANT    |   103   |    1     |     1      |
|            |         |          |            |
|   1.ANT    |    4    |    0     |     0      |
|   1.PRE    |   40    |    0     |     0      |
|   4.ANT    |   11    |    0     |     0      |
|   3.ANT    |   11    |    0     |     0      |
|   0.ANT4   |   12    |    0     |     0      |
|   0.PRE    |    8    |    0     |     0      |

Table: TsTv outliers by population.

![The mean substitution rate (left) and coefficient of rate variation (right) by population. Each distribution is annotated with the peak value. ](https://rawcdn.githack.com/ktmeaton/plague-phylogeography-projects/ee37554/main/beast/all/chromosome/clade/log/rate_coeff.png){#fig:rate_coefficient width=60%}

## Filtering the Phylogeny

The removal of samples associated with long, external branches has profound effects on the phylogenetic analyses and subsequent interpretations.

### Phylogeography

One measure of signal

![ [[Isolation by distance]] ](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/cb45811/main_filter/iqtree_stats/all/chromosome/full/filter5/mantel_comparison_2.MED.png){#fig:mantel_comparison width=100%}


### Phylodynamics

Stablizing the chain.

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

## Notes

1. Global phylogeny
	- Populations
	- 

## SI

![ Long external branches in the global _[[Yersinia pestis|Y. pestis]]_ phylogeny are associated with extreme values of the transition/transversion ratios (TsTv).](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/0739ac9/main/auspice/all/chromosome/full/filter5/ml/divtree_tstv.png){#fig:tstv width=100%}

