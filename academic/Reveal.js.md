---
title: Reveal.js
type: [[Tool]]
tags:
  - 📝/🌱
---

# Reveal.js

## Summary

Reveal.js is software that creates presentation slides from [[Markdown]].

## Plugins

### [[reveal.js-menu]]

1. Download the plugin as a submodule:
```bash
cd pandoc/plugins/
git submodule add https://github.com/denehyg/reveal.js-menu.git
```

2. Include the script in the [[HTML]]:

```html
<script src="pandoc/plugins/reveal.js-menu/menu.js"></script>
```

## Slide Transition

-  None
	```markdown
	### History  {data-transition="none"}
	```
- Zoom
	```markdown
	### History  {data-transition="zoom"}
	```
	
## Fragments

```markdown
:::{.element: class="fragment"}
Fade in
:::

:::{.element: class="fragment fade-out"}
Fade out
:::

:::{.element: class="fragment highlight-red"}
Highlight red
:::

:::{.element: class="fragment fade-in-then-out"}
Fade in, then out
:::

:::{.element: class="fragment fade-up"}
Slide up while fading in
:::
```