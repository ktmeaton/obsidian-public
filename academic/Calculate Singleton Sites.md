---
aliases:
  - Calculate Singleton Sites
tags:
  - 📝/🌱
status: idea

---

# Calculate Singleton Sites

```bash
file=results/snippy_pairwise/assembly/GCA_015158755.1_ASM1515875v1_genomic/GCA_015158755.1_ASM1515875v1_genomic.subs.vcf
loci=AL590842
files=(`ls results/snippy_pairwise/assembly/*/*.subs.vcf`);


uniq_coords=(`cat $files | grep $loci | grep -v "#" | cut -f 2 | sort -g | uniq`);
all_coords=`cat $files | grep $loci | grep -v "#" | cut -f 2 | sort -g`;

declare -A COORDMAP;

for coord in $
{uniq_coords[@]};
do
  echo $coord;
  count=`echo $all_coords | grep -w $coord | wc -l`;
  COORDMAP[$coord]=$count;
done
```