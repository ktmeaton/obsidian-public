---
project: "[[NCBImeta]]"
aliases:
  - Run NCBImeta for Mammuthus
tags: ✨ 
status: done
type: Note
due: 2022-01-12
---

# [[Run NCBImeta for Mammuthus]]

## [[Emil Karpinski|Emil's]] Usage Instructions

```ad-note
color: 200,50,200

- You can run these commands from anywhere on [[infoserv]].
- It will create this output in the current directory:
- database/
	- mammuthus/
		- mammuthus.sqlite
		- mammuthus_BioProject.log
		- mammuthus_BioSample.log
		- mammuthus_Nucleotide.log
		- mammuthus_SRA.log
		- mammuthus_BioProject.txt
		- mammuthus_BioSample.txt
		- mammuthus_Nucleotide.txt
		- mammuthus_SRA.txt
		- mammuthus_Master.txt		

```

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

1. Generate the [[Mammuthus]] metadata database.

	```bash
	/home/keaton/myapps/NCBImeta/bin/NCBImeta \
	  --flat \
	  --config /home/keaton/myapps/NCBImeta/config/mammuthus.yaml \
	  --api b2174fc1bf4bb642a599e0cb239005a08b08 \
	  --email ktmeaton@gmail.com \
	  --force-pause-seconds 0
	```


	```ad-note
	title: Run Time
	icon: clock
	
	| clock  | time      |
	| ------ | --------- |
	| real   | 7m3.623s  |
	| user   | 0m39.752s |
	| sys    | 0m2.059s  |
	```


1. Join all NCBI tables together into a unified `Master` table.

	```bash
	/home/keaton/myapps/NCBImeta/bin/NCBImetaJoin \
	  --database database/mammuthus/mammuthus.sqlite \
	  --final Master \
	  --anchor BioSample \
	  --accessory "BioProject SRA Nucleotide" \
	  --unique "BioSampleAccession BioSampleAccessionSecondary BioSampleBioProjectAccession"
	```

1. Export the `SQLite` database to tab-separated text files.

	```bash
	/home/keaton/myapps/NCBImeta/bin/NCBImetaExport \
	  --database database/mammuthus/mammuthus.sqlite \
	  --outputdir database/mammuthus/
	```

1. Browse the master database (`database/mammuthus/mammuthus_Master.txt`) in a spreadsheet viewer. Latest database is available on Google Sheets at:
	- https://docs.google.com/spreadsheets/d/16LGyA8dRKLcE_Nrd1Tl-MNlUq5nKb-Lsnz_itlRyR3Q/edit?usp=sharing

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>

## [[Katherine Eaton|Katherine's]] Install Notes

1. Install `NCBImeta`:

	```bash
	mamba create -n ncbimeta python=3.9
	conda activate ncbimeta
	cd /home/keaton/myapps/NCBImeta
	pip install .
	pip install --ignore-installed .[dev]
	```

1. Test `NCBImeta`.

	```bash
	python3 test/test.py
	```

1. Build the `NCBImeta` binaries.

	```bash
	pyinstaller ncbimeta/NCBImeta;
	pyinstaller ncbimeta/NCBImetaAnnotate;
	pyinstaller ncbimeta/NCBImetaJoin;
	pyinstaller ncbimeta/NCBImetaExport;
	
	```

1. Sym-link the binaries to a more sensible location.

	```bash
	mkdir -p bin
	ln -s `pwd`/dist/NCBImeta/NCBImeta `pwd`/bin/NCBImeta
	ln -s `pwd`/dist/NCBImetaAnnotate/NCBImetaAnnotate `pwd`/bin/NCBImetaAnnotate
	ln -s `pwd`/dist/NCBImetaJoin/NCBImetaJoin `pwd`/bin/NCBImetaJoin
	ln -s `pwd`/dist/NCBImetaExport/NCBImetaExport `pwd`/bin/NCBImetaExport	
	```