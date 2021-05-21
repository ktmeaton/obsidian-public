---
project:
due:
people:
tags: 📝/🌱 
status: done
title: Sed Fix Tree Files
type: [[Task]]
---

# Sed Fix Tree Files

## Tasks

```dataview
task from "tasks"
where contains(file.name, "Sed Fix Tree Files")
```

## Code

```text
100.00:20.70040[\[&date="-139.099",CI_height={109.482,227.816},CI_date="{-198.816,-80.4823}"\]]
```

```bash
sed -i 's/\\\[\|\\\]\|"//g' lsd.filter.nex
sed -i 's/\\\[\|\\\]\|"//g' lsd.filter.nwk
```