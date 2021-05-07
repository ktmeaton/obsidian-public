---
project: [[plague-phylogeography]]
due: 2021-04-29
people:
tags: ⬜/✨
status: done
title: Execute Snakemake Rule Without Upstream
type: [[Task]]
---

# Execute Snakemake Rule Without Upstream

## Problem

I am analyzing [[Plague Phylodynamics and Phylogeography]] on multiple computers. However, all of the per-sample output ([[snippy_pairwise]], [[nf-core/eager|eager]]) are on [[Infoserv]]. I would like to be able to ignore upstream [[Snakemake]] rules that don't have output on the local computer.

## Solution

Using the ```-O``` flag to omit a rule and all it's downstream output seems appropriate. This works for a single rule omission.

```bash
snakemake snippy_pairwise_sra -O download_sra -np --profile profiles/gh-actions
snakemake snippy_pairwise_assembly -O download_assembly -np --profile profiles/gh-actions
```

How do I omit multiple rules? I don't yet understand why only the download rules have to be omitted for this to work.

```bash
snakemake snippy_multi_all -O download_assembly download_sra -np --profile profiles/gh-actions
snakemake snippy_multi_filter_all -O download_assembly download_sra -np --profile profiles/gh-actions
snakemake auspice_all -O download_assembly download_sra -np --profile profiles/gh-actions
```

This is totally incorrect, any rule downstream of the ones omitted will be ignored.

How about trying the parameter ```allower-rules```. This works!

```bash
snakemake iqtree_filter_all -np --allowed-rules iqtree_filter --profile profiles/gh-actions
```

