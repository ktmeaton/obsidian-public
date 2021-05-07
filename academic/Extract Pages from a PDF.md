---
aliases:
  - Extract Pages from a PDF
tags:
  - 📝/🌱
status: done
---

# Extract Pages from a PDF

```bash
gs -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dFirstPage=2 -dLastPage=3 -sOutputFile=output.pdf input.pdf
```