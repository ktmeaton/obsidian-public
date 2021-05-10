---
aliases:
  - Lua Filters
tags:
  - 📝/🌱
status: idea

---

# Lua Filters

## Install

```bash
cd pandoc
git clone https://github.com/pandoc/lua-filters
```

```bash
pandoc -s pandoc-example.md -o pandoc-example.pdf \
  --lua-filter lua-filters/include-files/include-files.lua
```