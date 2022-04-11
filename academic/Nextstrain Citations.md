---
aliases:
  - Nextstrain Citations
tags:
  - 📝/🌱
---

# Nextstrain Citations

1. I want to be able to add and manage citations in [[Nextstrain]] and [[obsidian-public/academic/Auspice]].
2. I want to write [[Nextstrain Narratives]] in [[Obsidian]].

## Footnotes

## Write [[Nextstrain Narratives]] in [[Obsidian]]

1. Clone auspice repo into obsidian vault (not as submodule!). This will only be for local vault.
```bash
cd phd/
git clone https://github.com/ktmeaton/plague-phylogeography-projects
cd plague-phylogeography-projects
conda activate plague-phylogeography
HOST="localhost" auspice view --narrativeDir narratives_local
```
