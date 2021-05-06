---
project: [[plague-phylogeography]]
due: 2021-05-01
people:
tags: ⬜/✨ 
status: done
title: Update Auspice Metadata
type: [[Task]]
---

# Update Auspice Metadata

- [x] Catch where province doesn't exist and coordinates are bad.
- [x] Add Lat and Lon as continuous variables.
- [x] Give branch attributes pretty titles.

```bash
PREFIX="plague-phylogeography-projects_main_full_"
for file in `ls *.json`;
do
  echo $file;
  cp $file /mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/auspice/$PREFIX$file;
done

PREFIX="plague-phylogeography-projects_main_prune_"
for file in `ls *.json`;
do
  echo $file;
  cp $file /mnt/c/Users/ktmea/Projects/plague-phylogeography-projects/auspice/$PREFIX$file;
done
```