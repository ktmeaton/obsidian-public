---
project: Lab Admin
due: 2022-02-01
time: 08:00
people:
  - Ravneet Sidhu
  - Hendrik Poinar
tags: 🧨    
status: priority
---

# Meet With Ravneet

## [[2022-01-19]]

### Example: _Yersinia pestis_ GLZ002.A

#### Download from SRA Structure

- BioSample: [SAMEA6812877](https://www.ncbi.nlm.nih.gov/biosample/?term=SAMEA6812877)/
	- Run: [ERR4093961](https://trace.ncbi.nlm.nih.gov/Traces/sra/?run=ERR4093961)/
		- R1: ERR4093961_1.fastq.gz
		- R2: ERR4093961_2.fastq.gz
	- Run: [ERR4093962](https://trace.ncbi.nlm.nih.gov/Traces/sra/?run=ERR4093962)/
		- R1: ERR4093962_1.fastq.gz
		- R2: ERR4093962_1.fastq.gz 

#### Recommended Structure for Pipeline

- SecondPandemic/
	- Sample_SAMEA6812877/
		- SAMEA6812877_ERR4093961_L001_R1_001.fastq.gz
		- SAMEA6812877_ERR4093961_L001_R2_001.fastq.gz
		- SAMEA6812877_ERR4093962_L001_R1_001.fastq.gz
		- SAMEA6812877_ERR4093962_L001_R2_001.fastq.gz

## [[2021-08-20]]

- [[How much adapters in US and Madagascar]]
- [[Contact Jen about pla PCR Standards]]
- Transfer data, check adapters, send email to Ravneet about where data is
- First and Second pandemic samples.
- Separate folders for US, Madagascar, First, Second
- Script 
- NO Regular (whole genome with plasmid (pPC1)), 
- YES whole genome with both plasmids (+ and -), compare depth of coverage in that region.
- YES assembled
- Migrate Vietnam samples?

1. ✅ Rav | Create a project folder in poinarlab (Projects/Plague/?), send path to Kat.
1. ⬜ Rav | Migrate Vietnam mapping output to the new folder.
1. ✅ Kat | [[Migrate all of the sequence data to the poinarlab account]]
	- The "real" files are located at `/2/scratch/poinarlab/plague-phylogeography/results/data/sra/`.
	- We shouldn't need to access these files directly.
1. ✅ Kat | [[Create symlinks to this data in the new project folder]].  Separate into 4 folders: US, Madagascar, First Pandemic, Second Pandemic.
	- I made separate folders under `/home/poinarlab/Projects/Plague/PlaDepletion`.
	- These are symlinks to the "real" files so that they have the proper names for the pipeline.
1. ⬜ Rav | Map PE data (everything except US) to *pla*+/*pla*- combined reference.
1. ✅ Kat | [[Check which adapters are present in the SE data (US) and how much.]]
	- The adapters used are our regular/default ones (AGATCGGAAGAG...)
	- Adapters are present in 5-10% of reads, so it's probably a good idea to use Trimmomatic for the SE/US data.
1. ⬜ Rav | Map SE data (US).
1. ⬜ Rav | Send coordinates for region of interest, for both the *pla*+ and *pla*- reference.
1. ⬜ Kat | [[Extract the depth of coverage for this region]]. Make a scatterplot comparing the *pla*+ to *pla*- coverage.

- Same breakpoint for First, Second, Vietnam, ooh!




## [[2021-08-13]]

## [[2021-06-29]]

[Meeting Link]https://us02web.zoom.us/j/86423071912?pwd=ZHJhclJlck5NbklNYUxGQmdVODFwZz09

### Tasks

- [ ] [[Fix Missing Samples and Labels]]
- [ ] [[Contact Jen About Mito Dating]]
- [ ] [[Compare Tree to Spyrou et al. 2019]]

## Old

- [x] Mention the ```keep-singletons``` filtering script change.
- [x] [[Calculate Chromosome Resequencing]]
- [ ] [[Calculate Bait Concentration for Enrichment]]