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
abbreviations:
  - "aDNA: Ancient DNA"
  - "DNA: Deoxyribonucleic acid"
  - "NCBI: National Center for Biotechnology Information"
  - "SRA: Sequence Read Archive"
academic-declaration: "I, Katherine Eaton, declare that this thesis titled, 'Big Data, Small Microbes: Genomic analysis of the plague bacterium _Yersinia pestis_' and the work presented in it are my own. I confirm that:"
academic-declaration-list:
  - "This work was done wholly or mainly while in candidature for a research degree at McMaster University."
  - "Where any part of this thesis has previously been submitted for a degree or any other qualification at McMaster University or any other institution, this has been clearly stated."
  - "Where I have consulted the published work of others, this is always clearly attributed."
  - "Where I have quoted from the work of others, the source is always given. With the exception of such quotations, this thesis is entirely my own work."
  - "I have acknowledged all main sources of help."
  - "Where the thesis is based on work done by myself jointly with others, I have made clear exactly what was done by others and what I have contributed myself."
bibliography: pandoc/bib/library.bib
numberSections: true
lof: true
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
    --lua-filter pandoc/lua-filters/short-captions/short-captions.lua \
    --lua-filter pandoc/lua-filters/table-short-captions/table-short-captions.lua \
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

# Introduction

In 2011, I learned about a researcher named Dr. Hendrik Poinar. His team had just published a seminal paper, in which they identified the causative agent of the infamous Black Death [@bos2011DraftGenomeYersinia]. I discovered that this morbid term describes a pandemic that devastated the world in the 14^th^ century, with unprecedented mortality and spread. In less than 10 years (1346-1353) the Black Death swept across Afro-Eurasia, killing 50% of the population [@benedictow2004BlackDeath13461353]. Outbreaks of this new and mysterious disease, often referred to as _the Plague_, reoccurred every 10 years on average [@christensen2003ThesePerilousTimes]. This epidemic cycling continued for 500 long years in Europe, but in Western Asia, the disease never truly disappeared [@varlik2020PlagueThatNever]. The 10-year window of the Black Death alone has an estimated global mortality of 200 million people, making it the most fatal pandemic in human history [@sampath2021PandemicsThroughoutHistory], and also one of the most mysterious.

The cryptic nature of this medieval disease led to significant debate among contemporaries. The dominant theory of contagion at the time was _miasma_, in which diseases were spread through noxious air [@ober1982PlagueGranada13481349]. However, Ibn al-Khatib, a notable Islamic scholar, took issue with this theory. After studying outbreaks of _the Plague_ in the 14^th^ century, he proposed an alternative hypothesis in which _minute bodies_ were transmissible between humans [@syed1981IslamicMedicine1000]. Like most controversial theories, this idea was not readily embraced. Some 400 years later, the British botanist Richard Bradley wrote a radical treatise on _Plague_ [@bradley1721PlagueMarseillesConsider] where he similarly proposed that infectious diseases were caused by living, microscopic agents. Again, this theory was rejected. It was not until the 19^th^ century that this "new" perspective would receive widespread acceptance [@santer2009RichardBradleyUnified]. It is quite remarkable that our modern conceptions of epidemiology and bacteriology can be traced back to diverse "founders" throughout history, who all happened to be grappling with the perplexing nature of the Black Death.

After it was established that _a_ living organism caused the Black Death, the intuitive next step was to precisely identify _the_ organism. The symptoms described in historical texts seem to incriminate bubonic plague [@benedictow2004BlackDeath13461353], a bacterial pathogen that passes from _rodents to humans_, and leads to grotesquely swollen lymph nodes (buboes). On the other hand, the rapid spread of the Black Death suggests this was a contagion primarily driven by _human to human_ transmission, which more closely fits the profile of an Ebola-like virus [@scott2001BiologyPlaguesEvidence].  In the 1990s and 2000s, geneticists began contributing novel evidence to the debate, by retrieving pathogenic DNA from skeletal remains [@drancourt1998Detection400yearoldYersinia]. The plague bacterium, _Yersinia pestis_, played a central role in these molecular investigations, as researchers sought to either establish or refute its presence in medieval victims [@gilbert2004AbsenceYersiniaPestisspecific]. The competitive nature of this discourse fueled significant technological progress, and over the next decade, the study of ancient DNA became a well-established discipline. However, the origins of the Black Death remained unresolved, due to numerous controversies surrounding DNA contamination and scientific rigor [@cooper2000AncientDNAIt].

As an undergraduate student of forensic anthropology, I was fascinated by the rapid pace at which the field of ancient DNA was developing. I attribute my developing academic obsession to two early-career experiences. First, was reading the _highly_ entertaining back-and-forth commentaries in academic journals [@gilbert2004ResponseDrancourtRaoult], where plague researchers would occasionally exchange snide and personal insults [@raoult2003WasBlackDeath]. It was clear that these researchers cared _deeply_ about their work. Despite the toxicity, I found these displays of passion to be engaging and refreshing, compared to the otherwise emotionally-sterile field of scientific publishing. 

The second defining experience, was the perplexing and often frustrating task of trying to diagnose infectious diseases from skeletal remains. I was intrigued by the idea of reconstructing an individual's life story from their skeleton, and using this information to solve the _mysteries of the dead_. However, while some forms of trauma leave diagnostic marks on bone (ex. sharp force), acute infectious diseases rarely manifest in the skeleton [@ortner2007DifferentialDiagnosisSkeletal; @brown2013AnthropologyInfectiousDisease] and thus are 'invisible' to an anthropologist. Because of this, I found the new field of ancient DNA to be _extremely_ appealing, as it offered a novel solution to this problem. Anthropologists could now retrieve the _precise pathogen_ that had infected an individual, and contribute new insight regarding disease exposure and experience throughout human history. These experiences confirmed to me that studying the ancient DNA of pathogens would be an exciting, dynamic, and productive line of research for a graduate degree. I'm happy to say that 10 years later, I still agree with this statement, and by writing this dissertation I hope to convince you, the reader, as well. 

Which brings us back to Dr. Hendrik Poinar and his team's seminal work on the mysterious Black Death. The study, led by first author Kirsten Bos, had found DNA evidence of the plague bacterium, _Y. pestis_, in several Black Death victims buried in a mass grave in London [@bos2011DraftGenomeYersinia]. But they did not just retrieve a few strands of DNA, they captured millions of molecules (10.5 million to be precise) which allowed them to reconstruct the entire _Y. pestis_ genome, comprising four million DNA bases. The amount of molecular evidence was staggering, and offered irrefutable proof that the plague bacterium was present during the time of Black Death. However, with a sample size of N=1, the genetic link between _Y. pestis_ and this ancient pandemic was tentative at best.


Armed with the proposal of finding more evidence of _Y. pestis_ in the archaeological record, I applied to work for Dr. Hendrik Poinar at the McMaster Ancient DNA Centre. In 2014, I had the delight and privilege of being accepted into the graduate program at McMaster University. Alongside other members of the "McMaster Plague Team", I set about the daunting task of screening the skeletal remains of more than 1000 individuals for molecular evidence of _Y. pestis_. This material was generously provided by archaeological collaborators, who were similarly invested in the idea that ancient DNA techniques could identify infectious diseases in their sites. These archaeological remains reflected nearly a millennium of human history, with sampling ages ranging from the 9^th^ to the 19^th^ century CE. The geographic diversity was also immense, with individuals sampled across Europe, Africa, and Asia. 

Of the 1000+ individuals screened, approximately 30% originated in Denmark. Due to this large sample size, we had the greatest success in identifying ancient _Y. pestis_ in this region. Over a period of 5 years, we retrieved _Y. pestis_ DNA from 13 Danish individuals dated to the medieval and early modern periods. To contextualize these plague isolates, we reconstructed their evolutionary relationships using a large comparative dataset of global _Y. pestis_. In Chapter 4, I present the results of this collaborative study, which marks the first longitudinal analysis of an ancient pathogen in a single region. I explore whether the genetic evidence of _Y. pestis_ aligns with the historical narrative of the Black Death, and whether or not subsequent epidemics can be attributed to long-distance reintroductions. However, while this high-throughput study was the first one I embarked on, as the chapter numbering indicates, it would be the last project I completed due to several unforeseen complications.

While the McMaster Plague Team was busy screening for _Y. pestis_, so too were other ancient DNA centres throughout the world. Between 2011 and 2021, more than 100 ancient _Y. pestis_ genomes were published, making plague the _most intensively sequenced historical disease_. The sequencing of modern isolates accelerated in tandem, with over 1500 genomes produced from culture collections of 20^th^ and 21^st^ century plague outbreaks [@zhou2020EnteroBaseUserGuide]. Because of this influx of evidence, the research questions changed accordingly. Geneticists were no longer interested in just establishing the _presence_ of _Y. pestis_ during the short time frame of the Black Death (1346-1353), they wanted to know _how_ it behaved and spread throughout the long 500 years of this pandemic. The longitudinal study design of Chapter 4 was therefore well-positioned to address these nuanced epidemiological questions. However, this novel genetic evidence also introduced new complexities. 

It quickly became clear that isolates of _Y. pestis_ sampled during epidemic periods were highly similar in terms of genetic content, if not indistinguishable clones [@spyrou2019PhylogeographySecondPlague]. This called into question the resolution of genomic evidence, and whether the geographic origins and spread of the Black Death could be accurately inferred using ancient DNA studies. This was further confounded by the finding that the rate of evolutionary change in _Y. pestis_ could vary tremendously [@cui2013HistoricalVariationsMutation] which led to the discovery that previously published temporal models were erroneous [@wagner2014YersiniaPestisPlague].  It became increasingly uncertain whether genetic evidence could be used to produce informative estimates of the timing of plague's frequent reemergences [@duchene2016GenomescaleRatesEvolutionary]. As I read these critical studies, I began developing an idea to address the substantial gaps in our evolutionary theory and methodology concerning the plague bacterium _Y. pestis_. This idea culminated in Chapter 3, where I curated and contextualized the largest global data set of plague genomes. I critiqued the existing spatiotemporal models of plague's evolutionary history, and with the assistance of my co-authors, devised a new methodological approach. This method would then be repurposed for Chapter 4, so that I could infer the emergence and disappearance of _Y. pestis_ in Denmark with greater accuracy. However, as the chapter numbering once again reflects, there was one final obstacle.

Synthesizing the largest genomic data set was a lofty ambition, especially considering that there were few software tools available to perform such a task. New plague genomes of _Y. pestis_ were being published monthly, and at times even weekly, with such volume that manual tracking became impossible. My excel spreadsheet of genetic metadata became riddled with errors and fields with missing data. The era of "Big Data" had arrived, and I was woefully unequipped to effectively manage this deluge of information. In response, I ventured into the tumultuous waters of software development. In Chapter 2, I describe my original software that automates the acquisition and organization of genetic metadata. Academic publishing in the field of software was a unique experience, as I had to both _produce a scholarly manuscript_ and demonstrate _expertise as a service-provider_. This database tool has continually proven to be indispensable, and is the backbone upon which the studies in Chapter 3 and Chapter 4 would be rebuilt upon.

At this point, I re-introduce the dissertation as a collection of three hierarchical studies. I first describe an original piece of software in Chapter 2, which automates the retrieval and organization of publicly available sequence data. In Chapter 3, I outline how this tool was used to generate an updated and _curated_ phylogeny of _Y. pestis_, which yielded novel insight regarding the timing and origins of past pandemics. In this chapter, I also conduct a critical examination of the historical questions that genomic evidence can, or cannot, address. In Chapter 4, I use these theories and methods to reconstruct the emergence and continuity of plague in Denmark over a period of 400 years. I conclude in Chapter 5 with a discussion of the contributions of each study, with a particular focus on their significance within the broader field of anthropology.


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

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

```{.include shift-heading-level-by=1}
[[Eaton_2020_NCBImeta.md]]
```

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

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

```{.include}
[[Eaton_et_al._2021_Plagued_by_a_cryptic_clock.md]]
```

# Plague in Denmark (1000-1800): A longitudinal study of _Yersinia pestis_

\setlength{\parindent}{0em}

Prepared 08 December 2021 for submission to  \
_The Proceedings of the National Academy of Sciences_  \
Licensed under a Creative Commons Attribution 4.0 International License  \
&nbsp;  

Katherine Eaton*^1,2^, Ravneet Sidhu*^1,3^, Jennifer Klunk^1,4^, Julia Gamble^5^, Jesper Boldsen^6^, Ann G. Carmichael^7^, Nükhet Varlık^8^,  Sebastian Duchene^9^, Leo Featherstone^9^, Vaughan Grimes^10^, G. Brian Golding^3^, Sharon DeWitte^11^, Hendrik N. Poinar^1,2,12,13,14^ \
&nbsp;  

\*Contributed equally.

^1^McMaster Ancient DNA Centre, McMaster University, Hamilton, Canada.  \
^2^Department of Anthropology, McMaster University, Hamilton, Canada.  \
^3^Department of Biology, McMaster University, Hamilton, Canada.  \
^4^Daicel Arbor Biosciences, Ann Arbor, USA.  \
^5^Department of Anthropology, University of Manitoba, Winnipeg, Canada. \
^6^Department of Forensic Medicine, Unit of Anthropology (ADBOU), University of Southern Denmark, Odense, Denmark. \
^7^Department of History, Indiana University Bloomington, Bloomington, USA.  \
^8^Department of History, Rutgers University-Newark, Newark, USA.  \
^9^The Peter Doherty Institute for Infection and Immunity, University of Melbourne, Melbourne, Australia.  \
^10^Department of Archaeology, Memorial University of Newfoundland, St. Johns, Canada. \
^11^Department of Anthropology, University of South Carolina, Columbia, USA. \
^12^Department of Biochemistry, McMaster University, Hamilton, Canada.  \
^13^Michael G. DeGroote Institute of Infectious Disease Research, McMaster University, Hamilton, Canada.  \
^14^Canadian Institute for Advanced Research, Toronto, Canada.  \
&nbsp;  

\setlength{\parindent}{2em}

```{.include}
[[Eaton_et_al._2021_Plague_in_Denmark_1000-1800.md]]
```

# Conclusion

## Main Findings and Contribution

In Chapter X, 
As a paper on software development, its contributions and significance to the field of anthropology are understandably unclear. I targeted this article exclusively towards computational biologists because, at the time, few anthropologists had expressed interested in the issue of collecting and curating sequence data from online repositories. 



However, since its publication, my software has been used to support several bodies of anthropological research. 

The database software NCBImeta was recently used to support an environmental reconstruction of Beringia [@murchieInPrepNoBonesIt], the former land-bridge that facilitated early human migrations into North America from northeast Asia. The study by Murchie et al. furthers our understanding of the peopling of the Americas, and the possible interactions between early human populations and large animals (ie. megafauna) before the Last Glacial Period (~12,000 years ago). This tool was also recently used to curate sequence data in a case study of the zoonotic disease brucellosis in the 14^th^ century [@hiderInPrepExaminingPathogenDNA]. The pioneering work by Hider et al. demonstrates how pathogen DNA preserves differently throughout the body, ranging from being the dominant microorganism in several tissues while being completely absent in others. It raises an important cautionary note for ancient DNA analysis and the anthropology of disease, by empirically demonstrating how sampling strategies can bias our understanding of what diseases were present in past populations. 

	
(Matthew Gopez, Philip Mabon, *personal communication*, https://github.com/ktmeaton/NCBImeta/pull/9)

## Future Directions

<!-- References Section will auto dump here -->
