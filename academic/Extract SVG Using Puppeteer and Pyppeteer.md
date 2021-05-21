---
project:
due: 2021-05-01
people:
tags: ⬜/✨ 
status: done
title: Extract SVG Using Puppeteer
type: [[Task]]
---

# Extract SVG Using Puppeteer and Pyppeteer

## Workflow

The full workflow is documented in [this comment](https://github.com/nextstrain/auspice/issues/1066#issuecomment-830712128).

## [[Pyppeteer]]

1. Create a conda environment.
```bash
mamba create -n puppeteer python3
conda activate puppeteer
mamba install python=3.8
pip install pyppeteer
```

## [[Puppeteer]]

1. Install google-chrome for WSL2
	```bash
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo apt -y install ./google-chrome-stable_current_amd64.deb
	which google-chrome
	google-chrome --version
	```

1. Create a [[conda]] environment for [[nodejs]] and [[puppeteer]].
	```bash
	conda create -n puppeteer
	conda activate puppeteer
	mamba install nodejs
	npm install -g puppeteer
	export NODE_PATH=/home/ktmeaton/miniconda3/envs/puppeteer/lib/node_modules
	export PATH=/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/:$PATH
	```
	