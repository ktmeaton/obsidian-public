---
project: [[Obsidian]]
tags: ⬜/📋 
status: idea
type: [[Task]]
bibliography: library.bib
---

# PDF export with Manubot

---

- Manubot was developed by [@himmelstein2019OpenCollaborativeWriting].
- A summary script was created at [[pandoc/manubot.sh]].
	```bash
	pandoc/manubot.sh 'PDF export with Manubot.md' library.bib 2> manubot.log
	```


## Installation

1. Install [[Rootstock]]
```bash
git submodule add https://github.com/ktmeaton/rootstock.git
cd rootstock
conda activate manubot
build/build.sh
```

2. Edit the build script to export [[Docx]] by default.

Ideally, I'd like to have the frontmatter not be an external file... but that's not going to work.

Once the [[MD]] output is generated, the [[PDF]] is generated with:

```bash
ln -s content/images
pandoc \
	--data-dir=build/pandoc \
	--defaults=common.yaml \
	--defaults=html.yaml \
	--defaults=pdf-weasyprint.yaml
rm images
```

## Manual PDF

1. Copy [[Markdown]] file to be exported to the ```output``` directory:
```bash
INPUT='Chromosome Resequencing Experiment.md'

# Convert Wikilinks
./pandoc/convert_wikilinks.py --input $INPUT --output rootstock/output/manuscript.md
cd rootstock;

# Export PDF
pandoc --data-dir=build/pandoc --defaults=common.yaml --defaults=html.yaml --defaults=pdf-weasyprint.yaml

# Export HTML
pandoc --verbose --data-dir=build/pandoc --defaults=common.yaml --defaults=html.yaml

# Export DOCX
pandoc --verbose --data-dir=build/pandoc --defaults=common.yaml --defaults=docx.yaml

```

## References