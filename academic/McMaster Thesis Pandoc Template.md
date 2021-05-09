---
aliases:
  - McMaster Thesis Pandoc Tempalte
tags:
  - 📝/🌱
status: idea

---

# McMaster Thesis Pandoc Template

## Setup

### [[McMaster]] Thesis Template

1. Download the [[LaTeX]] thesis template from <http://www.cas.mcmaster.ca/cas/0files/Thesis_Template.zip>.
1. Compile the default [[TeX]] file:
	```bash
	pdflatex Thesis_Main.tex
	```
1. Cleanup output:
	```bash
	rm Thesis_Main.{*aux,lof,log,lot,out,pdf,toc}
	```

### [[pandoc]] [[LaTeX]] Template

1. Save the default [[TeX]] template.
	```bash
	pandoc -D latex > templates/default/default.tex
	```
2. Test the default template.
	```bash
	pandoc -s pandoc-example.md -o pandoc-example.pdf --template templates/default/default.tex
	```
	
## Convert

### Try to render the title page.

```bash
rm test.{*aux,lof,log,lot,out,pdf,toc}
```

## Variables

```yaml
fontsize: 12pt
title: My Dissertation Title
```

```bash
pandoc -o dissertation.pdf --template mcmaster_thesis.tex \
  00_Frontmatter.md 01_Chapter1.md 02_Chapter2.md 03_Chapter3.md 04_Chapter4.md
```