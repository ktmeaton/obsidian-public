# spreaD3

## Summary

Pathogen spread analysis using the D3 javascript library.

## Issues

### Unable to open file in browser
- ticket: https://github.com/phylogeography/SpreaD3/issues/32
- solution:
	```bash
	git submodule add https://github.com/VirologyCharite/convert-spread3
	cd convert-spread3
	./convert-spread3.sh
	```

- create a spreaD3 rendering for an MCC tree with continuous traits then run this script.
- 
```
/mnt/c/Users/ktmea/Projects/BEAST2-Phylogeography/convert-spread3/convert-spread3.sh
```

- But how about a distribution of trees?

---
tags: [[Tool]], [[BEAST]]