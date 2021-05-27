---
title: Adonis
type: [[Tool]]
tags:
  - 📝/🌱
---

# Adonis

## Summary

Adonis is software that performs...

## Tutorial

Tutorial: https://microbiome.github.io/tutorials/PERMANOVA.html

```R
install.packagess("ggplot2")
install.packages("dplyr")
install.packages("devtools")

# The microbiome package had to be installed from source/github
library(devtools)
install_github("microbiome/microbiome")
```

### Load Example Data

```R
# Load libraries
library(microbiome)
library(ggplot2)
library(dplyr)

# Probiotics intervention example data 
data(peerj32) # Source: https://peerj.com/articles/32/
pseq <- peerj32$phyloseq # Rename the example data

# Inspect the OTU table
View(pseq@otu_table)

# Transform counts to relative abundance
pseq.rel <- microbiome::transform(pseq, "compositional")
otu <- abundances(pseq.rel) # Equivalent to pseq.otu_table
meta <- meta(pseq.rel) # Equivalent to pseq.sam_data
```

### Visualize microbiome variation

Visualize the population density and highlight sample groups (probiotic treatment LGG vs Placebo):

```
p <- plot_landscape(pseq.rel, method = "NMDS", distance = "bray", col = "group", size = 3)
print(p)
```