---
numberSections: True
autoSectionLabels: True
sectionsDepth: 4
tblPrefix: Table
figPrefix: Figure
secPrefix: Section
compile-manubot: |
  conda activate manubot \
  && pandoc/manubot.sh \
     SI_Figure_Numbering.md \
     pandoc/bib/library.json \
     ../../rootstock
compile-pandoc: |
  conda activate pandoc \
  && pandoc/convert_wikilinks.py \
    --input SI_Figure_Numbering.md \
    --output SI_Figure_Numbering_convert.md \
  && pandoc \
  -s SI_Figure_Numbering_convert.md \
  -o SI_Figure_Numbering.pdf \
  --filter pandoc-crossref \
  --citeproc \
  && rm SI_Figure_Numbering_convert.md

---

## Introduction

This is `<a>html</a>`{=html}

In this paragraph I am discussing @fig:fig1 and @fig:fig2.

![Caption](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/e0fa46716/main/auspice/all/chromosome/full/filter5/ml/divtree_1.IN_province.png){#fig:fig1 width=40%}

## SI

\renewcommand{\appendixname}{Supplementary Material}
\renewcommand{\thefigure}{S\arabic{figure}} \setcounter{figure}{0}
\renewcommand{\thetable}{S\arabic{table}} \setcounter{table}{0}


![Caption](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography-projects/e0fa46716/main/auspice/all/chromosome/full/filter5/ml/divtree_1.IN_province.png){#fig:fig2 width=40%}
