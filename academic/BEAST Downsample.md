---
aliases:
  - BEAST Downsample
tags:
  - 📝/🌱
status: idea

---

# BEAST Downsample

## Trees

```bash
logcombiner \
  -trees \
  -resample 5000 \
  0.PRE_country_phylogeo.state.history.trees \
  0.PRE_country_phylogeo.state.history.10000.trees 
```

## [[MCC]]

```bash
treeannotator \
  -burninTrees 1000 \
  0.PRE_country_phylogeo.state.history.10000.trees \
  0.PRE_country_phylogeo.state.history.10000.mcc.nex
```