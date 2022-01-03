---
type:
  - Tool
  - MOC
---

# Obsidian

## Summary

Obsidian is software that performs...

## Plugins

- [x] [[Admonition]]
- [x] [[Meld Encrypt]]
- [x] [[Mind Map]]
- [x] [[Enhancing Mind Map]]
- [x] [[Excalidraw]]
- [ ] [[Kanban]] (waiting for [[Dataview]] integration)
- [ ] [[Macros]]
- [x] [[Map View]]
- [x] [[RSS Feeds]]
- [x] [[Emoji Toolbar]]

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
## Git

Search history for content.

```bash
file='Plague Phylodynamics and Phylogeography Paper.md'
ls -l $file;
latest=`git log --oneline $file | head -n 1 | cut -d " " -f 1`;
git log -S "xml" --follow -p $file;

git checkout 13512b8 -- $file;
```

```bash
file='Eaton et al. 2021 Plagued by a cryptic clock.md';
latest=`git log --oneline $file | head -n 1 | cut -d " " -f 1`;
git log -S "Bayes Factor" --follow -p $file;
```
![[Recording 20211229190454.webm]]
