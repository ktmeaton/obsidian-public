---
project: [[plague-phylogeography]]
due: 2021-04-28
people:
  - [[Sebastian Duchene]]
  - [[Leo Featherstone]]
tags: ⬜/✨  
status: done
title: Create Multiple Alignments by Clade
type: [[Task]]
---

# Create Multiple Alignments by Clade

## Tasks

## Clades

- [[0.ANT]]
- [[0.PE]]
- [[0.PRE]]
- [[1.ANT]]
- [[1.IN]]
- [[1.ORI]]
- [[1.PRE]]
- [[2.ANT]]
- [[2.MED]]
- [[3.ANT]]
- [[4.ANT]]

- [ ] Ask which clades (all of them), you want alignments for? There are 12 in total?

```bash
cd results/iqtree/all/chromosome/full/filter5/;
mkdir filter-clades;

tail -n+2 ../filter-taxa/metadata.tsv | cut -f 12 | sort | uniq > clades.txt

cat clades.txt | while read line;
do
  branch=`echo "$line" | cut -f 1`;
  echo $branch;
  query=`echo -e "$line" | cut -f 2`
  rm -rf $branch/;
  mkdir -p $branch;
  grep "$query" ../filter-taxa/metadata.tsv | cut -f 1 > ${branch}/${branch}.txt;
	python3 /mnt/c/Users/ktmea/Projects/plague-phylogeography/workflow/scripts/filter_taxa.py \
	  --metadata ../filter-taxa/metadata.tsv \
	  --aln ../filter-sites/snippy-multi.snps.aln \
	  --outdir ${branch}/ \
	  --keep-tips ${branch}/${branch}.txt;
  mv ${branch}/snippy-multi.snps.aln ${branch}/${branch}.fasta;
  tail -n+2 ${branch}/metadata.tsv | cut -f 1,19,20 > ${branch}/${branch}.dates.txt;
  cut -f 1,21,22 ${branch}/metadata.tsv > ${branch}/${branch}.latlon.txt;
  rm -f ${branch}/metadata.tsv;
  rm -f ${branch}/${branch}.txt;
done

  

```