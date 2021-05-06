# LSD2

## Summary

LSD2 is software that creates [[Timetree|time trees]].

## Input

### Dates

```bash
wc -l /mnt/c/Users/ktmea/Projects/plague-phylogeography/results/iqtree/all/chromosome/full/filter5/metadata.tsv > /mnt/c/Users/ktmea/Projects/plague-phylogeography/results/lsd/all/chromosome/full/filter5/lsd.dates.txt;

cut -f 1,4 /mnt/c/Users/ktmea/Projects/plague-phylogeography/results/iqtree/all/chromosome/full/filter5/metadata.tsv  | \
  tail -n+2 | \
  sed 's/\[/b(/g'  | \
  sed 's/\]/)/g' | \
  sed 's/:/,/g' >> /mnt/c/Users/ktmea/Projects/plague-phylogeography/results/lsd/all/chromosome/full/filter5/lsd.dates.txt;
echo -e "Reference\t-29" >> /mnt/c/Users/ktmea/Projects/plague-phylogeography/results/lsd/all/chromosome/full/filter5/lsd.dates.txt;
```

## Notes

When [[IQTREE]] runs [[LSD2]], the command looks like this:

```bash
lsd -i /mnt/c/Users/ktmea/Projects/plague-phylogeography/results/lsd/all/chromosome/full/filter5/lsd.timetree.subst -s 4246718 -o /mnt/c/Users/ktmea/Projects/plague-phylogeography/results/lsd/all/chromosome/full/filter5/lsd.timetree -f 100 -e 3 -r a -d /mnt/c/Users/ktmea/Projects/plague-phylogeography/results/lsd/all/chromosome/full/filter5/lsd.timetree.date -g sdfsdf
```

Let's try this with compiling the program from source.

```bash
/mnt/c/Users/ktmea/Programs/lsd2/src/lsd2 \
  -i /mnt/c/Users/ktmea/Projects/plague-phylogeography/results/iqtree/all/chromosome/full/filter5/iqtree.filter.nwk \
  -s 4246718 \
  -o lsd \
  -f 100 \
  -e 3 \
  -r k \
  -d lsd.dates.txt \
  -g lsd.outgroups.txt
```

./lsd [-i inputFile] [-d inputDateFile] [-o outputFile] [-s sequenceLength] [-g outgroupFile] [-f nbSamplings]

### Options

```yaml
- S: 'Together with collapsing internal short branches (see option -l), users can also collapse internal branches having weak support values (if provided in the input tree) by using this option. The program will collapse all internal branches having support <= the specifed value.'

-r: 
 -l: 'if your tree is rooted, and you want to re-estimate the root locally around the given root.'
 -k: 'if you want to re-estimate the root position on the same branche of the given root.'
```

```yaml
-R: 'This value is used to round the minimum branch length of the time scaled tree.'
```

Since my data is at the year resolution, I may want to use ```-R 1```

>To calculate confidence intervals, the sequence length is required via option -s

### Topology Changes

The topology is changing, especially around the root.  The first basal clade that was previously monophyletic has now been fragment. Why is that?
	- [  ] Specifying an outgroup?
	- [  ] Collapsing internal branches?

- [ ] The topology is being
- [ ] 



---

tags: [[Tool]], #📝/🌱