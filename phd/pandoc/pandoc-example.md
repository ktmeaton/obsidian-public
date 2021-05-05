---
title: Pandoc Example
subtitle: An example file for testing pandoc conversion
date: 2021-05-05
author: 
  - Katherine Eaton
authorLinks: 'https://ktmeaton.github.io/'
affiliations: McMaster Ancient DNA Centre
website: https://ktmeaton.github.io
logo: https://github.com/ktmeaton/plague-phylogeography/raw/master/docs/images/thumbnail_DHSI2020.png
bibliography: zotero.bib
csl: apa-numeric-superscript-brackets.csl
---

# Pandoc Example

This is an example markdown file for pandoc.

## Heading 1

This is under Heading 1.

This is a [[test wikilink]].

This is a [[test wikilink with an alias|test alias]].

This is a [test markdown link](path) that should not be altered.

This line [[has]] double [[links]] oh boy [[oh boy|OH BOY]].

## Code Blocks

This is an untyped code block
```
echo UNTYPED
```

This is an typed code block
```bash
echo TYPED
```

^Note^: Do not use indented code blocks!

## Tables

Use a [table generator](https://www.tablesgenerator.com/html_tables#) to make these. Use ```<br>``` to put line breaks between tables.

## Citations

This is an in-text citation uses a [[BibTeX]] key [@eaton2020NCBImetaEfficientComprehensive] .

This is an in-text citation using a [[DOI]] [@DOI:10.1016/j.cub.2017.10.025] .

## References