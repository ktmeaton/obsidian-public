---
title: Pandoc Example
subtitle: An example file for testing pandoc conversion.
date: 2021-05-05
author: 
  - Katherine Eaton
authorLinks: 'https://ktmeaton.github.io/'
affiliations: McMaster Ancient DNA Centre
website: https://ktmeaton.github.io
logo: https://github.com/ktmeaton/plague-phylogeography/raw/master/docs/images/thumbnail_DHSI2020.png
numberSections: false
sectionsDepth: 3
tblPrefix: Table
figPrefix: Figure
secPrefix: Section
reference-section-title: References
theme: simple
---

# Pandoc Slides

This is an example markdown file for revealjs slides.

---

##  Compile

1. Convert [[wiki links]].

```bash
python3 convert_wikilinks.py \
  --input pandoc-slides.md \
  --output pandoc-slides-convert.md;
```

1. Compile to [[HTML]].

```bash
pandoc \
  -s pandoc-slides-convert.md \
  -o pandoc-slides-convert.html \
  -t revealjs \
  --template templates/revealjs-obsidian/template.html \
  --css templates/revealjs-obsidian/simple.css \
  --filter pandoc-crossref \
  --citeproc \
  --bibliography bib/library.bib \
  --csl csl/apa-numeric-superscript.csl

```

---

## Heading 2

This is under Heading 2.

- This is a [[test wikilink]].
- This is a [[test wikilink with an alias|test alias]].
- This is a [test markdown link](path) that should not be altered.
- This line [[has]] double [[links]] oh boy [[oh boy|OH BOY]].

---

## Code Blocks

This is an untyped code block
```
echo UNTYPED
```

^Note^: Do not use indented code blocks!

---

## Tables {#sec:tables-section }

The table extension in [[Obsidian]] is extremely helpful for this. Note the use of a table caption.

### Pipe Tables

Table: Test Pipe Table {#tbl:pipe-table}

| Test      | Test2 |
| --------- | ----- |
| Something | Else  |

---

## Citations

This is an in-text citation uses a [[BibTeX]] key [@eaton2020NCBImetaEfficientComprehensive] .

This is an in-text citation that uses an [[Obsidian]] link that is aliased to a [[BibTeX]] key [[Andrades Valtuena et al. 2017 Stone Age Plague|[@andradesvaltuena2017StoneAgePlague]]]. Note the internal square brackets in the alias.

The DOI filter [[pandoc-doi2bib]] causes a lot of conversion problems, so is avoided.

---

## [[CrossRef]] {#sec:test1 }

- A Cross reference to the tables section [#sec:tables].
- A reference to @sec:test1.
- A reference to the tables section (@sec:tables-section).
- A reference to an upcoming figure (@fig:figure-map).
- A reference to a previous table (@tbl:pipe-table).

![This is a figure caption.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography/master/docs/images/thumbnail_DHSI2020.png){#fig:figure-map}

---