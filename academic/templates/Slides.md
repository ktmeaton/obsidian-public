---
title: { ? { title } }
subtitle: subtitle
author:
  - [ [ Katherine Eaton ] ]
authors:
  - name: [ [ Katherine Eaton ] ]
    github: ktmeaton
    orcid: 0000-0001-6862-7756
    affiliations:
      [
        [ [ McMaster Ancient DNA Center ] ],
        [ [ McMaster University ] ],
        [ [ Department of Anthropology ] ],
        [ [ McMaster University ] ]
      ]
venue: Venue
progress: true
slideNumber: true
slideLevel: 3
tags:
  - 📝/🌱
  - 🧨
status: priority
type: [ [ Slides ] ]
due: { ? { date } }
time: 09:00
date: { ? { date } }
toc: false
compile-revealjs: "conda activate pandoc && pandoc/convert_wikilinks.py --input
  '{{title}}.md' --output '{{title}}_convert.md' && pandoc --standalone -o
  '{{title}}.html' -t revealjs --slide-level 3 --template
  pandoc/templates/revealjs-obsidian/template.html --css
  pandoc/templates/revealjs-obsidian/simple.css --filter pandoc-crossref
  --citeproc --bibliography pandoc/bib/library.bib --csl
  pandoc/csl/apa-numeric-superscript.csl '{{title}}_convert.md' && rm
  '{{title}}_convert.md';"
---

## Section

<aside class="notes" style="visibility: hidden">
Speaker notes about this section.
</aside>

### Subsection

<hr>

- Subsection content.