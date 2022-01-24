---
title: "Big Data, Small Microbes"
subtitle: "Genomic analysis of the plague bacterium _Yersinia pestis_"
project: "[[PhD Defense]]"
aliases:
  - PhD Defense Presentation
tags: ✨
status: done
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


## Infectious Disease

<hr>

> ### How does disease <u>exposure</u> and <u>experience</u> change over time and between human populations?

- What causes an epidemic to appear?
- How does the disease spread?
- Why are some countries affected more than others?
- How do people respond? How is society reshaped?

--

## Plague

<hr>

<grid  drag="60 70" drop="1 20" flow="col">
![[Historys 7 Deadliest Plagues Annotate.png]]
[Prabhu and Gergen (2021)](https://www.gavi.org/vaccineswork/long-view-historys-seven-deadliest-plagues)<br>
The Long View: History’s Seven Deadliest Plagues

</grid>
<grid  drag="45 70" drop="-1 20" flow="col">

1. **Gruesome bacterial disease:**<br>
\- _Yersinia pestis_<br>
\- Swollen, necrotic lymph nodes.

2. **The deadliest pandemic!**<br>
\- The Black Death

3. **It keeps coming back!**<br>
\- Plague of Justinian (541)<br>
\- Black Death (1334)<br>
\- The Third Plague (1855)<br>
\- Madagascar Outbreak (2017)

4. **It's everywhere**!<br>
\- Has a persistent presence on every continent except Australia and Antarctica.

</grid>


--

## Enigmatic Epidemiology

<hr>


> ### Although researchers have been studying plague for hundreds of years, there are many aspects of its epidemiology that are enigmatic.

- Why does plague suddenly appear in a population?
- In many areas, limited surviving historical evidence.
- Ancient DNA offers a new window into the past.
![[@bos2011DraftGenomeYersinia_Title.png|400]]

--

## The Start of a PhD

> ### Let's try to expand our knowledge of _where_ and _when_ plague appeared in the past.
- Molecular detection of _Y. pestis_ in 1000+ skeletal remains.
- Sampling ages range from the 9<sup>th</sup> to the 19<sup>th</sup> century CE. 
- Wide geographic diversity, across Europe, Africa, and Asia.


<hr>

- 30% of samples originated in Denmark (\~300 individuals).
- We had the greatest success in finding _Y. pestis_ in Denmark.

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
- Written in python, executed as a command-line program.
- Fetches XML records from NCBI, formats into a pretty table.

<!--
![NCBImeta user workflow.](https://rawcdn.githack.com/ktmeaton/NCBImeta/ae039b34/paper/figures/NCBImeta_Workflow.png)
-->

![[NCBImeta Table Example.png|800]]

--

## NCBImeta

<hr>

### Efficient and comprehensive metadata retrieval from NCBI databases

Katherine Eaton

1. Saved me from having to click through 1000+ web pages...
1. Can find and collect data split across multiple databases.
1. Emphasizes real-time access to online repositories.
1. Provides a more user-inclusive experience to metadata retrieval.


--

## Overview

<hr>


![[phd_overview_fade_project1_check.png|800]]

--

## Overview

<hr>


![[phd_overview_fade_project2.png|800]]

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

- Split up _Yersinia pestis_ by population (shared ancestry).
- Estimate a "clock" independently for each population.

![[rtt_example_2.png|650]]

--

## Plagued by a Cryptic Clock

<hr>

### Insight and issues from the global phylogeny of _Yersinia pestis_

Katherine Eaton, Leo Featherstone, Sebastian Duchene, Ann G. Carmichael, Nükhet Varlık, G. Brian Golding, Edward C. Holmes, Hendrik N. Poinar

1. Devised a method to estimate robust divergence dates in _Y. pestis_.
1. Pandemics may have _<u>emerged far earlier</u>_ than previously thought.
1. Plague evolves _<u>very slowly</u>_: ~1 mutation every 10 years.
1. Spread cannot be reconstructed from genetic evidence alone.


--

## Overview

<hr>


![[phd_overview_fade_project2_check.png|800]]

--

## Overview

<hr>


![[phd_overview_fade_project3.png|800]]

---

## 3. Case Study

<hr>

### _<u>When</u>_ does plague appear in Denmark and<br> <u>where</u> did it come from?


<grid  drag="45 55" drop="1 40" flow="col" border="2px solid black">

### Background
- Scandinavia has a uniquely long history of plague.
- Ancient _Y. pestis_ found in Sweden (~5000 YBP).
</grid>

<grid  drag="45 55" drop="-1 40" flow="col" border="2px solid black">

### Problem

- Scandinavia is underrepresented in the historical archives.
- Plague: 1350-1657 CE.
- Did plague appear at any other time?
</grid>

--

## Solution

<hr>

<grid  drag="60 70" drop="1 20" flow="col">

![[denmark_map_simplified.png]]

</grid>
<grid  drag="45 70" drop="-1 20" flow="col">
- Sampled 13 archaeological sites.

- A total of 298 individuals.

- Dated to 1000 - 1800 CE.

- Molecular screening for _Y. pestis_.

- Phylogenetic reconstruction.

</grid>
--

## Plague in Denmark (1000-1800)

<hr>

### A longitudinal study of _Yersinia pestis_

Katherine Eaton, Ravneet Sidhu, Jennifer Klunk, Julia Gamble, Jesper Boldsen, Ann G. Carmichael, Nükhet Varlık,  Sebastian Duchene, Leo Featherstone, Vaughan Grimes, G. Brian Golding, Sharon DeWitte, Hendrik N. Poinar

<grid  drag="60 70" drop="1 35" flow="col">


![[denmark_timeline_simplified2.png|400]]

</grid>
<grid  drag="45 70" drop="-1 35" flow="col">


1. Uncover undocumented pathogens.

1. Danish plague is most closely related to isolates in the Baltics (Germany, Lithuania, Poland).

1. Reveals new global connections, as Danish _Y. pestis_ is ancestral to modern plague outbreaks.

1. The first positivity rate of historical _Y. pestis_ (3.3 - 14.3%).

1. The timeline of _Y. pestis_ <u>aligns almost perfectly</u> with historical records of a mysterious _pestilence_ in Denmark.

</grid>

--

## Overview

<hr>


![[phd_overview_fade_project3_check.png|800]]

---


## Thank You!

<hr>
![[PhD Defense Acknowledgements.png|900]]