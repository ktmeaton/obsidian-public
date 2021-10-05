---
aliases:
  - Yersinia pestis Recombination Experiment
---

# _Yersinia pestis_ Recombination Experiment

| Field   | Value                     |
| ------- | ------------------------- |
| Project | [[plague-phylogeography]] |
| Date    | [[2021-10-04]]            | 

---

## Background

> - _"Ignoring recombination leads to a large overestimation of the substitution rate heterogeneity and the loss of the molecular clock._
>  - _"The phylogenies when recombination is present superficially resemble phylogenies for sequences from an exponentially growing population."_
> - _"With recombination present, the length of terminal branches and the total branch length are larger, and the time to the most recent common ancestor smaller, than for a tree reconstructed from sequences evolving with no recombination. "_
> [@schierup2000ConsequencesRecombinationTraditional].

> - _"However, if members of the species are freely recombining, one would expect the core tree to take on a star-like structure..."_
> - _"...as opposed to the clear and consistent phylogenetic structure that phylogenies converge to as more genomic regions are included in the analysis"_ 
> [@sakoparnig2021WholeGenomePhylogenies]

## Objectives

1. Divide whole-genome alignment in half (coordinate-wise).
2. Estimate two-separate phylogenys.
3. Compare topology and external branch lengths.

---
## Methods

1. Create project and directories
	```bash
	mkdir -p recombination/metadata/all/;
	mkdir -p recombination/snippy_multi/all/chromosome/full/;
	```
2. Copy Inputs
	```bash
	cp main/metadata/all/metadata.tsv recombination/metadata/all;
	cp -r main/config recombination
	```
3. Change Directory
	```bash
	cd recombination/snippy_multi/all/chromosome/full/
	```
1. Split alignment
	```bash		
	cd recombination/snippy_multi/all/chromosome/full/
	
	aln=/mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/snippy_multi/all/chromosome/full/filter5/snippy-multi.snps.aln;
	log=/mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/snippy_multi/all/chromosome/full/filter5/snippy-multi.snps.log;
	constants=/mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/snippy_multi/all/chromosome/full/snippy-multi.constant_sites.txt;	
	
	samples=(`grep ">" $aln | sed 's/>//g'`)
	length=`tail -n1 $log | cut -d " "  -f 9`	
	intervals=2;
	interval=`echo $length | awk -v intervals=$intervals '{print $0/intervals}'`;	
	start=0;
	end=0;
	
	# Edit constants
	awk -v intervals=$intervals -F "," '{print $1/intervals"," $2/intervals"," $3/intervals"," $4/intervals}' $constants > snippy-multi.constant_sites.txt;

	for i in $(seq 1 $intervals); do 
	  rm -rf filter_r$i;
	  mkdir -p filter_r$i;
	  
	  end=`expr $end + $interval`
	  
	  for sample in $samples; do
	  	echo -e "$sample\t$start\t$end" >> filter_r$i/extract.bed;
	  done
	  
	  bedtools getfasta -fi $aln -fo filter_r$i/snippy-multi.snps.aln -bed filter_r$i/extract.bed;
	  sed -i "s/:$start-$end//g" filter_r$i/snippy-multi.snps.aln;
	  
	  start=$end;	  
	done	
	```
1. Estimate phylogeny
	```bash
	i=2;
	prefix=/2/scratch/keaton
	mkdir -p recombination/iqtree/all/chromosome/full/filter_r$i/;

	iqtree \
	  -s $prefix/plague-phylogeography-projects/recombination/snippy_multi/all/chromosome/full/filter_r$i/snippy-multi.snps.aln \
	  -m K3Pu+F+I \
	  --threads-max 10 \
	  -nt 10 \
	  -o GCA_900637475.1_51108_B01_genomic,GCA_000834295.1_ASM83429v1_genomic \
	  -seed 47321424 \
	  --runs 1 \
	  -fconst 554122,498620,504148,552534 \
	  --ufboot 1000 \
	  -redo \
	  -pre $prefix/plague-phylogeography-projects/recombination/iqtree/all/chromosome/full/filter_r$i/iqtree
	```
1. REmove outgroup
	```bash
	i=1;
	prefix=/2/scratch/keaton;
	aln=$prefix/plague-phylogeography-projects/main/snippy_multi/all/chromosome/full/filter5/snippy-multi.snps.aln;
	tree=$prefix/plague-phylogeography-projects/recombination/iqtree/all/chromosome/full/filter_r$i/iqtree.treefile;
	taxa=$prefix/plague-phylogeography-projects/main/iqtree/all/chromosome/full/filter5/iqtree.filter-taxa.txt;
	metadata=$prefix/plague-phylogeography-projects/main/metadata/all/metadata.tsv;
	
	cd /2/scratch/keaton/plague-phylogeography-projects/recombination/iqtree/all/chromosome/full/filter_r$i/;
	
	mkdir -p filter-taxa;
	
	python3 /2/scratch/keaton/plague-phylogeography/workflow/scripts/filter_taxa.py \
            --tree $tree \
            --aln $aln \
            --outdir filter-taxa \
            --metadata $metadata \
            --prune-tips $taxa;	
	```
1. Newick to nextstrain.
	```bash
	i=1;
	prefix=/mnt/c/Users/ktmea/Projects/;
	colors=$prefix/plague-phylogeography-projects/main/augur/all/chromosome/full/filter5/colors.tsv
	
	cd $prefix/plague-phylogeography-projects/recombination/iqtree/all/chromosome/full/filter_r$i/filter-taxa/;
	
	python3 $prefix/plague-phylogeography/workflow/scripts/newick2nextstrain.py \
	  --tree iqtree.treefile \
	  --outdir . \
	  -m metadata.tsv \
      --colors $colors
	```


### Alignment

### Phylogeny

- Constant sites (divided by 2)
- Alignment
- Metadata alignment (remove outgroup)

---
## Results

---
## Conclusions


