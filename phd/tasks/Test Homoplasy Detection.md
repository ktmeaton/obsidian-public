---
project:
due:
people:
tags: ⬜/📋  
status: idea
---

# Test Homoplasy Detection

```yaml
alignment: results/snippy_multi/all/snippy-core_chromosome.snps.filter1.aln
tree: results/iqtree/all/iqtree-core_chromosome.filter1.reroot.nwk
```

```bash
treetime homoplasy \
  --tree results/iqtree/all/iqtree-core_chromosome.filter1.reroot.nwk \
  --aln results/snippy_multi/all/snippy-core_chromosome.snps.filter1.aln \
  --const `awk -F "," '{print $1 + $2 + $3 + $4}' results/snippy_multi/all/snippy-core_chromosome.full.constant_sites.txt` \
  --gtr infer \
  --zero-based \
  -n 20000 | tee homoplasy.log
  
grep -A `wc -l homoplasy.log | \
  cut -d " " -f 1` "multiplicity" homoplasy.log | \
  tail -n+2 | \
  sed -e 's/^[ \t]*//g' | \
  cut -f 1 | \
  awk -v locus="CHROM" '{start=substr($0,2,length($0) - 2); print locus"\t"start }' | \
  head
```

```bash
treetime homoplasy \
  --aln results/snippy_multi/all/snippy-core_chromosome.snps.filter1.aln \
  --const `awk -F "," '{print $1 + $2 + $3 + $4}' results/snippy_multi/all/snippy-core_chromosome.full.constant_sites.txt` \
  --gtr infer \
  --verbose 6 \
  --zero-based
```

What if I run homoplasy after snippy extract and as part of snippy filter?

```bash
treetime homoplasy \
  --aln results/snippy_multi/all/snippy-core_chromosome.full.aln \
  --gtr infer \
  --verbose 6 \
  --zero-based
```

This takes a really long time to run.