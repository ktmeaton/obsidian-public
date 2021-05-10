
---
title: 'NCBImeta: efficient and comprehensive metadata retrieval from NCBI databases'
tags:
  - Python
  - bioinformatics
  - genomics
  - metadata
  - NCBI
  - SRA
authors:
  - name: Katherine Eaton
    orcid: 0000-0001-6862-7756
    affiliation: "1, 2"
affiliations:
 - name: McMaster Ancient DNA Centre, McMaster University
   index: 1
 - name: Department of Anthropology, McMaster University
   index: 2
date: 29 November 2019
bibliography: ncbimeta_paper.bib
---
# Summary

```NCBImeta``` is a command-line application that downloads and organizes biological metadata from the National Centre for Biotechnology Information (NCBI). While the NCBI web portal provides an interface for searching and filtering molecular data, the output offers limited options for record retrieval and comparison on a much larger and broader scale. ```NCBImeta``` tackles this problem by creating a reformatted local database of NCBI metadata based on user search queries and customizable fields. The output of ```NCBImeta```, optionally a SQLite database or text file(s), can then be used by computational biologists for applications such as record filtering, project discovery, sample interpretation, and meta-analyses of published work.

# Background

Recent technological advances in DNA sequencing have propelled biological research into the realm of big data. Due to the tremendous output of Next Generation Sequencing (NGS) platforms, numerous fields have transformed to explore this novel high-throughput data. Projects that quickly adapted to incorporate these innovative techniques included monitoring the emergence of antibiotic resistance genes [@zankari_identification_2012], epidemic source tracking in human rights cases [@eppinger_genomic_2014], and global surveillance of uncharacterized organisms [@connor_species-wide_2015]. However, the startling rate at which sequence data are being deposited online have presented significant hurdles to the efficient reuse of published data. In response, there is growing recognition within the computational community that effective data mining techniques are a dire necessity [@nakazato_experimental_2013; @mackenzie_post-archival_2016].

An essential step in the data mining process is the efficient retrieval of comprehensive metadata. These metadata fields are diverse in nature, but often include the characteristics of the biological source material, the composition of the raw data, the objectives of the research initiative, and the structure of the post-processed data. Several software applications have been developed to facilitate bulk metadata retrieval from online repositories. Of the available tools, ```SRAdb``` [@zhu_sradb:_2013], the Pathogen Metadata Platform [@chang_pathogen_2016], ```MetaSRA``` [@bernstein_metasra:_2017], and ```pysradb``` [@choudhary_pysradb:_2019]  are among the most widely utilised and actively maintained. While these software extensions offer substantial improvements over the NCBI web browser experience, there remain several outstanding issues.

1. Existing tools assume external programming language proficiency (ex. R, Python, SQL), thus reducing tool accessibility.
2. Available software focuses on implementing access to singular NCBI databases in isolation, for example, the raw data repository the Sequence Read Archive (SRA). This does not empower researchers to incorporate evidence from multiple databases, as it fails to fully leverage the power of interconnected information within the relational database scheme of NCBI.
3. Existing software provides only intermittent database updates, where users are dependent on developers releasing new snapshots to gain access to the latest information. This gives researchers less autonomy over what data they may incorporate as newer records are inaccessible, and may even introduce sampling bias depending on when the snapshots are generated.  

In response, ```NCBImeta``` aims to provide a more user-inclusive experience to metadata retrieval, that emphasizes real-time access and provides generalized frameworks for a wide variety of NCBI’s databases.

# NCBImeta

```NBCImeta``` is a command-line application that executes user queries and metadata retrieval from the NCBI suite of databases. The software is written in Python 3, using the ```BioPython``` module [@cock_biopython:_2009] to connect to, search, and download XML records with NCBI’s E-Utilities [@kans_entrez_2019]. The ```lxml``` package is utilised to perform XPath queries to retrieve nodes containing biological metadata of interest. ```SQLite``` is employed as the database management system for storing fetched records, as implemented with the ```sqlite3``` python module. Accessory scripts are provided to supply external annotation files, to join tables within the local database so as to re-create the relational database structure, and finally to export the database as tabular text for downstream analyses. ```NCBImeta``` currently interfaces with the molecular and literature databases described in [@tbl:table_NCBI_databases] [@noauthor_entrez_2016] .

Table: NCBI databases supported in NCBImeta {#tbl:table_NCBI_databases}

--------------------------------------------------------------------------------------------------------------------------------------------------------
Database          Description
----------------- --------------------------------------------------------------------------------------------------------------------------------------
Assembly          Descriptions of the names and structure of genomic assemblies, statistical reports, and sequence data links.

BioSample         Characteristics of the biological source materials used in experiments. 

BioProject        Goals and progress of the experimental initiatives, originating from an individual organization or a consortium.

Nucleotide        Sequences collected from a variety of sources, including GenBank, RefSeq, TPA and PDB.  

PubMed            Bibliographic information and citations for biomedical literature from MEDLINE, life science journals, and other online publications.

SRA               Composition of raw sequencing data and post-processed alignments generated via high-throughput sequencing platforms.                  
--------------------------------------------------------------------------------------------------------------------------------------------------------

Test
