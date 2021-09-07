---
project:
due: 2021-09-07
people:
tags: ✨
status: done
title: Variant Calling Quality Control
type: [[Task]]
---

# Variant Calling Quality Control


| Metric                            | Status |
| --------------------------------- | ------ |
| Ts/Tv                             | ✅     |
| Missingness                       |        |
| ns / ss                           | ✅     |
| het / hom                         | ✅     | 
| singletons                        | ✅     |
| mean depth                        |        |
| % sites with at least ?x coverage |        |

## Plotting

- [ ] Histogram/KDE of TsTv.
- [ ] Histogram/KDE of ns/ss.
- [ ] Histogram/KDE of heterozygosity.
- [ ] Histogram/KDE of singletons.

## Filtering

```bash
NCBImetaAnnotateReplace.py \
  --database results/sqlite_db/yersinia_pestis_db.sqlite \
  --table BioSample \
  --annotfile ../plague-phylogeography-projects/main/iqtree/all/chromosome/full/filter5/filter-taxa/variant_qc_fail.txt
```