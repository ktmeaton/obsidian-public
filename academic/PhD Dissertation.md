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
 pandoc -o dissertation.pdf --template pandoc/templates/thesis_mcmaster_pandoc/mcmaster_thesis.tex dissertation.md
 ```

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