---
project:
due: 2021-05-01
people:
tags: ⬜/📋 
status: idea
title: Extract SVG Using Puppeteer
type: [[Task]]
---

# Extract SVG Using Puppeteer

## Dependencies

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
	
- [ ] [[Test Miniconda on Windows]]