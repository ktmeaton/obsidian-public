---
aliases:
  - Retrieve Citations By Paper
tags:
  - 📝/🌱
status: idea

---

# Retrieve Citations By Paper

```bash
#paper="Eaton_2021_PhD_Dissertation.md"
#paper="Eaton_2020_NCBImeta.md"
#paper="Eaton_et_al._2021_Plagued_by_a_cryptic_clock.md"
paper="Eaton_et_al._2021_Plague_in_Denmark_1000-1800.md"

in_bib=pandoc/bib/library.bib
tmp_bib=pandoc/bib/tmp.bib
#out_bib=pandoc/bib/introduction.bib
#out_bib=pandoc/bib/ncbimeta.bib
#out_bib=pandoc/bib/plagued_by_a_cryptic_clock.bib
out_bib=pandoc/bib/denmark.bib

cat $in_bib | tr '\n' ' ' | sed 's/@/\n@/g' | tail -n+2 > $tmp_bib
grep -oE '\[@[[:alnum:]]*' $paper \
  | grep -v "cite" \
  | sed -E 's/@|\[|\]//g' \
  | while read line; do grep "$line" $tmp_bib; done \
  | sed 's/   /\n\t/g' \
  | sed 's/@/\n@/g' | tail -n+2 > $out_bib
```