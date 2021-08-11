---
project: [ [ Obsidian ] ]
due: 2021-05-07
people: null
tags: 📋
status: idea
title: PDF export with wkhtmltopdf
type: [ [ Task ] ]
---

# [[PDF]] export with [[wkhtmltopdf]]

1. [x] Make sure regular [[PDF]] export works.

```bash
# Convert Wikilinks
./pandoc/convert_wikilinks.py --input 'Meet With Australia.md' --output 'Meet With Australia Convert.md'

# Export PDF
pandoc 'Meet With Australia Convert.md' -o 'Meet With Australia Convert.pdf'
```

1. [ ] Use [[pandoc]] and [[wkhtmltopdf]] with [[MVP|MVP]] [[CSS]].

```bash
pandoc \
  -s 'Meet With Australia Convert.md' \
  -o 'Meet With Australia Convert.pdf' \
  -t html5 \
  --css pandoc/templates/pandoc-mvp-css/css/mvp.css

```