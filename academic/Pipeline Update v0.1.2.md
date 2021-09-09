---
project:
due: 2021-10-15
people:
tags: 🧨
status: priority
title: Pipeline Update v0.1.2
type: [[Task]]
---

# Pipeline Update v0.1.2

Hi Everyone,  
  
I have updated the legacy pipeline to v0.1.2. Previously, ```legacy.pl``` only worked to map paired-end samples. With slight modifications, all pipeline steps now work for single-end samples! Specific changes to note:


1. If a sample was sequenced with single-end chemistry, a note will be made at the top of the Makefile:
	```text
	# Single end sample: path_to_sample_fastq.gz
	...
	```
2. 



  
`/home/poinarlab/pipeline/legacy.pl` will always point to the newest and recommended version. Older versions are available at:
	- `/home/poinarlab/pipeline/legacy.pl`
  
Cheers,  
Kat