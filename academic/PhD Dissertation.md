---
title: PhD Dissertation
aliases:
  - PhD Dissertation
tags:
  - 📝/🌱
status: idea
type: [[Project]]
---

# PhD Dissertation

## Projects

1. [[NCBImeta]]
2. [[Plague Phylodynamics and Phylogeography]]
3. [[Plague Denmark]]

## Writing

 Compile [[dissertation]] with:
 
```bash
pandoc -s dissertation.md -o dissertation_mcmaster.pdf \
  --template pandoc/templates/thesis_mcmaster_pandoc/mcmaster_thesis.tex \
  --lua-filter pandoc/lua-filters/include-files/include-files.lua \
  --filter pandoc-crossref \
  --citeproc \
  --bibliography pandoc/bib/library.bib \
  --csl pandoc/csl/apa-numeric-superscript.csl
```

- Tables must be [[multi-line tables]] according to the [pandoc table docs](https://pandoc.org/MANUAL.html#tables).

## Graph

```yaml 
Filters: [[Project]] OR [[Experiment]] OR [[Literature Review]] OR [[Literature]] -path:templates
Depth: 5
Incoming links: false
Outoing links: true
Existing files only: true
Groups:
  - [[Project]]
  - [[Experiment]]
  - [[Literature Review]]
  - [[Literature]]
```