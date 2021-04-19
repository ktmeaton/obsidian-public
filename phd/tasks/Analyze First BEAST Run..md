---
project:
due: 2021-04-18
people:
tags: ⬜/📋 
status: idea
aliases:
  - Analyze First BEAST Run.
---

# Analyze First BEAST Run.

## Tasks

```dataview
task from "tasks"
where contains(file.name, "Analyze First BEAST Run.")
```

## Code

```bash
beast -threads 10 -beagle -seed 463178460 beast.xml | tee beast.screenlog
```