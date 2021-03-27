---
aliases: -EDI Keyword Automation
modified: 2021-03-26T21:39:11-04:00
---

# EDI Keyword Automation

| Field   | Value |
| ------- | ----- |
| Project | [[EDI Tagging]]   | 


## Objectives

1. Convert course syllabi ([[PDF]]) to plain text.

## Outline

## Methods

1. Create a [[conda]] environment.
1. Create a mapping of concepts to keywords.
1. Create a python script to parse the concept and keywords.
1. Create a [[bokeh]] interactivet network graph.

## Results

![[edit-tagging-graph.jpg]]
	
## Conclusions

- [[bokeh]] style graphs are difficult to embed in [[Markdown]] because they are [[Javascript]]. This is also why this won't display on [[github]], which scrubs all the [[Javascript]] out.

I was partially incorrect about this. raw.githack doesn't seem to work but hosting as a github pages does:

[bokeh network graph](https://ktmeaton.github.io/edi-tagging/edi-tagging-graph.html)
---

tags: [[Experiment]]