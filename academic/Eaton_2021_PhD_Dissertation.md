---
documentclass: report
title: "Big Data, Small Microbes: Genomic analysis of the plague bacterium _Yersinia pestis_"
half-title: Big Data, Small Microbes
author: Katherine Eaton
degree: Doctor of Philosophy
prev-degree-full: B.A. (Hons) Anthropology, University of Alberta
prev-degree-short: B.A. (Hons)
supervisor: Dr. Hendrik Poinar
department: Department of Anthropology
submit-date: June 2021
copyright-year: 2021
dedication-line-one: "'You have to know the past to understand the present.'"
dedication-line-two: "- Carl Sagan"
toc: true
tags:
  - 📝/🌱
status: idea
lay-abstract: |
  "A lay abstract of not more 150 words must be included explaining the key goals and contributions of the thesis in lay terms that is accessible to the general public."
abstract: "Abstract here (no more than 300 words)."
acknowledgments: "Acknowledgments go here."
bibliography: pandoc/bib/library.bib
numberSections: true
toc-depth: 3
sectionsDepth: 4
reference-section-title: References
link-citations: true
colorlinks: true
compile-pandoc: |
  conda activate manubot \
  && pandoc/convert_wikilinks.py \
    --input Eaton_2021_PhD_Dissertation.md \
    --output Eaton_2021_PhD_Dissertation_convert.md \
  && pandoc \
    -s Eaton_2021_PhD_Dissertation_convert.md \
    -o Eaton_2021_PhD_Dissertation.pdf \
    --template pandoc/templates/thesis_mcmaster_pandoc/mcmaster_thesis.tex \
    --lua-filter pandoc/lua-filters/include-files/include-files.lua \
    --filter pandoc-crossref \
    --citeproc \
    --csl pandoc/csl/apa.csl \
    && rm Eaton_2021_PhD_Dissertation_convert.md
compile-manubot: |
  conda activate manubot \
  && pandoc/manubot.sh 'Eaton_2021_PhD_Dissertation.md' \
  pandoc/bib/library.json \
  ../../rootstock
tblPrefix: "Table"
figPrefix: "Figure"
---

# Introduction {#introduction}

In 2011, I learned about a researcher named Dr. Hendrik Poinar. His team had just published a seminal paper, in which they identified the causative agent of the infamous Black Death [@bos2011DraftGenomeYersinia]. I discovered that this morbid term describes a pandemic that devastated the world in the 14^th^ century, with unprecedented mortality and spread. In less than 10 years (1346-1353) the Black Death swept across Afro-Eurasia, killing 50% of the population [@cite]. Outbreaks of this new and mysterious disease, often referred to as _the Plague_, reoccurred every 10 years on average [@cite]. This epidemic cycling continued for 500 long years in Europe, but in Western Asia, the disease never truly disappeared [@cite]. The 10-year window of the Black Death alone has an estimated global mortality of 200 million people, making it the most fatal pandemic in human history [@sampath2021PandemicsThroughoutHistory], and it remains one of the most mysterious.

The cryptic nature of this medieval disease led to significant debate among contemporaries. The dominant theory of contagion at the time was _miasma_, in which diseases were spread through noxious air [@ober1982PlagueGranada13481349]. Ibn al-Khatib, a notable Islamic scholar, took issue with this theory. After studying outbreaks of _Plague_ in the 14^th^ century, he proposed an alternative hypothesis in which _minute bodies_ were transmissible between humans [@syed1981IslamicMedicine1000]. Like most controversial theories, this idea was not readily embraced. Some 400 years later, the British botanist Richard Bradley wrote a radical treatise on _Plague_ [@bradley1721PlagueMarseillesConsider] where he similarly proposed that infectious diseases were caused by living, microscopic agents. Again, this theory was rejected. It was not until the 19^th^ century, with the experiments of Louis Pasteur and Robert Koch, that this "new" perspective would receive widespread acceptance [@cite]. 

After it was established that _a_ living organism caused the Black Death, the intuitive next step was to precisely identify _the_ organism. The symptoms described in historical texts seem to incriminate bubonic plague [@cite], a bacterial pathogen that passes from _rodents to humans_, and leads to grotesquely swollen lymph nodes (buboes). On the other hand, the rapid spread of the Black Death suggests this was a contagion primarily driven by _human to human_ transmission, which more closely fits the profile of an Ebola-like virus [@scott2001BiologyPlaguesEvidence].  In the 2000s, geneticists began contributing novel evidence to the debate, by retrieving pathogenic DNA from skeletal remains [@cite]. The plague bacterium, _Yersinia pestis_, played a central role in these molecular investigations, as researchers sought to either establish or refute its presence in medieval victims. The competitive nature of this discourse fueled significant technological progress, and over the next decade, the study of ancient DNA (aDNA) became its own discipline. However, the origins of the Black Death remained unresolved, due to numerous controversies surrounding contamination and scientific rigor [@cite].

As an undergraduate student of forensic anthropology, I was fascinated by the rapid pace at which the field of ancient DNA was developing. I attribute my developing academic obsession to two early-career experiences. First, was reading the _highly_ entertaining back-and-forth commentaries in academic journals, where plague researchers would exchanges snide and personal insults [@cite]. It was clear that these researchers cared _deeply_ about their work. Despite the toxicity, I found these displays of passion to be engaging and refreshing, as compared to the otherwise emotionally-sterile field of scientific publishing. 

The second defining experience, was the perplexing and often frustrating task of trying to diagnose infectious diseases from skeletal remains. I was intrigued by the idea of reconstructing an individual's life story from their skeleton, and using this information to solve the _mysteries of the dead_. However, while some forms of trauma leave diagnostic marks on bone (ex. sharp force), acute infectious diseases rarely manifest in the skeleton [@ortner2007DifferentialDiagnosisSkeletal; @brown2013AnthropologyInfectiousDisease] and thus are 'invisible' to an anthropologist. Because of this, I found the new field of ancient DNA to be _extremely_ appealing, as it offered a novel solution to this problem. Anthropologists could now retrieve the _precise pathogen_ that had infected an individual, and contribute new insight regarding disease exposure and experience throughout human history. These experiences confirmed to me that studying the ancient DNA of pathogens would be an exciting, dynamic, and productive line of research for a graduate degree. I'm happy to say that 10 years later, I still agree with this statement, and by writing this dissertation I hope to convince you, the reader, as well. 

Which brings us back to Dr. Hendrik Poinar and his team's seminal work on the mysterious Black Death. The study, led by first author Kirsten Bos, had found DNA evidence of the plague bacterium, _Y. pestis_, in several Black Death victims buried in a mass grave in London [@bos2011DraftGenomeYersinia]. But they did not just retrieve a few strands of DNA, they captured millions of molecules (10.5 million to be precise) which allowed them to reconstruct the entire _Y. pestis_ genome, comprising four million DNA bases. The amount of molecular evidence was staggering, and offered irrefutable proof that the plague bacterium was present during the time of Black Death. Admittedly, any inference of causality would be mere speculation, but given the extremely high case-fatality rates of plague in modern times [@cite], there was strong support for the hypothesis that the causative agent of the Black Death was plague.

In the following decade (2011-2021) more than 100 ancient _Y. pestis_ genomes have been retrieved from skeletal remains across Europe, making plague the _most intensively sequenced historical disease_. The sequencing of modern isolates has accelerated in tandem, with over 1000 genomes produced from 20^th^ and 21^st^ century plague outbreaks [@cite]. Because of this influx of evidence, the research questions changed accordingly. Geneticists were no longer interested in _just_ establishing the presence _Y. pestis_ during the short time frame of the Black Death (1346-1353), they wanted to know _how it behaved_ throughout the long 500 years of this pandemic. These questions included lines of inquiry such as: How did this ancient plague pandemic spread? Did it take the rare form of pneumonic plague, where the bacterium could be rapidly transmitted between humans along maritime routes? Or were outbreaks highly localized cases of bubonic plague, where disease exposure in humans occurs via spillover from nearby wild rodent populations? And perhaps most importantly of all, why have we never experienced another pandemic quite like the Black Death?

These nuanced epidemiological questions, particularly the last one, were what motivated and resonated with me. In 2013, I had the delight and privilege of being accepted into the graduate program at McMaster University, to investigate these questions under the supervision of Dr. Poinar at the McMaster Ancient DNA Centre. 

Previously, I referred to one of the ultimate questions in plague research: why have we never experienced another pandemic quite like the Black Death? 

In 2019, my relationship with infectious diseases transformed from an intellectual curiosity to a lived experience. The emergence of the novel coronavirus (SARS-CoV-2) triggered a global pandemic, operating on a scale that had not been seen for a 100 years. For years, I had written grants to fund my plague research under the auspice of _we have to know the past to understand the present_ [@cite]. 

# NCBImeta: Efficient and comprehensive metadata retrieval from NCBI databases

\setlength{\parindent}{0em}

Published 03 February 2020 in  \
_The Journal of Open Source Software_, 5(46), 1990.  \
<https://doi.org/10.21105/joss.01990>  \
Licensed under a Creative Commons Attribution 4.0 International License.  \
&nbsp;  

Katherine Eaton^1,2^  \
&nbsp;  

^1^ McMaster Ancient DNA Centre, McMaster University  \
^2^ Department of Anthropology, McMaster University

\setlength{\parindent}{2em}

<!--
<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

```{.include shift-heading-level-by=1}
[[Eaton_2020_NCBImeta.md]]
```
-->

# Plagued by a cryptic clock: Insight and issues from the global phylogeny of _Yersinia pestis_

\setlength{\parindent}{0em}

Submitted 06 December 2021 to  \
_Nature Communications_.  \
<https://www.researchsquare.com/article/rs-1146895>  \
Licensed under a Creative Commons Attribution 4.0 International License  \
&nbsp;  

Katherine Eaton^1,2^, Leo Featherstone^3^, Sebastian Duchene^3^, Ann G. Carmichael^4^, Nükhet Varlık^5^, G. Brian Golding^6^, Edward C. Holmes^7^, Hendrik N. Poinar^1,2,8,9,10^  \
&nbsp;  

^1^McMaster Ancient DNA Centre, McMaster University, Hamilton, Canada.  \
^2^Department of Anthropology, McMaster University, Hamilton, Canada.  \
^3^The Peter Doherty Institute for Infection and Immunity, University of Melbourne, Melbourne, Australia.  \
^4^Department of History, Indiana University Bloomington, Bloomington, USA.  \
^5^Department of History, Rutgers University-Newark, Newark, USA.  \
^6^Department of Biology, McMaster University, Hamilton, Canada.  \
^7^Sydney Institute for Infectious Diseases, School of Life & Environmental Sciences and School of Medical Sciences, University of Sydney, Sydney, Australia.  \
^8^Department of Biochemistry, McMaster University, Hamilton, Canada.  \
^9^Michael G. DeGroote Institute of Infectious Disease Research, McMaster University, Hamilton, Canada.  \
^10^Canadian Institute for Advanced Research, Toronto, Canada.  \

\setlength{\parindent}{2em}

<!--
<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

```{.include}
[[Eaton_et_al._2021_Plagued_by_a_cryptic_clock.md]]
```
-->

# Plague in Denmark (1000-1800): A longitudinal study of _Yersinia pestis_

\setlength{\parindent}{0em}

Prepared 07 December 2021 for submission as a Brief Report to  \
_The Proceedings of the National Academy of Sciences_  \
Licensed under a Creative Commons Attribution 4.0 International License  \
&nbsp;  

Katherine Eaton^1,2^, Leo Featherstone^3^, Sebastian Duchene^3^, Ann G. Carmichael^4^, Nükhet Varlık^5^, G. Brian Golding^6^, Hendrik N. Poinar^1,2,8,9,10^  \
&nbsp;  

^1^McMaster Ancient DNA Centre, McMaster University, Hamilton, Canada.  \
^2^Department of Anthropology, McMaster University, Hamilton, Canada.  \
^3^The Peter Doherty Institute for Infection and Immunity, University of Melbourne, Melbourne, Australia.  \
^4^Department of History, Indiana University Bloomington, Bloomington, USA.  \
^5^Department of History, Rutgers University-Newark, Newark, USA.  \
^6^Department of Biology, McMaster University, Hamilton, Canada.  \
^8^Department of Biochemistry, McMaster University, Hamilton, Canada.  \
^9^Michael G. DeGroote Institute of Infectious Disease Research, McMaster University, Hamilton, Canada.  \
^10^Canadian Institute for Advanced Research, Toronto, Canada.  \

\setlength{\parindent}{2em}

<!--
<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

```{.include}
[[Eaton_et_al._2021_Plague_in_Denmark_1000-1800.md]]
```
-->

# Conclusion

As a paper on software development, its contributions and significance to the field of anthropology are understandably unclear. I admittedly targeted this article exclusively towards computational biologists because, at the time, few anthropologists had expressed interested in the issue of collecting and curating sequence data from online repositories. However, since its publication, my software has been used to support several bodies of anthropological research. 

The database software NCBImeta was recently used to support an environmental reconstruction of Beringia [@murchieInPrepNoBonesIt], the former land-bridge that facilitated early human migrations into North America from northeast Asia. The study by Murchie et al. furthers our understanding of the peopling of the Americas, and the possible interactions between early human populations and large animals (ie. megafauna) before the Last Glacial Period (~12,000 years ago). 

This tool was also recently used to curate sequence data in a case study of the zoonotic disease brucellosis in the 14^th^ century [@hiderInPrepExaminingPathogenDNA]. The pioneering work by Hider et al. demonstrates how pathogen DNA preserves differently throughout the body, ranging from being the dominant microorganism in several tissues while being completely absent in others. It raises an important cautionary note for ancient DNA analysis and the anthropology of disease, by empirically demonstrating how sampling strategies can bias our understanding of what diseases were present in past populations.

<!-- References Section will auto dump here -->
