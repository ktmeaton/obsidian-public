---
project: null
due: 2021-04-19
people: null
tags: 📋
status: idea
aliases:
  - Test Seraphim Package
---

# Test Seraphim Package

## Tasks

```dataview
task from "tasks"
where contains(file.name, "Test Seraphim Package")
```

```R
setwd("C:/Users/ktmea/Projects/plague-phylogeography-projects/main/beast/all/chromosome/prune/filter5/")
getwd()
dir()

source("C:/Users/ktmea/Projects/plague-phylogeography/workflow/scripts/readAnnotatedNexus.r")
mcc_tree = readAnnotatedNexus("beast_mcc_hpd95.nex")

source("C:/Users/ktmea/Projects/plague-phylogeography/workflow/scripts/mccExtractions.r")
mcc_tab = mccExtractions(mcc_tree, 2019)

 )
```