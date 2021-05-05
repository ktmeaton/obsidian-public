---
affiliations: McMaster Ancient DNA Centre
author:
- Katherine Eaton
authorLinks: "https://ktmeaton.github.io/"
autoEqnLabels: false
autoSectionLabels: false
bibliography: zotero.bib
ccsDelim: ", "
ccsLabelSep: " --- "
ccsTemplate: $$i$$$$ccsLabelSep$$$$t$$
chapDelim: .
chapters: false
chaptersDepth: 1
codeBlockCaptions: false
cref: false
crossrefYaml: pandoc-crossref.yaml
csl: apa-numeric-superscript-brackets.csl
date: 2021-05-05
eqLabels: arabic
eqnPrefix:
- eq.
- eqns.
eqnPrefixTemplate: $$p$$ $$i$$
figLabels: arabic
figPrefix:
- fig.
- figs.
figPrefixTemplate: $$p$$ $$i$$
figureTemplate: $$figureTitle$$ $$i$$$$titleDelim$$ $$t$$
figureTitle: Figure
lastDelim: ", "
linkReferences: false
listings: false
listingTemplate: $$listingTitle$$ $$i$$$$titleDelim$$ $$t$$
listingTitle: Listing
lofTitle: |
  # List of Figures
logo: "https://github.com/ktmeaton/plague-phylogeography/raw/master/docs/images/thumbnail_DHSI2020.png"
lolTitle: |
  # List of Listings
lotTitle: |
  # List of Tables
lstLabels: arabic
lstPrefix:
- lst.
- lsts.
lstPrefixTemplate: $$p$$ $$i$$
nameInLink: false
numberSections: true
pairDelim: ", "
rangeDelim: "-"
refDelim: ", "
refIndexTemplate: $$i$$$$suf$$
secHeaderDelim: 
secHeaderTemplate: $$i$$$$secHeaderDelim[n]$$$$t$$
secLabels: arabic
secPrefix:
- sec.
- secs.
secPrefixTemplate: $$p$$ $$i$$
sectionsDepth: 3
subfigGrid: false
subfigLabels: alpha a
subfigureChildTemplate: $$i$$
subfigureRefIndexTemplate: $$i$$$$suf$$ ($$s$$)
subfigureTemplate: $$figureTitle$$ $$i$$$$titleDelim$$ $$t$$. $$ccs$$
subtitle: An example file for testing pandoc conversion
tableEqns: false
tableTemplate: $$tableTitle$$ $$i$$$$titleDelim$$ $$t$$
tableTitle: Table
tblLabels: arabic
tblPrefix:
- tbl.
- tbls.
tblPrefixTemplate: $$p$$ $$i$$
title: Pandoc Example
titleDelim: ":"
website: "https://ktmeaton.github.io"
---

# 1 Pandoc Example

This is an example markdown file for pandoc.

## 1.1 Heading 1

This is under Heading 1.

This is a test wikilink.

This is a test alias.

This is a [test markdown link](path) that should not be altered.

This line has double links oh boy OH BOY.

## 1.2 Code Blocks

This is an untyped code block

    echo UNTYPED

This is an typed code block

``` {.bash}
echo TYPED
```

^Note^: Do not use indented code blocks!

## 1.3 Tables {#sec:tables-section}

The table extension in Obsidian is extremely helpful for this. Note the
use of a table caption.

### 1.3.1 Pipe Tables

::: {#tbl:pipe-table}
| Test      | Test2 |
|-----------|-------|
| Something | Else  |

: Table 1: Test Pipe Table
:::

## 1.4 Citations

This is an in-text citation uses a BibTeX key^\[1\]^ .

This is an in-text citation that uses an Obsidian link that is aliased
to a BibTeX key.^\[2\]^ Note the internal square brackets in the alias.

The DOI filter pandoc-doi2bib causes a lot of conversion problems, so is
avoided.

## 1.5 CrossRef {#sec:test1}

-   A Cross reference to the tables section \[\#sec:tables\].
-   A reference to sec. 1.5.
-   A reference to the tables section (sec. 1.3).
-   A reference to an upcoming figure (fig. 1).
-   A reference to a previous table (tbl. 1).

![Figure 1: This is a figure
caption.](https://raw.githubusercontent.com/ktmeaton/plague-phylogeography/master/docs/images/thumbnail_DHSI2020.png){#fig:figure-map}

## 1.6 References {#references .unnumbered}

::: {#refs .references .csl-bib-body .hanging-indent line-spacing="2"}
::: {#ref-eaton2020NCBImetaEfficientComprehensive .csl-entry}
1\. Eaton, K. (2020). NCBImeta: Efficient and comprehensive metadata
retrieval from NCBI databases. *Journal of Open Source Software*,
*5*(46), 1990. <https://doi.org/10.21105/joss.01990>
:::

::: {#ref-andradesvaltuena2017StoneAgePlague .csl-entry}
2\. Andrades Valtueña, A., Mittnik, A., Key, F. M., Haak, W., Allmäe,
R., Belinskij, A., Daubaras, M., Feldman, M., Jankauskas, R., Janković,
I., Massy, K., Novak, M., Pfrengle, S., Reinhold, S., Šlaus, M., Spyrou,
M. A., Szécsényi-Nagy, A., Tõrv, M., Hansen, S., ... Krause, J. (2017).
The Stone Age Plague and Its Persistence in Eurasia. *Current Biology*,
*27*(23), 3683--3691.e8. <https://doi.org/10.1016/j.cub.2017.10.025>
:::
:::
