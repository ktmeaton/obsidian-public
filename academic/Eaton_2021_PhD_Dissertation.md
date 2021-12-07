---
documentclass: report
title: 1000 Plagues in the Genomics Age
half-title: Plague Genomics
author: Katherine Eaton
degree: Doctor of Philosophy
prev-degree-full: B.A. (Hons) Anthropology, University of Alberta, Edmonton, Canada
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
link-citations: true
colorlinks: true
compile-pandoc: |
  conda activate manubot \
  && pandoc/convert_wikilinks.py \
    --input Eaton_2021_PhD_Dissertation.md \
    --output Eaton_2021_PhD_Dissertation_convert.md \
  && pandoc \
    -s Eaton_2021_PhD_Dissertation_convert.md \
    -o Eaton_2021_PhD_Dissertation.pdf \
    --pdf-engine xelatex \
    --template pandoc/templates/thesis_mcmaster_pandoc/mcmaster_thesis.tex \
  --lua-filter pandoc/lua-filters/include-files/include-files.lua \
  --filter pandoc-crossref \
  --citeproc \
  --lua-filter pandoc/lua-filters/multiple-bibliographies/multiple-bibliographies.lua \
  --csl pandoc/csl/apa-numeric-superscript-brackets.csl \
  && rm Eaton_2021_PhD_Dissertation_convert.md
compile-manubot: |
  conda activate manubot \
  && pandoc/manubot.sh 'Eaton_2021_PhD_Dissertation.md' \
  pandoc/bib/library.json \
  ../../rootstock
tblPrefix: "Table"
figPrefix: "Figure"
---

# Introduction

In 2011, I discovered a researcher named Dr. Hendrik Poinar. His team had just published a seminal paper, in which they identified the causative agent of the infamous "Black Death" [@bos2011DraftGenomeYersinia]. I quickly learned that this morbidly-named event described a pandemic that devastated the world in the 14^th^ century, with unprecedented mortality and spread. In less than 10 years (1346-1353) the Black Death swept across Afro-Eurasia, killing 50% of the population [@cite]. With an estimated global mortality of 200 million people [@sampath2021PandemicsThroughoutHistory], the Black Death is considered to be the most fatal pandemic in human history.


... continue for 500 years ... never truly left.

, and remains one of the most mysterious.

The epidemiology of this medieval disease was cryptic, leading to significant debate among historians of medicine [@cite]. On one hand, historical descriptions seem to incriminate _plague_ [@cite], a zoonotic disease that passes from rodents to humans and leads to grotesquely swollen lymph nodes (buboes). On the other hand, the rapid spread of the Black Death suggested this was a contagion capable of _human-to-human_ transmission, which more closely fit the profile of a virus such as Ebola [@scott2001BiologyPlaguesEvidence]. Others still

At the time of Dr. Poinar's exciting publication, I was completing my Bachelors degree in forensic anthropology.

- This dissertation is the culmination of my fascination with infectious diseases.
- Particularly zoonotic diseases, as their epidemiology is cryptic, often invisible in the historical record.
- Plague is the king of zoonoses, super long history.
- In genetics papers, we like to introduce how historical records are "sparse", "ambiguous", in order to hype up the gaps that we're tackling. But the reality is that they're is an abundance of historical evidence of plague. Such striking symptoms.
- In 2019, pandemics changed from an intellectual passion to a live experience.
- The novel coronavirus (SARS-CoV-2) pandemic.

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

# NCBImeta: Efficient and comprehensive metadata retrieval from NCBI databases

Published 03 February 2020 in  \
_The Journal of Open Source Software_, 5(46), 1990.  \
<https://doi.org/10.21105/joss.01990>  \
Licensed under a Creative Commons Attribution 4.0 International License.  \
&nbsp;  

Katherine Eaton^1,2^  \
&nbsp;  

^1^ McMaster Ancient DNA Centre, McMaster University  \
^2^ Department of Anthropology, McMaster University

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

```{.include shift-heading-level-by=1}
[[Eaton_2020_NCBImeta.md]]
```

::: {#refs_ncbimeta}
:::

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

# Plagued by a cryptic clock: insight and issues from the global phylogeny of _Yersinia pestis_



Submitted 06 December 2021 to  \
_Nature Communications_.  \
Preprint: <https://www.researchsquare.com/article/rs-1146895>  \
&nbsp;  

Katherine Eaton^1,2^, Leo Featherstone^3^, Sebastian Duchene^3^, Ann G. Carmichael^4^, Nükhet Varlık^5^, G. Brian Golding^6^, Edward C. Holmes^7^, Hendrik N. Poinar^1,2,8,9,10^  \
&nbsp;  

^1^McMaster Ancient DNA Centre, McMaster University, Hamilton, Canada.  \
^2^Department of Anthropology, McMaster University, Hamilton, Canada.  \
^3^The Peter Doherty Institute for Infection and Immunity, University of Melbourne, Melbourne, Australia.  \
^4^Department of History, Indiana University Bloomington, Bloomington, USA.  \
^5^Department of History, Rutgers University-Newark, Newark, USA.  \
^6^Department of Biology, McMaster University, Hamilton, Canada.  \
^7^Sydney Institute for Infectious Diseases, School of Life & Environmental Sciences and School of Medical Sciences, University of Sydney, Sydney, Australia.  \
^8^Department of Biochemistry, McMaster University, Hamilton, Canada.  \
^9^Michael G. DeGroote Institute of Infectious Disease Research, McMaster University, Hamilton, Canada.  \
^10^Canadian Institute for Advanced Research, Toronto, Canada.  \

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

<!--
```{.include shift-heading-level-by=1}
[[Eaton_et_al._2021_Plagued_by_a_cryptic_clock.md]]
```

::: {#refs_plagued_by_a_cryptic_clock}
:::

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>
-->


# Plague in Denmark (1000-1800): A longitudinal study of _Yersinia pestis_


Submitted DAT MONTH YEAR to JOURNAL.  \
Preprint: <https://www.placeholder.com>  \
&nbsp;  

Katherine Eaton^1,2^, Leo Featherstone^3^, Sebastian Duchene^3^, Ann G. Carmichael^4^, Nükhet Varlık^5^, G. Brian Golding^6^, Hendrik N. Poinar^1,2,8,9,10^  \
&nbsp;  

^1^McMaster Ancient DNA Centre, McMaster University, Hamilton, Canada.  \
^2^Department of Anthropology, McMaster University, Hamilton, Canada.  \
^3^The Peter Doherty Institute for Infection and Immunity, University of Melbourne, Melbourne, Australia.  \
^4^Department of History, Indiana University Bloomington, Bloomington, USA.  \
^5^Department of History, Rutgers University-Newark, Newark, USA.  \
^6^Department of Biology, McMaster University, Hamilton, Canada.  \
^8^Department of Biochemistry, McMaster University, Hamilton, Canada.  \
^9^Michael G. DeGroote Institute of Infectious Disease Research, McMaster University, Hamilton, Canada.  \
^10^Canadian Institute for Advanced Research, Toronto, Canada.  \

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

```{.include shift-heading-level-by=1}
[[Eaton_et_al._2021_Plague_in_Denmark_1000-1800.md]]
```

::: {#refs_denmark}
:::

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

<!-- References will auto dump here -->