---
title: "Big Data, Small Microbes"
subtitle: "Genomic analysis of the plague bacterium _Yersinia pestis_"
project: "[[PhD Defense]]"
aliases:
  - PhD Defense Presentation
tags: 🧨 
status: priority
type: task
due: 2022-01-21
time: 08:00

# reveal.js
theme: simple
slideNumber: true
enableChalkboard: true
showNote: true
progress: true
openButton: true
css: [css/phd_defense_presentation.css]
transition: none
enableMenu: true
---


## Big Data, Small Microbes
### Genomic analysis of the plague bacterium _Yersinia pestis_
<hr>

<br>

### Katherine Eaton                            

#### PhD Defense | Department of Anthropology | McMaster University
#### 21 January 2022

note: 

---

## Land Acknowledgement

<hr>

<grid  drag="80 30" drop="10 20" flow="col">
_I acknowledge the traditional land on which I reside, is in Treaty Six Territory. I would like to thank the diverse Indigenous Peoples whose ancestors’ footsteps have marked this territory for centuries, such as nêhiyaw, Dené, Anishinaabe, Nakota Isga, and Niitsitapi peoples. I also acknowledge this as the Métis’ homeland and the home of one of the largest communities of Inuit south of the 60th parallel._
</grid>

<grid  drag="40 40" drop="10 -12" flow="col">
[native-land.ca](https://native-land.ca/)

<img 
	 src="https://raw.githubusercontent.com/ktmeaton/obsidian-public/e22b5e01b29179742ae19de1fde9dae67bc7d2d0/academic/Native-Land-Digital.png" 
	 width="400px">
</img>

</grid>

<grid  drag="35 56" drop="-10 -1" flow="col">
[firstnations.org](https://www.firstnations.org/knowledge-center/recipes/)
<br><br>
<img 
	 src="https://raw.githubusercontent.com/ktmeaton/obsidian-public/e22b5e01b29179742ae19de1fde9dae67bc7d2d0/academic/Three sisters soup.png" 
	 width="250px">
</img>

note: I'd like to start out today with a land acknowledgement. While I live in Edmonton, Alberta...

- _nêhiyaw_ (NAY-hee-yow)
- Dené (DEH-neyh) (short)
- Anishinaabe (AH-nish-in-ah-abay)
- Nakota Isga (Na-KOHHH-tah EE-ska)
- Niitsitapi (Nit-si-tuhp-ee)
- Métis’ (May-tea)

To learn more about the history of where we live, there's two resources I really enjoy. One is native-land.ca, where you can see all the nations that are found within Canada. And also firstnations.org has published free cookbooks, and I've really enjoyed learning about dishes made with plants that are found in my backyard.

</grid>

---


## Disease Exposure and Experience

<hr>


---

## Plague

<hr>


---

## Ancient Plague

<hr>


---

## Overview

<hr>

![[phd_overview_1.png|800]]

--

## Overview

<hr>

![[phd_overview_2.png|800]]

--

## Overview

<hr>

![[phd_overview_3.png|800]]

--

## Overview

<hr>

![[phd_overview.png|800]]

--

## Overview

<hr>

![[phd_overview_fade_project1.png|800]]

---

## 1. Collection

<hr>

### How do I access DNA collected by _<u>other</u>_ researchers?

<grid  drag="45 65" drop="1 30" flow="col" border="2px solid black">

### Background
- Researchers are required to make their data publicly available.
- National Centre for Biotechnology Information (NCBI).
</grid>

<grid  drag="45 65" drop="-1 30" flow="col" border="2px solid black">

### Problem

- NCBI has limited options for browsing large amounts of data.
- Information is split across multiple databases.
</grid>


note: 

- Avalanche of data, new plague genomes published weekly, 1000+.
- Manual tracking was impossible, too much time, too many errors my excel sheet.
- It'd be like if half of your book was in one library section.

--

## Solution

<hr>

- Wrote software to automate data collection and organization.
- Written in `python`, executed as a `command-line` program.
- Fetches XML records from NCBI, formats into a pretty table.

![NCBImeta user workflow.](https://rawcdn.githack.com/ktmeaton/NCBImeta/ae039b34/paper/figures/NCBImeta_Workflow.png)

--

## NCBImeta

<hr>

### Efficient and comprehensive metadata retrieval from NCBI databases

![[NCBImeta Table Example.png]]


--

## Overview

<hr>


![[phd_overview_fade_project1_check.png]]

--

## Overview

<hr>


![[phd_overview_fade_project2.png]]

---

## 2. CONTEXT

<hr>

### Can DNA help estimate _<u>when</u>_ and _<u>where</u>_ plague was in the past?

<grid  drag="95 65" drop="1 30" flow="col" border="2px solid black">

### Background


![[clock_example_1.png|800]]

</grid>

--

## 2. CONTEXT

<hr>

### Can DNA help estimate _<u>when</u>_ and _<u>where</u>_ plague was in the past?

<grid  drag="95 65" drop="1 30" flow="col" border="2px solid black">

### Background


![[clock_example.png|800]]

</grid>

--

## 2. CONTEXT

<hr>

### Can DNA help estimate _<u>when</u>_ and _<u>where</u>_ plague was in the past?

<grid  drag="95 65" drop="1 30" flow="col" border="2px solid black">

### Problem

![[rtt_example_1.png|650]]


</grid>

--

## Solution

<hr>

- Split up _Yersinia pestis_ by genetic population.
- Estimate a clock model independently for each population.

![[rtt_example_2.png|650]]

--

## Plagued by a Cryptic Clock

<hr>

### Insight and issues from the global phylogeny of _Yersinia pestis_

---


## Plague in Denmark (1000-1800)

<hr>

### A longitudinal study of _Yersinia pestis_

---
