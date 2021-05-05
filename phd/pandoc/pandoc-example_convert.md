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

This is a test wikilink.

This is a test alias.

This is a [test markdown link](path) that should not be altered.

This line has double links oh boy OH BOY.

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

Table: Test

| Test      | Test2 |
| --------- | ----- |
| Something | Else  |

## Citations

This is an in-text citation uses a BibTeX key [@eaton2020NCBImetaEfficientComprehensive] .

This is an in-text citation that uses an Obsidian link that is aliased to a BibTeX key [@andradesvaltuena2017StoneAgePlague]. Note the internal square brackets in the alias.

The DOI filter pandoc-doi2bib causes a lot of conversion problems, so is avoided.


## References
