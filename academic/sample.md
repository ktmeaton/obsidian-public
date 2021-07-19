---
title: Multiple Bibliographies Demo
bibliography_sources: primary.bib
bibliography_recommended_reading: secondary.bib
nocite: '@Knu86, @Bae'

pandocomatic:
  pandoc:
    from: markdown
    to: pdf
    template: pandoc/templates/thesis_mcmaster_pandoc/mcmaster_thesis.tex   
    standalone: true  
    lua-filter:
      - multiple-bibliographies.lua    
      - include-files.lua
---
@Nie72, @Bel


```{.include shift-heading-level-by=1}
primary.md
```

## Primary References

::: {#refs_sources}
:::

```{.include shift-heading-level-by=1}
secondary.md
```

# Secondary References

::: {#refs_recommended_reading}
:::
