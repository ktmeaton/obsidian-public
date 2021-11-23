---
project:
due: 2022-01-30
people:
tags: 🧨
status: priority
title: Pipeline Update v0.1.2
type: [[Task]]
---

# Pipeline Update v0.1.2

Hi Everyone,  
  
I have updated the legacy pipeline to a new version: v0.1.2. Please note that the path `/home/poinarlab/pipeline/legacy.pl` now points to this new version. Older versions are available at:
	- `/home/poinarlab/pipeline/legacy_v0-1-0.pl`
	- `/home/poinarlab/pipeline/legacy_v0-1-1.pl`
	- `/home/poinarlab/pipeline/legacy_v0-1-2.pl`

## New Features

1. **Single-End Chemistry**:  Previously, ```legacy.pl``` only worked to map paired-end samples. With slight modifications, all pipeline steps now work for single-end samples! 

	You can double-check that the pipeline successfully detected your single-end sample, as a note will be made at the very top of the Makefile:

	```text
	# Single end sample: path_to_sample_fastq.gz
	...
	```

2. **Modern Samples**: `legacy.pl` now includes the features from `modern_prototype.pl` that improves mapping of modern samples. To activate modern mode (or more accurately, disable ancient dna mode), just add the word "modern" at the end of the command when you call the pipeline.

	```bash
	# Ancient DNA Mode
	/home/poinarlab/pipeline/legacy.pl path/to/data/ path/to/reference/ > Makefile
	
	# Modern DNA Mode
	/home/poinarlab/pipeline/legacy.pl path/to/data/ path/to/reference/ modern > Makefile
	```

	You can double-check whether a Makefile was created in modern mode, you can search for the key phrase "ancientdna". If the phrase "ancientdna" is found, this Makefile was created in "ancient DNA" mode. If the phrase was not found, it was created in "modern" mode.
	
	```bash
	grep "ancientdna" Makefile
	```

1. **Publicly Available Source Code**:  The source code for the legacy pipeline is now available in a [Github 	Repository](https://github.com/ktmeaton/legacy-pipeline) with some preliminary documentation. If your scholarly writing, you can cite Ana like so:

	> Duggan, A. T., Grenaud, G. (2021). The legacy pipeline for the McMaster Ancient DNA Centre. (v0.1.2) [Perl]. [https://github.com/ktmeaton/legacy-pipeline](https://github.com/ktmeaton/legacy-pipeline)

1. **User's Manual**:
The GitHub repository also contains a draft of a [user's manual](https://github.com/ktmeaton/legacy-pipeline/blob/master/manual.pdf).

Cheers,  
Kat