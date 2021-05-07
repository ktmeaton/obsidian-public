---
project: [[Obsidian]]
tags: ⬜/✨
status: done
title: Test notenote.link
type: [[Task]]
---

# Test notenote.link

## Install 

1. [x] Create a Fork of [Maxence-L/notenote.link](https://github.com/Maxence-L/notenote.link) located now at <https://github.com/ktmeaton/obsidian-site>.
2. [x] Clone locally ```git clone https://github.com/ktmeaton/obsidian-site.git```
3. [x] Create a conda environment with the dependencies:

```yaml environment.yaml
name: obsidian-site
channels:
  - conda-forge
  - defaults
dependencies:
  - gxx_linux-64>=7.3.0
  - make>=4.2.1
  - ruby=2.6.6
  - libxml2>=2.9.10
```
	
```bash
sudo apt-get install ubuntu-dev-tools
mamba env create -f environment.yaml
conda activate obsidian-site
```
		
4. [x] Install dependencies with [[Jekyll]].
```bash
gem install bundler:2.1.4
bundle config build.nokogiri \
  --use-system-libraries \
  --with-xml2-dir ${HOME}/miniconda/envs/obsidian-site/lib/
bundle
```

This causes errors relating to [[Nokogiri]]. However, the following command fixed it

```bash
gem install nokogiri -v '1.10.10' --source 'https://rubygems.org/'
```

5. [x] Build and serve the site.
```bash
bundle exec jekyll build
bundle exec jekyll serve
```
	
## Deploy to [[Github Pages]]

1. [x] Read [this Issue](https://github.com/Maxence-L/notenote.link/issues/5#issuecomment-762508069) to review the changes needed for github pages.
```bash
cd _includes/
sed -i "s/{%- include toc.html -%}/{% include toc.html html=content %}/g" content.html
rm toc.html
wget https://raw.githubusercontent.com/allejo/jekyll-toc/master/_includes/toc.html
```
2. [x] Follow the instructions in the [[Gemfile]] to enable a [[Github Pages]] theme.
```bash
bundle update
```
3. [x] Rebuild and test locally.
```bash
bundle exec jekyll build && bundle exec jekyll serve
```

[[Github Pages]] does not have any style, it's plain  [[HTML]] and the links are all bad. Time to edit ```_config.yml```. 

- I think [this issue](https://github.com/github/pages-gem/issues/460) is relevant.
- [Here's a post](https://byparker.com/blog/2014/clearing-up-confusion-around-baseurl/) about ```baseurl```.

4. [x] Test Subdirectories in Notes

## Add Obsidian Vault

- [x] Add public vaults as submodule