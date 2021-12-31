---
aliases:
  - Manubot
  - rootstock
tags:
  - 📝/🌱
status: idea
title: Manubot
authors:
  - name: Katherine Eaton
    github: ktmeaton
    orcid: 0000-0001-6862-7756
    affiliations: [
      "Department of Anthropology, McMaster University"
    ]
    email: ktmeaton@gmail.com
date: 3 February 2020
date: 31 December 2021
---

Manubot requires the gcc compiler.

```bash
sudo apt install build-essential
```

```bash
git clone https://github.com/ktmeaton/rootstock.git
mamba env create -f build/environment.yml
```

```bash
ln -s /home/ktmeaton/miniconda3/envs/git-dev/bin/x86_64-conda_cos6-linux-gnu-gcc /home/ktmeaton/miniconda3/envs/manubot/bin/gcc
```