---
project:
due: 2021-06-17
people:
tags: ⬜/📋 
status: idea
title: Create Paper Repo
type: [[Task]]
---

# Create Paper Repo

## Setup

```bash
git clone https://github.com/manubot/rootstock.git plague-phylo-paper
git init
git remote set-url origin https://github.com/ktmeaton/plague-phylo-paper.git
git remote add upstream https://github.com/manubot/rootstock.git
git push origin
```

```bash
mamba env create -f build/environment.yml
conda activate manubot
build/build.sh
```

- [ ] Create Zenodo library