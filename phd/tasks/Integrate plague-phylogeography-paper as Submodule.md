---
project:
due: 2021-04-26
people:
tags: ⬜/📋 
status: idea
title: Integrate plague-phylogeography-paper as Submodule
type: [[Task]]
---

# Integrate plague-phylogeography-paper as Submodule

## Tasks 

- [x] Add submodule

```bash
cd phd/
git submodule add https://github.com/ktmeaton/plague-phylogeography-paper
```

- [x] Create ```manubot``` conda environment to build.

```bash
mamba env create -n build/environment.yaml
```

- [x] Follow the [plague-phylogeography-paper/README#Local execution|Local Execution]] instructions.

> Lots of warnings during build are because [Docker daemon is not started](https://github.com/manubot/rootstock/issues/400)

- [x] Convert obsidian markdown to plain pandoc.

```bash
../pandoc/convert_wikilinks.py --input content/methods.md --output content/03.methods.md
```

- [ ] Get mermaid filter working.

```bash
mamba install nodejs
npm install -g mermaid.cli
npm install -g pandoc-mermaid-filter
npm install --global mermaid-filter
```

```bash
npm install -g mermaid-filter
npm install -g --save-dev "bufferutil@^4.0.1"
npm install -g --save-dev "utf-8-validate@^5.0.2"
```

```bash
npm install mermaid.cli 
./node_modules/.bin/mmdc -h
wget https://raw.githubusercontent.com/mermaidjs/mermaid.cli/master/test/flowchart.mmd
./node_modules/.bin/mmdc -i flowchart.mmd -o flowchart.png
```