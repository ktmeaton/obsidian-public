# pandoc

## Summary

#pandoc converts text files into different formats. I'm hoping to use it to convert markdown files to:
- PDF
- Word docx
- HTML

## Installation (WSL2)

1. Install pandoc package:

	```bash
	sudo apt install pandoc
	```
	
1. Install pdflatex packages:

	```bash
	sudo apt install texlive-latex-base texlive-fonts-recommended texlive-fonts-extra
	```

1. Install reveal-md:

	```bash
	npm install -g reveal-md
	```

## Convert

### Markdown -> PDF

```bash
pandoc 23.md --pdf-engine=pdflatex -o 23.pdf
```

### Markdown ->  Word docx

```bash
pandoc -s 23.md -o 23.docx
```

### Markdown ->  Slides

#### Beamer

```bash
pandoc -t beamer slides/2021-03-23_pandoc.md -o slides/2021-03-23_pandoc.pdf
```

#### reveal.js

```bash
reveal-md path/to/my/slides.md
```