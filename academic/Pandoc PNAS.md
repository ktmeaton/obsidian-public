---
title: Pandoc PNAS
subtitle: Rendering Test
---

```bash
# Default
pandoc \
  --reference-doc pandoc/templates/default/default.docx \
  -o 'Pandoc PNAS.docx' \
  'Pandoc PNAS.md'
  
# PNAS
pandoc \
  --reference-doc=pandoc/templates/PNAS/pnas.docx \
  -o 'Pandoc PNAS.docx' \
  'Pandoc PNAS.md'
```