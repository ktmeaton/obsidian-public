---
project:
due: 2021-05-27
time: 17:00
people:
tags: ⬜/✨
status: done
title: NML Referral 8
type: [[Task]]
---

# NML Referral 6

| Field                                       | Value                                                       |
| ------------------------------------------- | ----------------------------------------------------------- |
| Group and Level                             | BI-03                                                       |
| Branch and Directory                        | National Microbiology Laboratory Branch Bioinformatics Core | 
| Start & End Date or Duration of opportunity | 2 year term/acting (until March 31 2023)                    |
| Location of position                        | Winnipeg MB, Telework is an option for this opportunity                                                 |
| Security                                    | Reliability clearance                                       |
| Language profile of the position            | English                                                     |
| Salary Range:                               | BI $81,359 to $104,748                                      |


- Signal Pipeline
- Nanopore data, NextFlow, Tom Connor Pipeline
- Gary Van Domselaar -> - Natalie Knox
- Cancagen Project

## Description

The [[Bioinformatics Core at the National Microbiology Laboratory]] is leading the analysis of sequence data as part of Canada's national SARS-CoV-2 genomic surveillance program. We are looking for talented computational biologists to participate in our effort to use SARS-CoV-2 genomic data to inform and control the COVID-19 pandemic in Canada.

The successful candidate will have the opportunity to work with our team in a dynamic and collaborative work environment. Working in one of the leading public health bioinformatics labs in the world, you'll have access to our leading edge computational and analytical infrastructure and be at the forefront of Canada's response to the COVID-19 pandemic.

If you are interested in this opportunity, please respond no later than Thursday May 27, 2021 to phac.hrrecruit-recruterrh.aspc@canada.ca . 

## Requirements

Please provide the following:

1. **Please describe how you meet the following experience**. Candidates must use the criteria as a header and then write in one or two paragraphs how they meet the qualifications. (You must provide clear and concrete EXAMPLES and DETAILS of how you meet each essential experience requirement including WHEN, WHERE and HOW you obtained the experience.):

> **A. Experience using UNIX or LINUX-based operating systems and commands.**
> I have 7 years of experience working in a UNIX/LINUX environment. I interact with a UNIX shell daily on my personal computer, specifically the Windows Subsystem for Linux (WSL), to create and manipulate files. I also regularly access (weekly) Linux distributions such as CentOS in High Performance Computing (HPC) nodes to submit bioinformatic jobs that are computationally demanding. Finally, UNIX systems are my primary target in software development and I have published research software [[Eaton 2020 NCBImeta\|[@eaton2020NCBImetaEfficientComprehensive]]] which is optimized for use in Ubuntu and macOS.
> 

> **B. Experience programming in one or more of the following languages: Perl, Python, R, Bash, C, C++, Java, HTML, JavaScript, Structured Query Language (SQL), or other relevant scientific programming environments.**
> My primary software development language is Python and I have published my tools as open source via Github and recently in a peer-reviewed journal [[Eaton 2020 NCBImeta\|[@eaton2020NCBImetaEfficientComprehensive]]]. In my PhD research, I used Structured Query Language (SQL), specifically SQLite, to retrieve and filter publicly-available genomic datasets. I occasionally use SQL syntax directly, but more commonly use SQL libraries/interfaces that are implemented in other languages.
> 
>   To perform quality control on genomic datasets, I developed a small suite of accessory tools in C++ [[Eaton 2019 NGSeXploreExploratoryData\|[@eaton2019NGSeXploreExploratoryData]]] that are frequently used by my colleagues. For small data analysis projects, I will write Bash scripts when requested but my collaborators greatly prefer more human-friendly syntax languages. My sole use of R is for data visualization as I rarely encounter a statistical package that is not also implemented in a language I am more fluent in. I have yet to develop any software in Perl or Java, although I will occasionally debug and suggest changes to the code bases of tools that use these languages.
> 
> Over the past year, I find myself working more and more with HTML and Javascript. My research increasingly involves Big Data and it is incredibly helpful to make interactive visualizations with Javascript to handle large sample numbers and variables. To then host my visualizations and accompanying reports, I have written some minimalist websites using HTML and CSS.


> **C. Experience with high performance computing.**
> On a weekly basis, I access two HPC clusters. The first is a local server at McMaster University. This cluster has a small user base and compute nodes are directly accessible without a job submission system. I access this resource primarily to run analyses requiring low computational power (<20 CPUs) or to use specialized metagenomic databases (ex. BLAST, Kraken). The second system I access is through the Compute Canada infrastructure and includes the clusters Graham, Béluga, and Cedar. This system uses the SLURM job scheduler and I reserve use of this system for analyses that require considerable resources (>20 CPUs). To synchronize bioinformatic projects across all of these clusters, I use Github and the Conda packaging system to ensure consistency and reproducibility. I also developed a small dashboard app [[Eaton 2021 flowdash-bio\|[@eaton2021flowdash-bio]]] to track my workflows' status on HPC systems.

>**D. Experience working with bioinformatics tools to manipulate, clean, organize, evaluate and visualize data.**
> The largest project in my PhD dissertation is a global phylogenetic analysis of an infectious pathogen, the plague bacterium *Yersinia pestis*. My workflow consists of 3 main steps. First I scrape NGS metadata from the National Center for Biotechnology Information (NCBI) into a SQL database. From this database, I identify genomic datasets that will contribute to my research objectives. Second, I construct alignments of all relevant genomes which includes pre-processing the raw sequencing data, performing variant calling against a reference, and filtering problematic regions. Finally, I estimate a phylogeny and assess temporal and geographic signal using maximum-likelihood and Bayesian techniques. For large projects like this, I construct pipelines using the Snakemake and/or Nextflow languages to ensure reproducibility and reduce errors.


**2. Asset qualifications:**

> **E. Experience managing relational databases such as MySQL, MariaDB, PostgreSQL, Oracle, etc.**
> To manage workflows running simultaneously on HPC systems, I developed the dashboard application flowdash-bio (<https://ktmeaton.github.io/flowdash-bio>). This app uses a SQLite database in local development, and a PostgreSQL database in production builds with Heroku. The core features I focused on for this project were real-time integration with analysis workflows, encryption of user credentials, and interactive visualizations to explore system usage and productivity.

> **F. Experience in the development of large-scale genomic databases.**
> To efficiently retrieve and organize metadata from the NCBI databases, I developed the database tool NCBImeta (<https://ktmeaton.github.io/NCBImeta>). This tool scrapes XML records based on user-specified queries and structures sequencing metadata into a local SQLite database. The unique feature of this tool is a dynamic structure, which allows the user to incorporate a wide variety of data types and a customizable schema. I have used this tool to construct genomic databases of bacterial pathogens ranging from 1,000-20,000 sequencing projects. In addition, I maintain and update databases for my collaborators with projects ranging from conservation biology using mammalian mitogenomes to metagenomes retrieved from environmental samples.


> **G. Experience managing or maintaining database software in a biological laboratory setting.**
> In addition to my development of databases based on publicly-available data, I am also responsible for the storage of sequencing data produced by the McMaster Ancient DNA Centre. The COVID-19 pandemic fundamentally changed our data management needs, as the Centre is sequencing exponentially more sensitive clinical samples, while a large portion of analysts no longer have access to on-site facilities. Whereas previously we were able to use free and online database solutions (ex. Illumina's BaseSpace portal) we now require a customized approach. I am actively investigating secure and scalable solutions to store and access our sequencing data.


> **H. Experience with user interface or business logic development for public health surveillance and reporting applications.**
> The main graphical tool I use that falls within the domain of surveillance and reporting is the NextStrain visualization suite (https://nextstrain.org/). One aspect of my PhD research involves the use of specialized ancient DNA tools which are not natively supported by the NextStrain backend. To prepare interactive visualizations, I recently scripted a custom pipeline to integrate our spatiotemporal analyses of bacterial genomes with the NextStrain front-end user interface. In practice, this involved structuring the phylogenetic results into the required JSON schema, version controlling the output, and enabling automatic deployment as new analyses are produced.

> **I. Experience analyzing and interpreting next generation sequence variant data including SNP imputation, GWAS (genome-wide association studies) and genomic prediction for complex traits.**
> One project that I am currently involved with is the identification of virulence-associated genes and SNPs in the historical pathogen *Yersinia pestis*. My roles span three major categories. The first is data production, involving DNA extraction and sequencing from highly degraded samples such as skeletal remains. The second role is data analyst, including SNP calling and annotation as well as plotting the geographic spread of informative variants. The final role is interpretation, in which I contextualize our findings within the academic literature and draft manuscripts for peer-reviewed publication.

> **J. Experience in performing and interpreting phylogenetic and phylogenomic analysis.**
>  I am currently preparing a scholarly manuscript on the global phylogeny and population structure of the bacterial pathogen, *Yersinia pestis*. The underlying analyses involved large-scale phylogenetic reconstructions (500+ samples) accompanied by a molecular clock analysis and finally an estimation of historical spread. This analysis operates at a much larger scale than previous projects within my institute and thus I designed and tested the methodology from scratch. 

NOTE: You are welcome to add any further information that you would like to share with the hiring manager about what makes you the right fit for this opportunity in your response.

 

Please also use the following format for the subject of your email: BI03-21-308732-Referral 6– LAST NAME, FIRST NAME

 

If we do not hear back from you by the requested date, we will consider you not interested in this opportunity.  Your name will remain in the inventory and will be referred to future opportunities.

 

If you have any questions, comments or concerns please contact Andrea Nowosad at phac.hrrecruit-recruterrh.aspc@canada.ca

## Email

> Dear Hiring Committee,
> 
> I am writing to apply for the position associated with BI03-21-308732-Referral 6. I have outlined below how I meet the required criteria of the position. Thank you for your time and consideration during this process, and if you require any additional information please let me know.
>
> **A. Experience using UNIX or LINUX-based operating systems and commands.**
> I have 7 years of experience working in a UNIX/LINUX environment. I interact with a UNIX shell daily on my personal computer, specifically the Windows Subsystem for Linux (WSL), to create and manipulate files. I also regularly access (weekly) Linux distributions such as CentOS in High Performance Computing (HPC) nodes to submit bioinformatic jobs that are computationally demanding. Finally, UNIX systems are my primary target in software development and I have published research software which is optimized for use in Ubuntu and macOS.
>
> **B. Experience programming in one or more of the following languages: Perl, Python, R, Bash, C, C++, Java, HTML, JavaScript, Structured Query Language (SQL), or other relevant scientific programming environments.**
> My primary software development language is Python and I have published all my tools as open source via Github. In my PhD research, I used Structured Query Language (SQL), specifically SQLite, to retrieve and filter publicly-available genomic datasets. I occasionally use SQL syntax directly, but more commonly use SQL libraries/interfaces that are implemented in other languages.
> 
>   To perform quality control on genomic datasets, I developed a small suite of accessory tools in C++ that are frequently used by my colleagues. For small data analysis projects, I will write Bash scripts when requested but my collaborators greatly prefer more human-friendly syntax languages. My sole use of R is for data visualization as I rarely encounter a statistical package that is not also implemented in a language I am more fluent in. I have yet to develop any software in Perl or Java, although I will occasionally debug and suggest changes to the code bases of tools that use these languages.
> 
> Over the past year, I find myself working more and more with HTML and Javascript. My research increasingly involves Big Data and it is incredibly helpful to make interactive visualizations with Javascript to handle large sample numbers and variables. To then host my visualizations and accompanying reports, I have written some minimalist websites using HTML and CSS.
>
> **C. Experience with high performance computing.**
> On a weekly basis, I access two HPC clusters. The first is a local server at McMaster University. This cluster has a small user base and compute nodes are directly accessible without a job submission system. I access this resource primarily to run analyses requiring low computational power (<20 CPUs) or to use specialized metagenomic databases (ex. BLAST, Kraken). The second system I access is through the Compute Canada infrastructure and includes the clusters Graham, Béluga, and Cedar. This system uses the SLURM job scheduler and I reserve use of this system for analyses that require considerable resources (>20 CPUs). To synchronize bioinformatic projects across all of these clusters, I use Github and the Conda packaging system to ensure consistency and reproducibility. I also developed a small dashboard app to track my workflows' status on HPC systems.
>
>**D. Experience working with bioinformatics tools to manipulate, clean, organize, evaluate and visualize data.**
> The largest project in my PhD dissertation is a global phylogenetic analysis of an infectious pathogen, the plague bacterium *Yersinia pestis*. My workflow consists of 3 main steps. First I scrape NGS metadata from the National Center for Biotechnology Information (NCBI) into a SQL database. From this database, I identify genomic datasets that will contribute to my research objectives. Second, I construct alignments of all relevant genomes which includes pre-processing the raw sequencing data, performing variant calling against a reference, and filtering problematic regions. Finally, I estimate a phylogeny and assess temporal and geographic signal using maximum-likelihood and Bayesian techniques. For large projects like this, I construct pipelines using the Snakemake and/or Nextflow languages to ensure reproducibility and reduce errors.
>
> **E. Experience managing relational databases such as MySQL, MariaDB, PostgreSQL, Oracle, etc.**
> To manage workflows running simultaneously on HPC systems, I developed the dashboard application flowdash-bio (<https://ktmeaton.github.io/flowdash-bio>). This app uses a SQLite database in local development, and a PostgreSQL database in production builds with Heroku. The core features I focused on for this project were real-time integration with analysis workflows, encryption of user credentials, and interactive visualizations to explore system usage and productivity.
>
> **F. Experience in the development of large-scale genomic databases.**
> To efficiently retrieve and organize metadata from the NCBI databases, I developed the database tool NCBImeta (<https://ktmeaton.github.io/NCBImeta>). This tool scrapes XML records based on user-specified queries and structures sequencing metadata into a local SQLite database. The unique feature of this tool is a dynamic structure, which allows the user to incorporate a wide variety of data types and a customizable schema. I have used this tool to construct genomic databases of bacterial pathogens ranging from 1,000-20,000 sequencing projects. In addition, I maintain and update databases for my collaborators with projects ranging from conservation biology using mammalian mitogenomes to metagenomes retrieved from environmental samples.
>
> **G. Experience managing or maintaining database software in a biological laboratory setting.**
> In addition to my development of databases based on publicly-available data, I am also responsible for the storage of sequencing data produced by the McMaster Ancient DNA Centre. The COVID-19 pandemic fundamentally changed our data management needs, as the Centre is sequencing exponentially more sensitive clinical samples, while a large portion of analysts no longer have access to on-site facilities. Whereas previously we were able to use free and online database solutions (ex. Illumina's BaseSpace portal) we now require a customized approach. I am actively investigating secure and scalable solutions to store and access our sequencing data.
>
> **H. Experience with user interface or business logic development for public health surveillance and reporting applications.**
> The main graphical tool I use that falls within the domain of surveillance and reporting is the NextStrain visualization suite (https://nextstrain.org/). One aspect of my PhD research involves the use of specialized ancient DNA tools which are not natively supported by the NextStrain backend. To prepare interactive visualizations, I recently scripted a custom pipeline to integrate our spatiotemporal analyses of bacterial genomes with the NextStrain front-end user interface. In practice, this involved structuring the phylogenetic results into the required JSON schema, version controlling the output, and enabling automatic deployment as new analyses are produced.
>
> **I. Experience analyzing and interpreting next generation sequence variant data including SNP imputation, GWAS (genome-wide association studies) and genomic prediction for complex traits.**
> One project that I am currently involved with is the identification of virulence-associated genes and SNPs in the historical pathogen *Yersinia pestis*. My roles span three major categories. The first is data production, involving DNA extraction and sequencing from highly degraded samples such as skeletal remains. The second role is data analyst, including SNP calling and annotation as well as plotting the geographic spread of informative variants. The final role is interpretation, in which I contextualize our findings within the academic literature and draft manuscripts for peer-reviewed publication.
>
> **J. Experience in performing and interpreting phylogenetic and phylogenomic analysis.**
>  I am currently preparing a scholarly manuscript on the global phylogeny and population structure of the bacterial pathogen, *Yersinia pestis*. The underlying analyses involved large-scale phylogenetic reconstructions (500+ samples) accompanied by a molecular clock analysis and finally an estimation of historical spread. Currently I am constructing interactive visualizations on the NextStrain platform for collaborators and as a complement to the publication. This analysis operates at a much larger scale than previous projects within my institute and thus I designed and tested the methodology from scratch. 
>  
> Sincerely,
> Katherine Eaton
## Interview

> **Knowledge of bioinformatics databases.**
> - NCBI
> - ENA
> - [INSDC](http://www.insdc.org/)

> **Knowledge of “omics” data collection and data management practices including the assessment of data quality, data processing, and developing or maintaining data quality standards.**

> **Knowledge of the mission, mandate, and objectives of the Public Health Agency of Canada as they pertain to the federal role in health, emerging health issues and outbreak response**
> - **Mission**: To promote and protect the health of Canadians through leadership, partnership, innovation and action in public health.
> - **Mandate**: The role of the Public Health Agency of Canada is to:
>	- Promote health;
>	- Prevent and control chronic diseases and injuries;
>	- Prevent and control infectious diseases;
>	- Prepare for and respond to public health emergencies;
>	- Serve as a central point for sharing Canada's expertise with the rest of the world;
>	- Apply international research and development to Canada's public health programs; and
>	- Strengthen intergovernmental collaboration on public health and facilitate national approaches to public health policy and planning.

> **Ability to analyse and interpret complex biological data or information.**

> **Ability to communicate effectively within a multi-disciplinary environment, and to audiences including non-expert stakeholders.**
> Multi-disciplinary 

> **Ability to work under pressure and to manage competing priorities with tight deadlines.**

> **Leadership**

*Complex: analysis of a variety of data sources, being able to relate information into a data model or understand system technical specifications.*