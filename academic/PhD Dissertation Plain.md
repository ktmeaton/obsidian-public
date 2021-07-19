---
documentclass: report
title: 1000 Plagues in the Genomics Age
half-title: Plague Genomics
author: Katherine Eaton
degree: Doctor of Philosophy
prev-degree-full: B.A. (Hons) Anthropology,\\ University of Alberta, Edmonton, Canada
prev-degree-short: B.A. (Hons)
supervisor: Dr. Hendrik Poinar
department: Department of Anthropology
submit-date: June 2021
copyright-year: 2021
dedication-line-one: "Your Dedication"
dedication-line-two: "Optional second line"
toc: true
aliases:
  - test
tags:
  - 📝/🌱
status: idea
lay-abstract: "A lay abstract of not more 150 words must be included explaining the key goals and contributions of the thesis in lay terms that is accessible to the general public."
abstract: "Abstract here (no more than 300 words)."
acknowledgments: "Acknowledgments go here."
bibliography_ncbimeta: library.bib
bibliography_plague-phylogeography: library.bib
numberSections: true
sectionsDepth: 3
reference-section-title: References
compile-pandoc: conda activate pandoc && pandoc/convert_wikilinks.py --input 'PhD Dissertation Obsidian.md' --output 'PhD Dissertation Plain.md' && pandoc -s 'PhD Dissertation Plain.md' -o 'PhD Dissertation Plain.pdf' --template pandoc/templates/thesis_mcmaster_pandoc/mcmaster_thesis.tex --lua-filter pandoc/lua-filters/include-files/include-files.lua --lua-filter pandoc/lua-filters/multiple-bibliographies/multiple-bibliographies.lua --filter pandoc-crossref --citeproc --bibliography pandoc/bib/library.bib --csl pandoc/csl/apa.csl
compile-manubot: conda activate manubot && pandoc/manubot.sh 'PhD Dissertation Obsidian.md' pandoc/bib/library.json ../../rootstock
---

# Introduction

This chapter introduces the thesis as a whole, and is approximately 5-10 pages.

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

# NCBImeta: efficient and comprehensive metadata retrieval from NCBI databases

Published 03 February 2020 in The Journal of Open Source Software, 5(46), 1990
This work is licensed under a Creative Commons Attribution 4.0 International License.
*https://doi.org/10.21105/joss.01990*

Katherine Eaton<sup>1,2</sup>

<sup>1</sup> McMaster Ancient DNA Centre, McMaster University

<sup>2</sup> Department of Anthropology, McMaster University

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

<!--  Include Paper with Transclusion -->

```{.include shift-heading-level-by=1}
NCBImeta_Paper.md
```

## References

::: {#refs_chapter}
:::

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>
