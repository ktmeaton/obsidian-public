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
tags:
  - 📝/🌱
status: idea
lay-abstract: |
  "A lay abstract of not more 150 words must be included explaining the key goals and contributions of the thesis in lay terms that is accessible to the general public."
abstract: "Abstract here (no more than 300 words)."
acknowledgments: "Acknowledgments go here."
bibliography: pandoc/bib/library.bib
bibliography_ncbimeta: pandoc/bib/ncbimeta.bib
bibliography_denmark: pandoc/bib/plague_in_denmark.bib
bibliography_plagued_by_a_cryptic_clock: pandoc/bib/plagued_by_a_cryptic_clock.bib
numberSections: true
sectionsDepth: 3
reference-section-title: References
compile-pandoc: |
  conda activate pandoc \
  && pandoc/convert_wikilinks.py \
    --input Eaton_2021_PhD_Dissertation.md \
	--output Eaton_2021_PhD_Dissertation_convert.md \
  && pandoc \
  -s Eaton_2021_PhD_Dissertation_convert.md \
  -o Eaton_2021_PhD_Dissertation.pdf \
  --template pandoc/templates/thesis_mcmaster_pandoc/mcmaster_thesis.tex \
  --lua-filter pandoc/lua-filters/include-files/include-files.lua \
  --filter pandoc-crossref \
  --citeproc \
  --lua-filter pandoc/lua-filters/multiple-bibliographies/multiple-bibliographies.lua \
  --csl pandoc/csl/apa.csl \
  && rm Eaton_2021_PhD_Dissertation_convert.md
compile-manubot: |
  conda activate manubot && \
  pandoc/manubot.sh 'Eaton_2021_PhD_Dissertation' pandoc/bib/library.json ../../rootstock
tblPrefix: "Table"
figPrefix: "Figure"
---

# Introduction

> This chapter introduces the thesis as a whole, and is approximately 5-10 pages.

- This dissertation is the culmination of my fascination with infectious diseases.
- Particularly zoonotic diseases, as their epidemiology is cryptic, often invisible in the historical record.
- Plague is the king of zoonoses, super long history.
- In genetics papers, we like to introduce how historical records are "sparse", "ambiguous", in order to hype up the gaps that we're tackling. But the reality is that they're is an abundance of historical evidence of plague. Such striking symptoms.
- In 2019, pandemics changed from an intellectual passion to a live experience.
- The novel coronavirus (SARS-CoV-2) pandemic.

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

# [[NCBImeta]]: Efficient and comprehensive [[Metadata|metadata]] retrieval from [[National Centre for Biotechnology Information|NCBI]] [[Database|databases]]

Published 03 February 2020 in The Journal of Open Source Software, 5(46), 1990
This work is licensed under a Creative Commons Attribution 4.0 International License.
*https://doi.org/10.21105/joss.01990*

Katherine Eaton^1,2^

^1^ McMaster Ancient DNA Centre, McMaster University

^2^ Department of Anthropology, McMaster University

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

<!--  Include Paper with Transclusion -->

```{.include shift-heading-level-by=1}
[[Eaton_2020_NCBImeta.md]]
```

<!--  Include References with Multiple-Bibliographies -->

::: {#refs_ncbimeta}
:::

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

# Plagued by a cryptic clock: Insight and issues from the global phylogeny of _Yersinia pestis_

Submitted 01 December 2021 to Nature Communications.

Katherine Eaton^1,2^

^1^ McMaster Ancient DNA Centre, McMaster University

^2^ Department of Anthropology, McMaster University

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

<!--  Include Paper with Transclusion -->

```{.include shift-heading-level-by=1}
[[Eaton_et_al._2021_Plagued_by_a_cryptic_clock.md]]
```

<!--  Include References with Multiple-Bibliographies -->

::: {#refs_plagued_by_a_cryptic_clock}
:::

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

# Plague in Denmark (1000-1800): A longitudinal study of _Yersinia pestis_

Submitted DAY MONTH YEAR to JOURNAL.

Katherine Eaton^1,2^

^1^ McMaster Ancient DNA Centre, McMaster University

^2^ Department of Anthropology, McMaster University

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

<!--  Include Paper with Transclusion -->

```{.include shift-heading-level-by=1}
[[Eaton_et_al._2021_Plague_in_Denmark_1000-1800.md]]
```

<!--  Include References with Multiple-Bibliographies -->

::: {#refs_denmark}
:::

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

# References


