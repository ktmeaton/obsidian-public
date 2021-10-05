---
aliases:
  - Nextstrain ncov
tags:
  - 📝/🌱
status: idea
url: https://github.com/nextstrain/ncov
---

# Nextstrain ncov

## Install

1. Dependencies
	```bash
	# Install dependencies
	mamba create -n nextstrain -c conda-forge -c bioconda \
	  augur auspice nextstrain-cli nextalign snakemake awscli git pip

	# Check and set defaults (native)
	conda activate nextstrain
	nextstrain check-setup --set-default
	```

1. Workflow
	```bash
	# Fork https://github.com/nextstrain/ncov.git
	git clone https://github.com/ktmeaton/ncov
	cd ncov
	
	git remote add upstream https://github.com/nextstrain/ncov.git
	git checkout -b ktmeaton
	```

1. Update
```bash
# Download and apply changes from the Nextstrain team.
# This only works if there is no conflict with your local repository.
git pull --ff-only upstream master

# OR:

# Alternately, download and apply changes from the Nextstrain team
# and then replay your local changes on top of those incoming changes.
git pull --rebase origin master
```

## Unzipping Data

```bash
unxz example_sequences_worldwide.fasta.xz
```

## Clade Assignment

- URL: https://clades.nextstrain.org/