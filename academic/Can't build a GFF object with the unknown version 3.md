---
aliases:
  - Can't build a GFF object with the unknown version 3
tags:
  - 📝/🌱
status: idea

---

# Can't build a GFF object with the unknown version 3

```text
------------- EXCEPTION: Bio::Root::Exception -------------
MSG: Can't build a GFF object with the unknown version 3
STACK: Error::throw
STACK: Bio::Root::Root::throw /usr/local/ensembl/current/bioperl-1.2.3/Bio/Root/Root.pm:342
STACK: Bio::Tools::GFF::new /usr/local/ensembl/current/bioperl-1.2.3/Bio/Tools/GFF.pm:115
STACK: /2/scratch/poinarlab/plague-phylogeography/workflow/envs/plague-phylogeography/bin/snippy:198
-----------------------------------------------------------
```

## Why does the error occur.

- There is a variable called PERL5LIB that is needed for perl programs to run properly. This variable stores a list of directories where essential perl code is stored. 
- For some reason, there is a program on Brian's machine that overrides this variable and points it in the wrong direction. We need to change the variable so that perl will look in the correct directory (ie. one associated with your current conda environment: snippy-env.

 
## Code Fix

```bash
export PERL5LIB=~/miniconda3/envs/snippy-env/lib/site_perl/5.26.2/:$PERL5LIB
```

This changes the PERL5LIB variable to look in directories associated with your conda snippy-env environment. Let me know if it works! You always check to see if it works with:

```bash
echo $PERL5LIB
```