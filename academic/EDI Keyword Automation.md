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

- [[bokeh]] style graphs are difficult to embed in [[Markdown]] because they are [[Javascript]]. This is also why this won't display on [[Git]], which scrubs all the [[Javascript]] out.

<iframe id="igraph" scrolling="no" seamless="seamless" src="https://ktmeaton.github.io/edi-tagging/edi-tagging-graph.html" width=600px height=400px ></iframe>
</div>

[bokeh network graph](https://ktmeaton.github.io/edi-tagging/edi-tagging-graph.html)
---

tags: [[Experiment]]