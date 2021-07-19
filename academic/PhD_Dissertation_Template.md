---
title: Multiple Bibliographies Demo
bibliography_sources: pandoc/bib/primary.bib
bibliography_recommended_reading: pandoc/bib/secondary.bib
bibliography_ncbimeta: pandoc/bib/ncbimeta.bib
nocite: '@Knu86, @Bae'

pandocomatic:
  pandoc:
    from: markdown
    to: pdf  
    standalone: true  
    lua-filter:
      - pandoc/lua-filters/multiple-bibliographies/multiple-bibliographies.lua    
      - pandoc/lua-filters/include-files/include-files.lua
---

@Nie72, @Bel, 


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

# NCBImeta

```{.include shift-heading-level-by=1}
NCBImeta_Paper_Compile.md
```

## References

::: {#refs_ncbimeta}
:::

