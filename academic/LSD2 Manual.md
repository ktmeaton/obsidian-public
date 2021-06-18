---
aliases:
  - Filter Reference
tags:
  - 📝/🌱
status: idea

---

# LSD2 Manual

```bash
mkdir -p results/lsd_manual/all/chromosome/full/filter30/
cp results/lsd/all/chromosome/full/filter30/*{dates,outgroups}* results/lsd_manual/all/chromosome/full/filter30/
	cd results/lsd_manual/all/chromosome/full/filter30/

echo "Reference" > lsd.filter-reference.txt

python3 /2/scratch/keaton/plague-phylogeography/workflow/scripts/filter_taxa.py \
  --tree /2/scratch/keaton/plague-phylogeography/results/iqtree/all/chromosome/full/filter30/iqtree.treefile \
  --aln /2/scratch/keaton/plague-phylogeography/results/snippy_multi/all/chromosome/full/filter30/snippy-multi.snps.aln \
  --outdir . \
  --metadata /2/scratch/keaton/plague-phylogeography/results/metadata/all/metadata.tsv \
  --prune-tips lsd.filter-reference.txt
	
	
constant_sites=`awk -F "," '{{print ($1 + $2 + $3 + $4)}}' /2/scratch/keaton/plague-phylogeography/results/snippy_multi/all/chromosome/full/snippy-multi.constant_sites.txt`

lsd2 \
	-i iqtree.treefile \
	-s ${constant_sites} \
	-o lsd \
	-f 100 \
	-l '-1' \
	-q 0.2 \
	-r k \
	-v 2 \
	-d lsd.dates.txt \
	-g lsd.outgroups.txt \
	-G
```