```
title: BEAST2 Phylogeography
```

# BEAST2 Phylogeography

## Outline

### Tutorial (YFV)

1. Create a new project for tutorial-

### Project (1-ORI)

1. Create a new project for 1-ORI.
1. Create an alignment of samples from 1-ORI.
1. Estimate tree and ancestral states with BEAST2.

## Steps

1. Create a new project: ```1-ORI``` 
1. Construct a SQL query to select just #Clade/1-ORI  samples.
	```bash
	SQL SELECT ...
	```
1. Construct a new multiple alignment.
	```
	workflow/scripts/project_load.sh results/ project/1-ORI rsync ...
	```

## Tools

```yaml
BEAST2: 2.6.3
GEO-SPHERE: 
spreaD3
```