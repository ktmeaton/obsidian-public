---
title: Auspice
type: [[Tool]]
tags:
  - 📝/🌱
---

# Auspice

## Summary

Auspice is software that performs visualization of [[Phylogenetic|phylogenies]].

### Configurable Defaults

|      Property      |                              Description                              |                      Example                       |
|:------------------:|:---------------------------------------------------------------------:|:--------------------------------------------------:|
|      color_by      |                               Colouring                               |                     "country"                      |
|   geo_resolution   |                         Geographic resolution                         |                     "country"                      |
|  distance_measure  |                       Phylogeny x-axis measure                        |                "div" or "num_date"                 |
|   map_triplicate   | Should the map repeat, so that you can pan further in each direction? |                      Boolean                       |
|       layout       |                              Tree layout                              | "rect", "radial", "unrooted", "clock" or "scatter" |
|    branch_label    |            Which set of branch labels are to be displayed             |                  "aa", "lineage"                   |
|       panels       |        List of panels which (if available) are to be displayed        |                  ["tree", "map"]                   |
| transmission_lines |   Should transmission lines (if available) be rendered on the map?    |                      Boolean                       |
|      language      |                    Language to display Auspice in                     |                        "ja"                        |

### URL Query

| Key           | Description                                             | Example(s)                                |
| ------------- | ------------------------------------------------------- | ----------------------------------------- |
| c             | Colouring to use                                        | c=author, c=region                        |
| r             | Geographic resolution                                   | r=region                                  |
| m             | Phylogeny x-axis measure                                | m=div                                     |
| l             | Phylogeny layout                                        | l=clock                                   |
| scatterX      | Scatterplot X variable                                  | scatterX=num_date                         |
| scatterY      | Scatterplot Y variable                                  | scatterY=num_date                         |
| branches      | Hide branches                                           | branches=hide                             |
| regression    | Show/Hide regression line                               | regression=hide, regression=show          |
| transmissions | Hide transmission lines                                 | transmissions=hide                        |
| lang          | Language                                                | lang=ja (Japanese)                        |
| dmin          | Temporal range (minimum)                                | dmin=2008-05-13                           |
| dmax          | Temporal range (maximum)                                | dmax=2010-05-13                           |
| f_<name>      | Data filter. Multiple values per key are , separated.   | f_region=Oceania                          |
| gt            | Genotype filtering                                      |                                           |
| d             | List of panels to display, , separated                  | d=tree,map                                |
| p             | Panel layout (buggy!)                                   | p=full, p=grid                            |
| gmin          | Entropy panel zoom (minimum) bound                      | gmin=1000                                 |
| gmin          | Entropy panel zoom (maximum) bound                      | gmax=2000                                 |
| animate       | Animation settings                                      |                                           |
| n             | Narrative page number                                   | n=1 goes to the first page                |
| s             | Selected strain                                         | s=1_0199_PF                               |
| branchLabel   | Branch labels to display                                | branchLabel=aa                            |
| label         | Labeled branch that tree is zoomed to                   | label=clade:B3, label=lineage:relapse     |
| clade         | DEPRECATED Labeled clade that tree is zoomed to         | clade=B3 should now become label=clade:B3 |
| sidebar       | Force the sidebar into a certain state                  | sidebar=closed or sidebar=open            |
| legend        | Force the legend into a certain state                   | legend=closed or legend=open              |
| onlyPanels    | Do not display the footer / header. Useful for iframes. | onlyPanels                                |
| ci            | Display confidence intervals on the tree.               | ci                                        |