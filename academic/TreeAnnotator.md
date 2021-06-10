# TreeAnnotator

## Summary

TreeAnnotator is software that summarizes a distribution of trees from [[BEAST]].

```bash
treeannotator -burnin 10 -hpd2D 0.95 beast.timetree.trees beast_mcc_hpd95.nex
```

```text
-noSA interpret the tree set as begin from a not being from a sampled ancestor analysis, even if there are zero branch lengths in the tree set
```

```bash
treeannotator -burnin 10 -hpd2D 0.95 beast.trees beast_mcc_hpd95.nex
```

```bash
for file in `ls *.trees`;
do
  echo $file;
done
```
---

tags: [[Tool]], #📝/🌱