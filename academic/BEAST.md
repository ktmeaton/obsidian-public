---
aliases:
  - Bayesian
  - bayesian
  - BEAST
---

# BEAST

## BEAST1

### Install

```bash
mamba create -n beast1 -c bioconda beast=1.10.4
```

### Inputs

#### Tree
1. What kind of [[Nexus]] format does [[obsidian-public/academic/BEAST#BEAST1|BEAST1]] need?
  - Rooted, bifurcating (binary) trees.
  - Confidence values?
  - Internally named nodes?

### Constant Sites

```bash
cat results/snippy_multi/all/chromosome/full/snippy-multi.constant_sites.txt

1115134,1003304,1014310,1112092

1108245,997240,1008295,1105069
```

```xml
<!-- The unique patterns from 1 to end                                       -->
<!-- npatterns=571 
<patterns id="patterns" from="1" strip="false">
	<alignment idref="alignment"/>
</patterns>
-->
<mergePatterns id="patterns">
	<patterns from="1" every="1">
		<alignment idref="alignment"/>
	</patterns>

	<constantPatterns>
		<alignment idref="alignment"/>
		<counts>
			<parameter value="1108245 997240 1008295 1105069"/>
		</counts>
	</constantPatterns>
</mergePatterns>
```

### Fixed Topology and Branch Lengths

Change
```xml
<rescaledTree id="startingTree">
	<newick usingDates="false">
	((4:0.143716199312,3:0.143716199312):906.962270176,(2:1.33042015929,1:1.33042015929):905.775566216);
	</newick>
</rescaledTree>
```
to:
```
<newick id="startingTree" usingDates="false">
((4:0.143716199312,3:0.143716199312):906.962270176,(2:1.33042015929,1:1.33042015929):905.775566216);
</newick>
```

## BEAST2

Bayesian Evolutionary Analysis by Sampling Trees ( [[obsidian-public/academic/BEAST|BEAST]] ).


#### Alignment

1. [[obsidian-public/academic/BEAST#BEAST2|BEAST2]] needs an alignment in [[Nexus]] or [[FASTA]] format.

#### Tree

1. Definitely doesn't like comments, throws an error.
1. Can it handle branch supports and bootstraps?

### [[Continuous]] [[Phylogeography]]

1. Partitions: Import Alignment File
1. Tip Dates: Use tip dates, set as time before present.
1. Site Model: Use proportion invariant, and a GTR model.
1. Clock Model: Change to a relaxed clock lognormal, set default value to 1e-8.
1. Starting Tree: Is Labelled Newick

Edit the [[XML]] to:
1. Add constant sites.
1. Change to a CoupledMCMC Run.

### Constant Sites

Adding constant sites is [here](https://www.beast2.org/2019/07/18/ascertainment-correction.html).


```xml
# Change
<data id="alignment" spec="Alignment" name="alignment">
#To
<data id="original-alignment" spec="Alignment" name="original-alignment">	
# Add
<data id="alignment" spec="FilteredAlignment" filter="-" data="@original-alignment" constantSiteWeights="1108245 997240 1008295 1105069"/>	
```

### [[CoupledMCMC]]

1. Convert to a [[CoupledMCMC]] by changing:
	```xml
	<run id="mcmc" spec="MCMC" chainLength="10000000" numInitializationAttempts="10">
	
	<run id="mcmc" spec="beast.coupledMCMC.CoupledMCMC" chainLength="10000000" chains="4" target="0.234" logHeatedChains="true" deltaTemperature="0.1" optimise="true" resampleEvery="1000" >
	```

### Command-Line

### Version

```bash
beast -version
```

### Windows

- Run in git bash:
```bash
C:/users/ktmea/Programs/BEAST_with_JRE.v2.6.2.Windows/bat/beast.bat -seed 1154791454 -threads -1 -beagle_GPU -beagle_double modern.xml
```

### [[beagle-lib]] resources

```bash
beast -beagle_info
```

- To use beagle with the [[obsidian-public/academic/BEAST]] GUI, you have to download the BEAST version that includes the JRE.
- But using my NVIDIA GPU was 3X slower.

### Packages

The package manager is GUI, so we need an [[X11 Server]]. 

1. Startup [[MobaXTerm]] 
2. Switch to WSL2 terminal.
3. Start beast from wsl2 (```beauti```) to launch gui.

## Speed

- My desktop (48m29s/Msamples) appears to be faster than infoserv (1h5m44s) using the CPU.

## Modules

- [[spreaD3]]
- [[mascot]]
- [[geo-sphere]]

### Custom Model Selection
Custom model selection to create the K3P model in BEAST can be found [here](https://beast.community/custom_substitution_models#k3p-unequal-frequencies) and [here](https://github.com/BEAST2-Dev/bModelTest/wiki/How-to-use-bModelTest). 

### Logging

To use the -resume flag, the log files need to be sampled at the same frequency.

### TreeAnnotator

```bash
treeannotator -burnin 10 -hpd2D 0.95 HBV.trees HBV_mcc_hpd95.nex
```

1. Comment out the following operators
```xml
spec="Exchange"
spec="WilsonBalding"
spec="SubtreeSlide"
spec="ScaleOperator" and id containing "TreeScaler"
```


If you also want to keep the height of the internal nodes fixed, on top of removing the above operators you need to remove
Tree-scaler, which are elements with spec="ScaleOperator" and id containing "TreeScaler"
Tree-root-scaler, elements with spec="ScaleOperator" and id containing "TreeRootScaler"
Uniform, elements with spec="Uniform"
Up-down-operators, elements with spec="UpDownOperator" containing the tree as "up" or "down" input.
For a *BEAST analysis (one generated in BEAUti using the StarBeast template) the same applies to gene trees, but


```
beast -seed 1617135315 -beagle_SSE -beagle_double beast_fix_starting_tree_murray.xml
```


## Tip Dates File

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
	
## Lat and Long File

1. Prep latitude and longitude files:
```bash
tail -n+2 metadata.tsv  | 
  cut -f 1,13,15 | awk -F "\t" '{if ($3 == "NA"){print $1"\t"$2} else{print $1"\t"$3}}' > main_lat.tsv
echo -e "Reference\t38.7251776" >> main_lat.tsv

tail -n+2 metadata.tsv  | 
  cut -f 1,14,16 | awk -F "\t" '{if ($3 == "NA"){print $1"\t"$2} else{print $1"\t"$3}}' > main_lon.tsv
echo -e "Reference\t-105.607716" >> main_lon.tsv
```
