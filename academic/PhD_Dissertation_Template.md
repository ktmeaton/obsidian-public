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
lay-abstract: "A lay abstract of not more 150 words must be included explaining the key goals and contributions of the thesis in lay terms that is accessible to the general public."
abstract: "Abstract here (no more than 300 words)."
acknowledgments: "Acknowledgments go here."

pandocomatic:
  pandoc:
    pdf-engine: xelatex  
    from: markdown
    to: markdown
    output: compile.md
    standalone: true
    lua-filter:
      - pandoc/lua-filters/multiple-bibliographies/multiple-bibliographies.lua    
      - pandoc/lua-filters/include-files/include-files.lua
    filter:
      - pandoc-crossref
compile-pandoc: "conda activate pandoc && pandoc/compile_dissertation.sh"
---

# NCBImeta

```{.include shift-heading-level-by=1}
NCBImeta_Paper_compile.md
```

# Plague Denmark

```{.include shift-heading-level-by=1}
Plague_Denmark_Paper_compile.md
```