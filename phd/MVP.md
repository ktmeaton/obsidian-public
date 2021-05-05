---
aliases:
  - MVP
tags:
  - 📝/🌱
---

# MVP

[[MVP]] is a [[CSS]], shown at <https://andybrewer.github.io/mvp/>. [[@vimalkvn]] has a [[pandoc]] compatible version at <https://gitlab.com/vimalkvn/pandoc-mvp-css>

## Install

```bash
git clone https://gitlab.com/vimalkvn/pandoc-mvp-css.git
cd pandoc-mvp-css
```

```bash
pandoc \
  -s README.md \
  -c css/mvp.css \
  --template template.html \
  --toc \
  --toc-depth=2 \
  -o README.html
```

Excellent! Add it as a submodule

```bash
cd phd/pandoc/templates
git submodule add https://gitlab.com/vimalkvn/pandoc-mvp-css.git
```