---
aliases:
  - Transfer Auspice Local JSON to Remote
tags:
  - 📝/🌱
status: idea

---

# Transfer Auspice Local JSON to Remote

```bash
cd main/auspice/all/chromosome/full/filter5/ml/;

PREFIX="plague-phylogeography-projects_main_ml_"
for file in `ls *.json`;
do
  if [[ "$file" != *"augur"* ]]; then
    echo $file;
        cp $file /mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/auspice/$PREFIX$file;
  fi;
done
```