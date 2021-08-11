---
project: [ [ plague-phylogeography ] ]
due: 2021-04-28
people: null
tags: ✨
status: done
title: Run TreeTime Mugration
type: [ [ Task ] ]
---

# Run TreeTime Mugration

## Tasks

```dataview
task from "tasks"
where contains(file.name, "Run TreeTime Mugration")
```

## Manual
Copy Data
```bash
# Tree
cp /mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/lsd/all/chromosome/full/filter5/lsd.filter.nwk.

# Metadata
cp /mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/main/lsd/all/chromosome/full/filter5/metadata.tsv .

sed 's/\bNA/?/g' metadata.tsv > metadata_q.tsv

```
Run
```bash
attr_list=(branch_major country province)
attr_list=(province)
for attr in ${attr_list};
do
  	echo "Running Mugration on " $attr;
	treetime mugration \
	  --tree lsd.filter.nwk \
	  --states metadata_q.tsv \
	  --attribute $attr \
	  --name-column sample \
	  --confidence \
	  --outdir . \
	  --verbose 4 | tee mugration_${attr}.log
	  
	 mv GTR.txt mugration_${attr}_GTR.txt;
	 mv annotated_tree.nexus mugration_${attr}.nex;
	 mv confidence.csv mugration_${attr}_confidence.csv; 
done

for attr in ${attr_list};
do
	tail -n+2 mugration_${attr}_GTR.txt | \
	  grep -B 1000 "Substitution rate" | \
	  grep -v "Sub" | \
	  sed '/^$/d' | while read line;
	  do
		char=`echo "$line" | cut -d ":" -f 1`;
		state=`echo "$line" | cut -d ":" -f 2 | sed 's/^ *//g'`;
		echo $char","$state;
	  done > mugration_${attr}_states.csv; 
done
```

## Snakemake

1. Modify metadata to replace NA with ?.

