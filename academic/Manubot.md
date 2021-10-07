---
aliases:
  - Manubot
  - rootstock
tags:
  - 📝/🌱
status: idea

---

# Manubot

- Manubot requires the gcc compiler.

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