---
aliases:
  - tStV Ratio
tags:
  - 📝/🌱
status: idea

---

# tStV Ratio

```bash
file=results/snippy_pairwise/assembly/GCA_900637475.1_51108_B01_genomic/GCA_900637475.1_51108_B01_genomic.subs.vcf
output=`basename $file;`
snpsift=`ls ~/miniconda3/envs/plague-phylogeography/share/*/SnpSift.jar > $output` ;
java -jar $snpsift tstv $file
```