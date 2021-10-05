---
title: BFG Repo Cleaner
type: [[Tool]]
tags:
  - 📝/🌱
---

# BFG Repo Cleaner

## Summary

BFG Repo Cleaner is software that performs...

```bash
wget https://repo1.maven.org/maven2/com/madgag/bfg/1.14.0/bfg-1.14.0.jar
```

- Delete file
```bash
java -jar ~/bin/bfg-1.14.0.jar --delete-files locus_depth.txt

git reflog expire --expire=now --all && git gc --prune=now --aggressive

```