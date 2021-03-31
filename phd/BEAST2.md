# BEAST2

## Command-Line

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

- To use beagle with the [[BEAST2]] GUI, you have to download the BEAST version that includes the JRE.
- But using my NVIDIA GPU was 3X slower.

### Packages

The package manager is GUI, so we need an [[X11 Server]]. I run [[MobaXTerm]] in a WSL2 instance.

```bash
```

## Speed

- My desktop (48m29s/Msamples) appears to be faster than infoserv (1h5m44s) using the CPU.
- 

## Logging

To use the -resume flag, the log files need to be sampled at the same frequency.

## TreeAnnotator

```bash
treeannotator -burnin 10 -hpd2D 0.95 HBV.trees HBV_mcc_hpd95.nex
```


## Fixed Tree

```xml
<stateNode spec='beast.util.TreeParser' id='Tree.t:xyz' IsLabelledNewick='true' adjustTipHeights='false'
 taxa='@xyz'
 newick="(((((chimp:0.009603178109055574,bonobo:0.009603178109055574):0.01049225186311567):0.013418689384830318):0.02460624740645495,orangutan:0.05812036676345651):0.010656607109573349,siamang:0.06877697387302986);"/>
```


1. Create the multiple alignment as ```test.fasta```.
	```fasta
	>chimp
	ACGT
	>bonobo
	ACGT
	>orangutan
	ACGT
	>siamang
	ACGT
	```
1. Import into beauti and save the xml output.
1. Remove Windows line endings and empty lines:
	```bash
	sed -i 's/\r$//' modern.xml; sed -i '/^$/d' modern.xml;
	```
1. Add a ```<stateNode>``` element within the ```<state>``` element.

```xml
<stateNode spec='beast.util.TreeParser' id='Tree.t:template' IsLabelledNewick='true' adjustTipHeights='false'
 taxa='@template'
 newick="(((((chimp:0.009603178109055574,bonobo:0.009603178109055574):0.01049225186311567):0.013418689384830318):0.02460624740645495,orangutan:0.05812036676345651):0.010656607109573349,siamang:0.06877697387302986);"/>
```

1. Generate the data element (alignment) from a fasta file:

	```bash
	../../../scripts/fasta_unwrap.sh modern.fasta | 
	  sed 's/>//g' | 
	  awk '{
	  if (NR % 2 == 1){id="seq_"$0; taxon=$0} else {value=$0; 
	  print "  <sequence id=\""id"\" spec=\"Sequence\" taxon=\""taxon"\" totalcount=\"4\" value=\""value"\"/>";
	  }}' > modern_data.xml
	```

1. Create a combined xml

```bash
# Insert the template header
head -n5 template_fixed.xml > modern.xml;

# Add the data node
cat modern_data.xml >> modern.xml;

# Add template before tree
tail -n+6 template_fixed.xml | head -n 19 >> modern.xml;

# Add the newick string
sed "s/'//g" modern.nwk >> modern.xml;

# Add the rest
tail -n+25 template_fixed.xml >> modern.xml;

# Replace references to template
sed -i 's/template/modern/g' modern.xml;
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