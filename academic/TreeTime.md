# TreeTime

## Summary

[[obsidian-public/academic/TreeTime]] can infer an [[Evolution|evolutionary model]], [[Root|reroot]]  a tree to maximize #[[Clock Model|temporal signal]], estimate a [[Timetree|timetree]], and a [[Tree Prior|population size history]] with the [[Tree Prior#Coalescent|coalescent]] and [[Tree Prior#Skyline|skyline]].

---

## Figures

Figure 8. EBOV phylodynamic analysis. Top panel is the time tree, bottom panel is the coalescent population sizes.
![[sagulenko2018TreeTimeMaximumlikelihoodPhylodynamic_fig8.jpg]]

## Mods

### Branch: datetime-max

1. Outlier node is estimated to have a date greater than 9999. The ```datetime``` module can't parse that and raises an error in date conversion.
	- Proposed Fix: catch bad node, and reset its date to 9999 (```clock_tree.py```)

	```python
	#clock_tree.py#L681
	if node.numdate > 9999:
		self.logger("ClockTree.convert_dates -- WARNING: node date is greater than datetime maximum of 9999, resetting to 9999.",4 , warn=True)
		node.numdate = 9999
	```

### Branch: dist-non-overlap
1. Multiplying non-overlapping distributions. The arrays of x and y values will be empty, causing the ValueError:
	```ValueError: zero-size array to reduction operation minimum which has no identity```
	I think was observed in [Issue #13](https://github.com/neherlab/treetime/issues/130)?
	- Proposed Fix: catch the bad distributions, to generate the already implemented warning (```distribution.py)```.

	```python
	#distribution.py	
	new_xmin = np.max([k.xmin for k in dists])
	new_xmax = np.min([k.xmax for k in dists])
	
	if new_xmin > new_xmax:
		n_points = 0
	else:
		x_vals = np.unique(np.concatenate([k.x for k in dists]))
		x_vals = x_vals[(x_vals>new_xmin-TINY_NUMBER)&(x_vals<new_xmax+TINY_NUMBER)]
		y_vals = np.sum([k.__call__(x_vals) for k in dists], axis=0)
		peak = y_vals.min()
		ind = (y_vals-peak)<BIG_NUMBER/1000
		n_points = ind.sum()
	```

### Branch: skyline-converge

1. Using ```Tc='skyline'``` always runs the max iterations and can never trigger a convergence notice.
 - Proposed Fix: 
	 - Keep track of whether the run has converged.
	 - If skyline was chosen, force the next iteration to be the last and include skyline.

### Branch: tracelog

1. It would be helpful to see how parameters change throughout the run, similar to examining the tracelog of MCMC chains (BEAST).
1. The TreeTime object would have a ```run_info``` attribute that would be a dictionary of parameters for each iteration.
1. The TreeTime object would have an associated plotting function to visualize.
3. And also a plotting function.
  - Sequence Changes (ndiffs)
  - Polytomy Resolutions (n_resolved)
  - Sequence Likelihood
  - Positional Likelihood
  - Coalescent Likelihood

Uses:
  - Examine why a run is not converging.
  - General troubleshooting.


>Tracelog
>
>I'd like to propose (and implement) a new feature: a tracelog for timetree runs.
>
>**Problem**: I'd like to troubleshoot why a run is not converging, or compare different runs.
>**Solution**: Store run parameters during each iteration and save to a tracelog file.
>
>I wrote a function that stores likelihoods and other parameters for each iteration of the ```TimeTree.run``` function. The output can be visualized with ```Tracer``` for a comparable approach to BEAST/MCMC.
>
>Example: Sequence changes and polytomy resolution
>Example: Tree likelihood
>
### Branch: rand-seed

---

tags: [[Tool]]