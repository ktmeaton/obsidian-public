---
title: pandoc
type: [[Tool]]
tags: 
- 📝/🌿  
---

# pandoc

## Summary

[[pandoc]] converts text files into different formats. I'm hoping to use it to convert [[Markdown]] files to:
- [[PDF]]
- [[Word doc]]
-  [[HTML]]

## Installation (WSL2)

1. Install [[Ubuntu]] packages.

	```bash
	sudo apt install texlive-full pandoc
	```
	
1. Create a [[conda]] environment.

	```
	mamba create -n pandoc -y python=3.7 pandoc nodejs click
	conda activate pandoc
	```

## Links

The [[Obsidian]] style of links uses [[wiki links]] which are problematic for other software. A crude way is to convert the links to plain text before publishing.

```bash
python3 convert_wikilinks.py -i pandoc-example.md -o pandoc-example-convert.md 
pandoc -s pandoc-example-convert.md -o pandoc-example.html
```

## [[CrossRef]]

```bash
mamba install -c conda-forge pandoc-crossref
```

## Citations

```bash
npm install -g pandoc-doi2bib
```

Using a bibliography as a relative path causes the error [[(node:1331) UnhandledPromiseRejectionWarning: TypeError [ERR_INVALID_ARG_TYPE]: The "path" argument must be of type string or an instance of Buffer or URL. Received undefined]]

### [[Citation Style]]

Download a [[CSL]] style from <https://www.zotero.org/styles>.
Ex. <https://www.zotero.org/styles/apa-numeric-superscript-brackets>

## Convert

### Markdown
####  [[PDF]]

- Default:
	```
	pandoc pandoc-example.md -o pandoc-example_default.pdf
	```
![[Pandoc Example Default.png]]
- Eisvogel Latex Template:
	```
	pandoc pandoc-example.md -o pandoc-example_eisvogel.pdf --template templates/Eisvogel/eisvogel.latex 
	```
![[Pandoc Example Style.png]]

- [[PLOS Pathogens]] [[LaTeX]]  Template:
	```
	pandoc pandoc-example.md -o pandoc-example_plos.pdf --template templates/PLOS/plos_latex_template.pdf 
	```

- Can you use css with a pdf output? NOPE.
```bash
pandoc \
	  -s pandoc-example-convert.md \
	  -c templates/github.css \
	  -o pandoc-example_github.pdf
```

#### [[LaTeX]]

- Default latex template.
	```bash
	pandoc -f markdown -t latex -o pandoc-example.tex pandoc-example.md
	```


#### [[Word doc]]
- Default word template.
	```bash
	pandoc  -s -o pandoc-example.docx pandoc-example.md 
	```

The styling looks 'okay', but the aesthetics can be drastically improved with templates.

- Save the default template.
	```bash
	pandoc --print-default-data-file default.docx > templates/default.docx
	```
Customize the formatting, for example, change the title to font size 50.
	```
	bash
	pandoc --reference-doc templates/default.docx -o pandoc-example_custom.docx pandoc-example.md
	```
- IEEE Template:
	```bash
	pandoc pandoc-example.md --reference-docx=templates/IEEE-A4.docx -o pandoc-example_IEEE-A4.docx
	```
- With Cross-Ref:
	```bash
	pandoc mydoc.tex --filter pandoc-crossref --bibliography=myref.bib --reference-docx=IEEE_template.doc -o mydoc.docx
	```

#### [[Beamer]] Slides

- Default beamer template
	```bash
	pandoc -t beamer slides/2021-03-23_pandoc.md -o slides/2021-03-23_pandoc.pdf
	```

#### [[reveal.js]] Slides

- Run the reveal.js server
	```bash
	reveal-md path/to/my/slides.md
	```

#### Standalone [[HTML]]

HTML with table of contents, CSS, and custom footer:

```
pandoc -s Chromosome\ Resequencing.md -o Chromosome\ Resequencing.html
```

- [[killercup]] css (looks great)
	```bash
	pandoc \
	  -s pandoc-example.md \
	  -c templates/killercup.css \
	  -o pandoc-example_killercup.html

	pandoc \
	  -s 'Chromosome Resequencing Convert.md' \
	  -c templates/killercup.css \
	  -F mermaid-filter \
	  -o 'Chromosome Resequencing killercup.html'

	```

- [[MVP]] css:
	```bash
	./convert_wikilinks.py --input pandoc-example.md --output pandoc-example_convert.md;
	pandoc \
	  -s pandoc-example_convert.md \
	  -c templates/pandoc-mvp-css/css/mvp.css \
	  --template templates/pandoc-mvp-css/template.html \
	  --toc \
	  --toc-depth=2 \
	  -o pandoc-example_convert_mvp.html
	```

- [[GitHub]] css from [@dashed](https://gist.github.com/dashed) (looks super good!)
	```bash
	pandoc \
	  -s pandoc-example-convert.md \
	  -c templates/github.css \
	  -o pandoc-example_github.html
	  
	pandoc \
	  -s 'Chromosome Resequencing Convert.md' \
	  -c templates/github.css \
	  -F mermaid-filter \
	  -o 'Chromosome Resequencing Github.html'	  

	```