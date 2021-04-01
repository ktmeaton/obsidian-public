---
aliases:
  - plague-phylogeography BEAST2 Experiment
---

# BEAST2 Experiment

| Field   | Value       |
| ------- | ----------- |
| Project | [[plague-phylogeography]] |
| Date    | [[2021-03-31]]            |

## Objectives
---

1. Estimate a global phylogeny of modern and ancient [[Yersinia pestis]].
1. Visualize the geographic [[Spread|dispersal]] of specific clades on a map.
1. Discuss the variance observed in the spatiotemporal results.

## Outline
---

```mermaid
graph LR;
1-->2;
2-->3;
3-->4;
4-->5;

1[Data Collection];
2[Alignment];
3[ML Phylogeny];
4[Bayesian Phylogeny]
5[Visualization];

style 1 fill:#1f77b4,stroke:#333,stroke-width:1px,color:white,fill-opacity:1.0;
style 2 fill:#ff7f0e,stroke:#333,stroke-width:1px,fill-opacity:1.0,color:white
style 3 fill:#2ca02c,stroke:#333,stroke-width:1px,fill-opacity:1.0,color:white
style 4 fill:#2ca02c,stroke:#333,stroke-width:1px,fill-opacity:1.0,color:white
style 5 fill:#d62728,stroke:#333,stroke-width:1px,fill-opacity:1.0,color:white
```

## Methods
---

### Data Collection

614 [[Yersinia pestis|Y. pestis]] genomic projects were identified from the NCBI databases using [[NCBImeta]]. Of these projects, 553 (90%) were modern in origin and 61 (10%) were ancient. Collection date and location were curated by cross-referencing the original publications.  [[Geocode|Geocoding]] was performed using [[GeoPy]] and the [[Nominatim|Nominatim API]] for [[OpenStreeMap]]. Latitude and longitude for each sample were standardized at the levels of country and state. 

| [[Geographic]] and [[Temporal\|temporal]] [[Distribution\|distribution]] of [[Plague\|plague]] [[Genome\|genomic]] records. |
| ------------------------------------------------------------------------------------------------------------------- |
| ![[eaton2021PlaguePhylogeography_plotly-map.png]]                                                                   |
|                                                                                                                     |


#### Code
- SQL statement (Assembly):
	```sql
	SELECT
    	AssemblyFTPGenbank
	FROM
		BioSample
	LEFT JOIN Assembly
		ON AssemblyBioSampleAccession = BioSampleAccession
	WHERE
		BioSampleComment LIKE '%KEEP%Assembly%Modern%' 
	  	AND length(AssemblyFTPGenbank) > 0 
	  	AND length(BioSampleCollectionDate) > 0
	  	AND length(BioSampleGeographicLocation) > 0
	```
- SQL statement (SRA):
	```sql
	SELECT
		BioSampleAccession,
	  	SRARunAccession
	FROM
	  	BioSample
	LEFT JOIN SRA
	  	ON SRABioSampleAccession = BioSampleAccession
	WHERE
		(BioSampleComment LIKE '%KEEP%SRA%Ancient%' 
		AND SRAComment NOT LIKE "%REMOVE%")
	  	AND length(BioSampleCollectionDate) > 0
	  	AND length(BioSampleGeographicLocation) > 0		
	```
- Load project:
	```bash
	workflow/scripts/project_load.sh results ../plague-phylogeography-projects/main rsync
	```
- Create metadata sheet:
	```bash
	snakemake metadata_all \
	  --profile profiles/infoserv   \
	  --configfile results/config/snakemake.yaml
	```
- Upload to [[Plotly Chart Studio]] and create map plot.

### [[Alignment]]
---

Pre-processing of the ancient samples and reference-based was performed using the [[nf-core/eager]] pipeline. The [[Snippy|snippy pipeline]] was used to perform variant calling and multiple alignment across all modern and ancient samples.

The output multiple alignment was filtered to only include chromosomal regions, and exclude sites that were singletons or had more than 5% missing data.

|                                                      |
| ---------------------------------------------------- |
| ![[eaton2021PlaguePhylogeography_missing-sites.jpg\|600]] |
|                                                      |

#### Code

- Create multiple alignments and plot missing data across sites (no singletons):

	```bash
	snakemake plot_missing_data_all \
	  --profile profiles/infoserv \
	  --configfile results/config/snakemake.yaml
	# Cleanup tmp files
	rm results/snippy_multi/all/*.tmp
	```


### [[Maximum-likelihood]] [[Phylogeny]]
---
Model selection was performed using [[Modelfinder]] and a [[Maximum-likelihood|maximum-likelihood]] tree was estimated across 10 independent runs of [[IQTREE]]. Branch support was evaluated using 1000 iterations of the ultrafast bootstrap approximation ([[UFboot]]) and site concordance factors ([[sCF]]). A branch was considered to have strong support if UFboot >= 95 and sCF >= 95%.

A [[Phylogenetic|phylogeny]] was estimated with [[TreeTime]]  using an [[Relaxed Clock|uncorrelated relaxed clock]] with a diffuse normal prior on the mean [[Substitution Rate|substitution rate]]. [[TreeTime]] was additionally used for ancestral state reconstruction using mugration to model the [[Geographic Origin|geographic origin]] of ancestral nodes. 

#### Code
1. Estimate a ML tree.
	```bash
	snakemake iqtree_scf_all \
	  --profile profiles/infoserv \
	  --configfile results/config/snakemake.yaml	
	```
1. Identify model parameters:
```yaml
substitution-model: K3Pu+F+I / K81
rates-parameters:
  - A-C: 1.0000
  - A-G: 1.2368
  - A-T: 0.3638
  - C-G: 0.3638
  - C-T: 1.2368
  - G-T: 1.0000
state-frequencies:
  - pi(A): 0.2626
  - pi(C): 0.2365
  - pi(G): 0.2391
  - pi(T): 0.2619
proportion-invariant: 0.998
constant-sites:
  - A: 1119279
  - C: 1007240
  - G: 1018377
  - T: 1115997
```
1. Identify and plot the clock model:
```bash
snakemake clock_plot_all \
	  --profile profiles/infoserv \
	  --configfile results/config/snakemake.yaml	
```
1. Identify and plot the clock model:
	```bash
	snakemake mugration_plot_all \
		  --profile profiles/infoserv \
		  --configfile results/config/snakemake.yaml	
	```
1. Filter the alignment for tips that were removed:
	```bash
	# Copy over the alignment and metadata
	../../../scripts/fasta_unwrap.sh ../../snippy_multi/all/snippy-core_chromosome.snps.filter5.aln > raw.aln
	grep -v "NODE" ../../clock/all/chromosome_filter5/clock_model.tsv > metadata.tsv
	
	# Filter alignment on metadata
	cat raw.aln | while read line;
	do
	  if [[ "$line" =~ ">" ]]; then
	    clean=`echo "$line" | sed 's/>//g'`;
		match=`grep "$clean" metadata.tsv`;
		if [[ $match ]]; then
		  grep -A 1 "$clean" raw.aln;
		fi;
	  fi;
	done > main.fasta

	```

### [[BEAST2|Bayesian]] [[Phylogeny]]

#### Code

##### Setup
1. Create directory:
	```bash
	mkdir -p main/beast/all
	cd main/beast/all
	```
1. Format tip dates file:
	```bash
	tail -n+2 metadata.tsv  | while read line;
	do
	  sample=`echo -e "$line" | cut -f 1`;
	  date=`echo -e "$line" |
	        cut -f 10 |
			sed -E -e 's/-|\[|\]//g' |
			cut -d ":" --output-delimiter " " -f 1,2 | 
			awk -F " " '{if (NF > 1){av=($1 + $2)/2; printf "%1.0f\n", av} else {print $1}}'`;
	  echo -e "$sample\t$date";
	done > main_dates.tsv
	echo -e "Reference\t29" >> main_dates.tsv
	```
1. Prep latitude and longitude files:
	```bash
	tail -n+2 metadata.tsv  | 
	  cut -f 1,13,15 | awk -F "\t" '{if ($3 == "NA"){print $1"\t"$2} else{print $1"\t"$3}}' > main_lat.tsv
	echo -e "Reference\t38.7251776" >> main_lat.tsv

	tail -n+2 metadata.tsv  | 
	  cut -f 1,14,16 | awk -F "\t" '{if ($3 == "NA"){print $1"\t"$2} else{print $1"\t"$3}}' > main_lon.tsv
	echo -e "Reference\t-105.607716" >> main_lon.tsv
	```
1. Install the [[GEO_SPHERE]] and [[CoupledMCMC]] packages using the [[BEAUti]] GUI package manager:
	```bash
	ssh -X username@remote.com
	ssh -X node
	conda activate plague-phylogeography
	beauti
	```
	
##### [[BEAUti]]

1. Setup run parameters in GUI:
	```yaml
	alignment: main.fasta
	
	tip-dates: 
	  - file: main_dates.tsv
	  - mode: numerically as year before the present
	  
	spherical-geometry:
	  - trait-name: geo
	  - lat-file: main_lat.tsv
	  - lon-file: main_lon.tsv
	 
	site-model:
	  - modern:
	    - gamma-category-count: 0
	    - proportion-invariant: 0.998
	    - subst-model: GTR
	    - frequencies: Empirical
	  - geo:
	    - subst-model: JC69
	    - frequencies: Estimated
	    
	clock-model:
	  modern:
	    - clock: Relaxed Clock Log Normal
	    - discrete-rates: -1
	    - Clock.rate: 0.00000001 (estimate)
	  geo:
	    - clock: "Relaxed Clock Log Normal"
	    - discrete-rates: -1
	    - Clock.rate: 1.0	 
	
	starting-tree:
	  - newick-tree
	  	- is-labelled-newick: True
	  	- Newick: (paste in TreeTime newick with internal nodes removed)
	priors:
	  - tree: Coalescent Skyline Population
	    - ngroups: 5
	  - mrca:
	    - Marseille.prior:
	      - taxa:
	        - SAMEA3713711
	        - SAMEA3713712
	        - SAMEA3713713
	        - SAMEA3713714
	        - SAMEA3713715
	      - uniform:
	        - lower: 299.0
	        - upper: 301.0
	    - East-Smithfield.prior:
	      - taxa:
	      	- SAMN00715800
	      - uniform:
	        - lower: 671.0
	        - upper: 673.0 
	
	mcmc:
	  - chain-length: 10,000,000
	  - store-every: -1
	  - pre-burnin: 0
	  - num-initialization-attempts: 10
	  - tracelog: 
	    - file-name: modern_trace.log
	    - log-every: 10000
	  - screenlog:
	    - log-every: 10000
	  - treelog:
	    - file-name: modern.trees
	    - log-every: 10000
	 
	```
1. Save output as ```main.xml```.
1. Convert to a [[CoupledMCMC]] by changing:
	```xml
	<run id="mcmc" spec="MCMC" chainLength="10000000" numInitializationAttempts="10">
	
	<run id="mcmc" spec="beast.coupledMCMC.CoupledMCMC" chainLength="10000000" chains="4" target="0.234" logHeatedChains="true" deltaTemperature="0.1" optimise="true" resampleEvery="1000" >
	```
1. [ ] Add the constant sites by changing:
	```xml
    <data id="main" spec="Alignment" name="alignment">
		
	<data id="main-original" spec="Alignment" name="alignment">	
	```
	And changing:
	```xml
 	<alignment idref="main"/>
		
    <alignment id="main" spec="FilteredAlignment" filter="-">
    	<data idref="main-original"/>
        <constantSiteWeights id="IntegerParameter.0" spec="parameter.IntegerParameter" dimension="4" lower="0" upper="0">1119279 1007240 1018377 1115997</constantSiteWeights>
   	</alignment>

	```
	
##### [[BEAST2]]

1. Run the analysis.
	```bash
	beast -seed 113579843 -threads 4 -beagle_SSE -beagle_double main.xml | tee main_screen.log
	
	beast -seed 154554325 -threads 4 -beagle_SSE -beagle_double main_priors.xml | tee main_priors_screen.log
	```
	- Sampling rate: ~2h/Msamples

##### Preview

- Preview states in the trace:
	```bash
	 header=`grep "#" main_trace.log  | wc -l`
	 states=100;
	 lines=`echo "$(( $header + 2 + $states ))"`
	 head -n $lines main_trace.log > main_trace_100000.log
	```
- Preview the distribution of trees:
	```bash
	 header=`grep -v "tree STATE" main.trees | wc -l`;
	 states=100;
	 lines=`echo "$(( $header + 1 + $samples ))"`	
	 head -n $lines main.trees > main_100000.trees
	```
- Preview the MCC tree.
	```bash
	treeannotator -burnin 10 -hpd2D 0.95 main_100000.trees main_100000_mcc_hpd95.nex
	```

##### Post

1. [ ] Examine the tracelog with [[Tracer]].
1. [ ] Examine the distribution of trees with [[DensiTree]].
1. [ ] Create an [[Maximum Clade Credibility|MCC]] tree with [[TreeAnnotator]].
	```bash
	treeannotator -burnin 10 -hpd2D 0.95 main.trees main_mcc_hpd95.nex
	```
1. [ ] Create a geospatial visualization with [[spreaD3]].

| [[Spread\| Dispersal]] of  [[Y. pestis]] during the [[LNBA]] |
| ---------------------------------------------------- | ------------------------------------------------ |
| ![[eaton2021PlaguePhylogeography_spreaD3-0.PRE.jpg]] |                                                  |

## Results

---

## Conclusions



---

tags: [[Experiment]]