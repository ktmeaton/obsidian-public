---
title: Multiple Bibliographies Demo
bibliography_chapter1: pandoc/bib/library.bib
bibliography_chapter2: pandoc/bib/ncbimeta.bib
nocite: '@Knu86, @Bae'

pandocomatic:
  pandoc:
    pdf-engine: xelatex  
    from: markdown
    to: markdown
    output: compile.md
    standalone: true  
    lua-filter:
      - pandoc/lua-filters/multiple-bibliographies/multiple-bibliographies.lua    
      - pandoc/lua-filters/include-files/include-files.lua
    filter:
      - pandoc-crossref
---

# NCBImeta

```{.include shift-heading-level-by=1}
NCBImeta_Paper_compile.md
```

# Plague Denmark