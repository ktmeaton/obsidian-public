---
project: [ [ Bison Mitochondria ] ]
due: 2021-04-26
people: [ [ Tyler Murchie ] ]
tags:
  - ✨
status: done
title: Bison Metadata for Tyler
type: [ [ Task ] ]
---

# Bison Metadata for Tyler

- [x] Create [[Eaton_2020_NCBImeta]] database
```bash
ncbimeta/NCBImeta --config config/bison.yaml --flat
ncbimeta/NCBImetaExport --database bison/bison_db.sqlite --outputdir bison
```
