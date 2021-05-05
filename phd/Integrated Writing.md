---
aliases:
  - Integrated Writing
tags:
  - 📝/🌱
---

# Integrated Writing

I have multiple different platforms that I write in. I would like to [[Integrated Writing|Integrate my Writing]].

## End Products

### Journal Article [[Manuscript]]

- [[PLOS Pathogens]] has a [[LaTeX]] template that can be downloaded [here](https://journals.plos.org/plospathogens/s/file?id=SyJ3/plos-latex-template.zip). [[pandoc/templates/PLOS/plos_latex_template.pdf|plos_latex_template.pdf]] is example output based on [[pandoc/templates/PLOS/plos_latex_template.tex|plos_latex_template.tex]]

## Tools

### [[Obsidian]]

- [[Obsidian]] is my editor and main powerhouse for writing, linking, and thinking.
- It uses [[Markdown]].

### [[Auspice]]

[[Auspice]] is my data visualization platform.
- It uses [[Markdown]].

### [[Zotero]]

[[Zotero]] is my [[Reference Manager]].

### [[Pandoc]]

[[Pandoc]] is an important [[Document Conversion]] tool.

### [[Manubot]] / [[Rootstock]]

[[Manubot]]/[[Rootstock]] is a manuscript preparation workflow. 

## Workflow

```mermaid
graph TD;
1-->3;
2-->4;
3-->5;
4-->7;
6-->7;
5-->7;
7-->8;
9-->10;
8-->10;



1[Obsidian];
2[Zotero];
3[Write Markdown]
4[Export Bibliography]
5[Convert Wikilinks]
6[Pandoc]
7[Render Citations to Markdown]
8[Clean Markdown]
9[MVP]
10[Export to HTML]

style 1 fill:#1f77b4,stroke:#333,stroke-width:1px,color:white,fill-opacity:1.0;
style 2 fill:#1f77b4,stroke:#333,stroke-width:1px,color:white,fill-opacity:1.0;
style 6 fill:#1f77b4,stroke:#333,stroke-width:1px,color:white,fill-opacity:1.0;
style 9 fill:#1f77b4,stroke:#333,stroke-width:1px,color:white,fill-opacity:1.0;
```

