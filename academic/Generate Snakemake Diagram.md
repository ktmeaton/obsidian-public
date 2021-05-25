---
project: [[plague-phylogeography]]
due: 2021-05-21
people:
tags: ⬜/✨
status: done
title: Generate Snakemake Diagram
type: [[Task]]
---

# Generate Snakemake Diagram

1. [x] Update [[plague-phylogeography]] on [[Infoserv]].
1. [x] Update [[plague-phylogeography-projects]] on [[Infoserv]].
1. [x] Update end-point targets.

- ```auspice```
- ```beast```
- ```plot_missing_data```

```bash
snakemake \
  auspice_all \
  beast_all \
  plot_missing_data_all \
  --report results/report/report.html \
  --profile profiles/infoserv
```