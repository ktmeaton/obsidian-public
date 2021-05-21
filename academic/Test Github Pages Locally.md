---
aliases:
  - Test Github Pages Locally
tags:
  - 📝/🌿
status: done
type:
  - [[Note]]
  - [[Blog]]
---

# Test [[Github Pages]] Locally

[Github Pages](https://pages.github.com/) is an easy way to create and host your own [[static site]]. However, sometimes the build fails and additional troubleshooting is required. This is where building your site locally on your computer is helpful.

# Instructions

1. Install [[Ruby]] and [[Jekyll]]. This is my go-to [[conda]] environment for building [[Jekyll]] sites like [[Github Pages]]
2. Put this inside a file called ```environment.yaml```. 
	```yaml
	name: jekyll-site
	channels:
	  - conda-forge
	  - defaults
	dependencies:
	  - gxx_linux-64>=7.3.0
	  - make>=4.2.1
	  - ruby=2.6.6
	  - libxml2>=2.9.10
	```
3. Create the conda environment.
	```bash
	conda env create -f environment
	conda activate jekyll-site
	```
4. Install the [[Github Pages]] gem.
	```bash
	gem install github-pages
	```
5. Build your website.
	```bash
	jekyll build
	```
6. If the build succeeds, serve your website to <http://localhost:4000/>
	```bash
	jekyll serve
	```