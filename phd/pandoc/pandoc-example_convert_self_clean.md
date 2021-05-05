---
affiliations: McMaster Ancient DNA Centre
author:
- Katherine Eaton
authorLinks: "https://ktmeaton.github.io/"
bibliography: zotero.bib
csl: apa-numeric-superscript-brackets.csl
date: 2021-05-05
logo: "https://github.com/ktmeaton/plague-phylogeography/raw/master/docs/images/thumbnail_DHSI2020.png"
subtitle: An example file for testing pandoc conversion
title: Pandoc Example
website: "https://ktmeaton.github.io"
---

## Pandoc Example

This is an example markdown file for pandoc.

### Heading 1

This is under Heading 1.

This is a test wikilink.

This is a test alias.

This is a [test markdown link](path) that should not be altered.

This line has double links oh boy OH BOY.

### Code Blocks

This is an untyped code block

    echo UNTYPED

This is an typed code block

``` {.bash}
echo TYPED
```

^Note^: Do not use indented code blocks!

### Tables

Use a [table generator](https://www.tablesgenerator.com/html_tables#) to
make these. Use `<br>` to put line breaks between tables.

| Test      | Test2 |
|-----------|-------|
| Something | Else  |

: Test

### Citations

This is an in-text citation uses a BibTeX key<sup>1</sup> .

This is an in-text citation that uses an Obsidian link that is aliased
to a BibTeX key.<sup>2</sup> Note the internal square brackets in the alias.

The DOI filter pandoc-doi2bib causes a lot of conversion problems, so is
avoided.

### References 

1\. Eaton, K. (2020). NCBImeta: Efficient and comprehensive metadata
retrieval from NCBI databases. *Journal of Open Source Software*,
*5*(46), 1990. <https://doi.org/10.21105/joss.01990>

2\. Andrades Valtueña, A., Mittnik, A., Key, F. M., Haak, W., Allmäe,
R., Belinskij, A., Daubaras, M., Feldman, M., Jankauskas, R., Janković,
I., Massy, K., Novak, M., Pfrengle, S., Reinhold, S., Šlaus, M., Spyrou,
M. A., Szécsényi-Nagy, A., Tõrv, M., Hansen, S., ... Krause, J. (2017).
The Stone Age Plague and Its Persistence in Eurasia. *Current Biology*,
*27*(23), 3683--3691.e8. <https://doi.org/10.1016/j.cub.2017.10.025>
