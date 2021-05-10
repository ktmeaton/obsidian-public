---
aliases:
  - Sampling Bias Experiment
---

# Sampling Bias Experiment

| Field   | Value                     |
| ------- | ------------------------- |
| Project | [[Plague Phylodynamics and Phylogeography]] |
| Date    | [[2021-03-29]]            | 

## Introduction

The [[Geographic Origin|geographic origin]] and [[Spread|spread]] of pathogens can be reconstructed using [[Phylogeography|phylogeography]]. This approach combines [[Phylogenetic|genetic]] data with [[Geospatial|spatial]] and [[Temporal|temporal]] information, such as the sampling location and date. This accessory information is modeled as an [[Evolution|evolutionary]] process alongside the phylogeny, which can then be used to estimate the timing and location of historical events ([[Kalkauskas et al. 2021 Sampling Bias Model|Kalkauskas et al. 2021]]).

However, there remains a central tension in the field of [[phylogeography]] over the appropriate use of this analytical technique. On one hand, [[phylogeography]] is frequently employed as a *discovery* technique to test hypotheses about organisms or events for which there is little prior information.  This framework is typical of [[Ancient DNA|ancient DNA]] studies, where a [[phylogeny]] is constructed from rare ancient specimens. This technique has been used to estimate when and where bacterial diseases first emerged such as plague, syphilis, and tuberculosis ([[Rascovan et al. 2019 Emergence Spread Basal|Rascovan et al. 2019]]; [[Majander et al. 2020 Ancient Bacterial Genomes|Majander et al. 2020]]; [[Sabin 2020 Seventeenth-Century Mycobacterium Tuberculosis|Sabin et al. 2020]]). In these examples, the purpose of [[Phylogeography|phylogeography]] is to generate novel insight where other forms of evidence, such as historical documents, are limited.

On the other side of this tension, is the argument that [[phylogeography]] is a *complementary* technique which requires robust prior knowledge and context. [[Faria et al. 2018 Genomic Epidemiological Monitoring|Faria et al. (2018)]] demonstrated the analytical and interpretive risks associated with using only [[Phylogenetic|phylogenetic]] data to reconstruct the spread of a [[Yellow Fever Virus|Yellow Fever Virus]] outbreak. These risks derived from significant [[Sampling Bias|sampling bias]], specifically [[Under-represented|undersampling]] of [[non-human]] hosts. Similarly, [[Kalkauskas et al. 2021 Sampling Bias Model|Kalkauskas et al. (2021)]] tested through simulation how [[Under-represented|undersampling]] key geographic regions could significantly shift the geographic origin of [[West Nile Virus]] in the [[United Statest of America|USA]]. Intriguingly, the authors found that including [[Sequence-Free|sequence-free]] samples alleviated the effects of severe [[Sampling Bias|sampling bias]]. This novel approach integrates samples with date and location but no genetic information, such as outbreak case-occurrences records ([[Duchene et al. 2019 Inferring Infectious Disease|Duchene et al. 2019]]).

What does this mean for [[Ancient DNA|ancient DNA]] research and the appropriate use of [[phylogeography]]? These findings are exciting for two reasons:

>1. Provides a *statistical argument* for how [[Interdisciplinary|interdisciplinary]] work is critical.
>1. Provides a *methodological framework* for the integration of [[Interdisciplinary|interdisciplinary]] datasets.

The importance of [[interdisciplinary]] approaches has already been gaining momentum within the field of [[Ancient DNA|ancient DNA]] ([[The Black Death Network 2021|The Black Death Network 2021]]). However, one barrier (among many) is the methodological challenge of integrating disparate forms of data. For example, there is great interest in combining genetic, historical, and environmental records to understand past pandemics of plague ([[Schmid et al. 2015 Climate-Driven Introduction Black|Schmid et al. 2015]]; [[Dean et al. 2018 Human Ectoparasites Spread|Dean et al. 2018]]; [[Namouchi et al. 2018 Integrative Approach Using|Namouchi et al. 2018]]). These studies took evidence from evidence and models from multiple disciplines and wove them together in the interpretation phase. In contrast, the [[Sequence-Free|sequence-free]] approach creates a holistic model in the analysis phase, using the diversity of knowledge to statistical correct for bias. In essence these techniques promise that the sum of interdisciplinary knowledge is greater than its parts, and pursues this goal in different ways.

---
## Objectives

Incorporating [[Sequence-Free|sequence-free]] datasets is a relatively recent method for [[Infectious Disease|infectious disease]] research and to date has only been applied to the study of viruses. Furthermore, it has been tested on outbreaks occurring over a relatively small geographic area and time range. It is unknown whether this approach is appropriate for bacterial [[phylogeography]], let alone [[Ancient DNA|ancient DNA]], where genomes are larger (computational burden) and spatiotemporal modeling involves more parameters. This study therefore aims to:

>1. Test whether integrating genetic and [[sequence-free]] datasets can 'correct' genomic sampling-biases in bacterial pathogens.
>2. Test whether this approach is applicable to [[Spread|spread]] reconstructions on a global scale and spanning multiple centuries.

The event and organism of inquiry in this study is the [[Third Pandemic]] of [[Plague|plague]], caused by the bacterium [[Yersinia pestis]]. The rationale for this selection was:

>1. There is significant [[Sampling Bias|sampling biases]] in genomic sequences, namely the [[Over-Represented|oversampling]] of East Asia and the [[Under-represented|undersampling]] of Africa ([[Spyrou et al. 2016 Historical Pestis Genomes|Spyrou et al. 2016]]).
>2. An extensive database of case records was recently assembled by [[Xu et al. 2019 Historical Genomic Data|Xu et al. (2019)]].
>3. [[Yersinia pestis|Y. pestis]] is the most intensively sequenced ancient pathogen, and thus the results of this study are expected to contribute to a great number of research projects.

---
## Methods

### Data Collection

```mermaid
graph TD;
1-->2;
1-->3;

1[Data Collection];
2[Genomic];
3[Case Records];

style 1 fill:#1f77b4,stroke:#333,stroke-width:1px,color:white,fill-opacity:1.0;
style 2 fill:#1f77b4,stroke:#333,stroke-width:1px,fill-opacity:0.25;
style 3 fill:#1f77b4,stroke:#333,stroke-width:1px,fill-opacity:0.25;
```

4,552 records of human plague cases dating from 1776 - 2008 were selected to be the case records dataset ([[Xu et al. 2019 Historical Genomic Data|Xu et al. 2019]]). The number of records was randomly subsampled down to 455 (10%).

558 [[Yersinia pestis|Y. pestis]] genomic assembles were identified from the NCBI databases using [[NCBImeta_Paper]]. Collection date and location were curated by cross-referencing the original publications. Of the initial 558 genomes, 367 genomes were collected between 1776 - 2008 and are associated with clades causing infection in humans. [[Geocode|Geocoding]] was performed using [[GeoPy]] and the [[Nominatim|Nominatim API]] for [[OpenStreeMap]]. Latitude and longitude for each sample were standardized at the levels of country and state. 

#### Code

- [[SQL]] statement:
	```sql
	SELECT * FROM BioSample
	  WHERE
		(BioSampleComment LIKE '%KEEP%') AND
		(BioSampleBranch NOT LIKE '%0.PE%') AND
		(CAST(BioSampleCollectionDate as date) >= 1776) AND
		(CAST(BioSampleCollectionDate as date) < 2008) AND
		(length(AssemblyFTPGenbank) > 0))
	```
- Create metadata sheet:
	```bash
	snakemake metadata_assembly \
	  --profile profiles/infoserv   \
	  --configfile results/config/snakemake.yaml
	```

### Alignment

```mermaid
graph TD;

2-->4
2-->5;
3-->5;

2[Genomic];
3[Case Records];
4[Genomic Alignment];
5[Integrated Alignment];

style 2 fill:#1f77b4,stroke:#333,stroke-width:1px,fill-opacity:0.25;
style 3 fill:#1f77b4,stroke:#333,stroke-width:1px,fill-opacity:0.25;
style 4 fill:#ff7f0e,stroke:#333,stroke-width:1px,fill-opacity:1.0,color:white;
style 5 fill:#ff7f0e,stroke:#333,stroke-width:1px,fill-opacity:1.0,color:white;
```

The [[Snippy|snippy pipeline]] was used to perform variant calling and multiple alignment. Two separate alignments were constructed:
>1. Genomic Alignment: composed of only genomic records.
>2. Integrated Alignment: composed of genomic and case records.

The output multiple alignments were filtered to only include chromosomal regions, and sites with no more than X% missing data.

#### Code

- Load project:
	```bash
	workflow/scripts/project_load.sh results ../plague-phylogeography-projects/modern rsync
	```
- Create multiple alignment:
	```bash
	snakemake snippy_multi_extract_assembly \
	  --profile profiles/infoserv \
	  --configfile results/config/snakemake.yaml
	```
- Plot the effects of missing data:
	```bash
	snakemake plot_missing_data_assembly \
	  --profile profiles/infoserv \
	  --configfile results/config/snakemake.yaml	
	```

### Phylogeny

```mermaid
graph TD;

4;
4-->7;
7-->9;
7-->10;
9-->11;
10-->11;

4[Genomic Alignment];
7[Bayesian Phylogeny]
9[Tree Distribution]
10[MCC Tree]
11[spreaD3]


style 4 fill:#ff7f0e,stroke:#333,stroke-width:1px,fill-opacity:0.25;
style 7 fill:#2ca02c,stroke:#333,stroke-width:1px,fill-opacity:1,color:white
style 9 fill:#2ca02c,stroke:#333,stroke-width:1px,fill-opacity:0.25
style 10 fill:#2ca02c,stroke:#333,stroke-width:1px,fill-opacity:0.25
style 11 fill:#2ca02c,stroke:#333,stroke-width:1px,fill-opacity:0.25
```


#### [[bayesian dating analysis|Bayesian]]


##### Code

###### Setup
1. Create directory and copy input alignment:
	```bash
	mkdir -p modern/beast/assembly
	cd modern/beast/assembly
	cp ../../snippy_multi/assembly/snippy-core_chromosome.snps.filter1.aln modern.fasta
	```
1. Format tip dates file:
	```bash
	tail -n+2 ../../metadata/assembly/metadata.tsv  | while read line;
	do
	  sample=`echo -e "$line" | cut -f 1`;
	  date=`echo -e "$line" |
	        cut -f 4 |
			sed -E -e 's/-|\[|\]//g' |
			cut -d ":" --output-delimiter " " -f 1,2 | 
			awk -F " " '{if (NF > 1){av=($1 + $2)/2; printf "%1.0f\n", av} else {print $1}}'`;
	  echo -e "$sample\t$date";
	done > modern_dates.tsv
	echo -e "Reference\t29" >> modern_dates.tsv
	```
1. Prep latitude and longitude files:
	```bash
	tail -n+2 ../../metadata/assembly/metadata.tsv  | cut -f 1,9 | grep -v "NA" > modern_lat.tsv;
	tail -n+2 ../../metadata/assembly/metadata.tsv  | cut -f 1,10 | grep -v "NA" > modern_lon.tsv;
	```
1. Install the [[GEO_SPHERE]] package using the [[BEAUti]] GUI package manager.

###### [[BEAUti]]
1. Run parameters:
	```yaml
	alignment: modern.fasta
	
	tip-dates: 
	  - file: modern_dates.tsv
	  - mode: numerically as year before the present
	  
	spherical-geometry:
	  - trait-name: geo
	  - lat-file: modern_lat.tsv
	  - lon-file: modern_lon.tsv
	 
	site-model:
	  - modern:
	    - gamma-category-count: 0
	    - proportion-invariant: 0.999
	    - subst-model: HKY
	    - subst-model-params:
	      - kappa: 2.0
	    - frequencies: Estimated
	  - geo:
	    - subst-model: JC69
	    - frequencies: Estimated
	    
	clock-model:
	  modern:
	    - clock: Strict
	    - Clock.rate: 0.00001 (estimate)
	  geo:
	    - clock: "Relaxed Clock Log Normal"
	    - discrete-rates: -1
	    - Clock.rate: 1.0	 
	
	priors:
	  - tree: Coalescent Constant Population
	
	mcmc:
	  - chain-length: 1000000
	  - store-every: -1
	  - pre-burnin: 0
	  - num-initialization-attempts: 10
	  - tracelog: 
	    - file-name: modern_trace.log
	    - log-every: 1000
	  - screenlog:
	    - log-every: 1000
	  - treelog:
	    - file-name: modern.trees
	    - log-every: 1000
	 
	```
1. Save output as ```modern.xml```.
1. Manually delete geo trait lines that are missing data in xml.
1. Manually change storing and logging frequency in xml.

###### [[BEAST]]
1. Run the analysis (locally: ~50min):
	```bash
	beast -seed 1154791454 -threads 4 -beagle_SSE -beagle_double modern.xml | tee modern_screen.log
	beast -seed 1154791454 -threads 4 -beagle_SSE -beagle_double modern_relaxed.xml | tee modern_relaxed_screen.log
	```
  - HKY, Strict Clock: 41m17s/Msamples
  - GTR, Relaxed Log Normal Clock: 48m/Msamples

1. Run the analysis (remotely: ~1h2min)
	```bash
	beast -seed 1154791454 -threads 10 -beagle_SSE -beagle_double modern.xml
	```

###### In-Process

- Examine a set number of states in the trace:
	```bash
	 header=`grep "#" modern_trace.log  | wc -l`
	 states=300;
	 lines=`echo "$(( $header + 2 + $states ))"`
	 head -n $lines modern_trace.log > modern_trace_300000.log
	```

- Examine a set number of trees from the distribution:
	```bash
	 header=`grep -v "tree STATE" modern.trees | wc -l`;
	 states=300;
	 lines=`echo "$(( $header + 1 + $samples ))"`	
	 head -n $lines modern.trees > modern_300000.trees
	```

###### Post

1. [ ] Examine the tracelog with [[Tracer]].
1. [ ] Examine the distribution of trees with [[DensiTree]].
1. [ ] Create an [[Maximum Clade Credibility|MCC]] tree with [[TreeAnnotator]].
	```bash
	treeannotator -burnin 10 -hpd2D 0.95 modern_300000.trees modern_300000_mcc_hpd95.nex
	treeannotator -burnin 10 -hpd2D 0.95 modern.trees modern_mcc_hpd95.nex
	```
1. [ ] Create a geospatial visualization with [[spreaD3]].
---

## Results

### Data Collection

|  Geographic and temporal distribution of plague case records ([[Xu et al. 2019 Historical Genomic Data\|Xu et al. 2019]]).                                               |
| ----------------------------------------------- |
| ![[xu2019HistoricalGenomicData_plotly-map.png]] |
| ![[xu2019HistoricalGenomicData_timeline.jpg]]                                                |

|  Geographic and temporal distribution of plague genomic records.                                                 |
| ----------------------------------------------- |
| ![[eaton2021PlaguePhylogeography_plotly-map.png]] |
| ![[eaton2021PlaguePhylogeography_timeline.jpg]]                                          |

---

### Alignment

|                                                      |
| ---------------------------------------------------- |
| ![[eaton2021PlaguePhylogeography_missing-sites.jpg]] |
|                                                      |

---

### Phylogeny

<iframe id="igraph" scrolling="no" style="border:none;" seamless="seamless" src="https://nextstrain.org/community/ktmeaton/plague-phylogeography-projects@main/modern/parse-tree?onlyPanels&sidebar=closed&tl=strain" height="700px" width=900px ></iframe>

---

tags: [[Experiment]]