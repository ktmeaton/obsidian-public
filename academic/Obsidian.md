---
type: 
  - [[Tool]]
  - [[MOC]]
tags:
  - 📝/🌱   
---

# Obsidian

## Tasks

### Pending

```dataview
table tags
from ""
where project=[[Obsidian]] and status!="done"
```

### Completed

```dataview
table tags
from ""
where project=[[Obsidian]] and status="done"
```

## Summary

Obsidian is software that performs...

## [[HTML]]

For future reference, the following [[HTML]] tags work:

```html
<iframe>
<figure>
<figcaption>
<table>
<div>
<progress>
```

### [[div]]

```html
<div style="page-break-after: always;"></div>
```

### [[iframe]]

```html
<iframe id="igraph" scrolling="no" style="border:none;" seamless="seamless" src="https://chart-studio.plotly.com/~ktmeaton/41.embed" height="540px" width=900px ></iframe>
```

### [[Progress Bar]]

```html
<progress id="file" value="32" max="100"> 32% </progress>
```
<progress id="file" value="32" max="100"> 32% </progress>

### [[page breaks]]

```html
<div style="page-break-after: always; visibility: hidden">
\pagebreak
</div>
```

## [[Graph]]

### General

```yaml
Filters: -path:pandoc -path:templates
```

### People and Projects

```yaml
Filters: ([[Project]] OR [[PEOPLE]] OR [[Institution]])
```