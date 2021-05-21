---
project:
due: 2021-05-01
people:
tags: ⬜/✨ 
status: done
title: Test Miniconda on Windows
type: [[Task]]
---

# Test Miniconda on Windows

1. Install [[Python|Python 3.8]] [[conda|miniconda]], not adding to path.

1. Install [[mamba]].
	```bash
	conda install -c conda-forge mamba
	```

1. Install [[nodejs]]	
	```bash
	conda create -n puppeteer
	conda activate puppeteer
	mamba install nodejs
	npm install -g puppeteer
	```
	- This seems promising, I see it actually downloading [[Chromium]] now.

1. Grab [[Puppeteer]] repository for example scripts.
	```bash
	cd Programs
	git clone https://github.com/puppeteer/puppeteer
	cd puppeteer/examples
	```
	
	
	```
	set NODE_PATH="C:\Users\ktmea\miniconda3\envs\puppeteer\node_modules"
	export NODE_PATH=/home/ktmeaton/miniconda3/envs/puppeteer/lib/node_modules
	export PATH=/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/:$PATH
	```
	
1. Try [[pyppeteer]].

	```bash
	mamba install -c conda-forge pyppeteer
	```
	
	1. Test run
	```python
	python screenshot.py
	```
	- This downloads [[Chromium]]
	```text
	chromium extracted to: C:\Users\ktmea\AppData\Local\pyppeteer\pyppeteer\local-chromium\588429
	```
	
```python
import asyncio
from pyppeteer import launch
import time

url = "https://nextstrain.org/ebola?d=map&legend=closed&onlyPanels&p=full&sidebar=closed"

async def main():
    browser = await launch()
    page = await browser.newPage()
    await page.setViewport({'width':800, 'height':600, 'deviceScaleFactor':4})
    print("Waiting 5 seconds for Nextstrain to load page...")
    await page.goto(url)
    time.sleep(5)
    print("Taking a pdf screenshot...")
    await page.emulateMedia('screen')
    await page.pdf({'path': 'map.pdf'})
    await browser.close()

asyncio.get_event_loop().run_until_complete(main())
```