# BEAUti

1. Install the [[GEO_SPHERE]] and [[CoupledMCMC]] packages using the [[BEAUti]] GUI package manager:
	```bash
	ssh -X username@remote.com
	ssh -X node
	conda activate plague-phylogeography
	beauti
	```
	
##### [[BEAUti]]

1. Setup run parameters in GUI:
	```yaml
	alignment: main.fasta
	
	tip-dates: 
	  - file: main_dates.tsv
	  - mode: numerically as year before the present
	  
	spherical-geometry:
	  - trait-name: geo
	  - lat-file: main_lat.tsv
	  - lon-file: main_lon.tsv
	 
	site-model:
	  - modern:
	    - gamma-category-count: 0
	    - proportion-invariant: 0.998
	    - subst-model: GTR
	    - frequencies: Empirical
	  - geo:
	    - subst-model: JC69
	    - frequencies: Estimated
	    
	clock-model:
	  modern:
	    - clock: Relaxed Clock Log Normal
	    - discrete-rates: -1
	    - Clock.rate: 0.00000001 (estimate)
	  geo:
	    - clock: "Relaxed Clock Log Normal"
	    - discrete-rates: -1
	    - Clock.rate: 1.0	 
	
	starting-tree:
	  - newick-tree
	  	- is-labelled-newick: True
	  	- Newick: (paste in TreeTime newick with internal nodes removed)
	priors:
	  - tree: Coalescent Skyline Population
	    - ngroups: 5
	  - mrca:
	    - Marseille.prior:
	      - taxa:
	        - SAMEA3713711
	        - SAMEA3713712
	        - SAMEA3713713
	        - SAMEA3713714
	        - SAMEA3713715
	      - uniform:
	        - lower: 299.0
	        - upper: 301.0
	    - East-Smithfield.prior:
	      - taxa:
	      	- SAMN00715800
	      - uniform:
	        - lower: 671.0
	        - upper: 673.0 
	
	mcmc:
	  - chain-length: 10000000
	  - store-every: -1
	  - pre-burnin: 0
	  - num-initialization-attempts: 10
	  - tracelog: 
	    - file-name: modern_trace.log
	    - log-every: 10000
	  - screenlog:
	    - log-every: 10000
	  - treelog:
	    - file-name: modern.trees
	    - log-every: 10000
	 
	```
1. Save output as ```main.xml```.
1. Convert to a [[CoupledMCMC]] by changing:
	```xml
	<run id="mcmc" spec="MCMC" chainLength="10000000" numInitializationAttempts="10">
	
	<run id="mcmc" spec="beast.coupledMCMC.CoupledMCMC" chainLength="10000000" chains="4" target="0.234" logHeatedChains="true" deltaTemperature="0.1" optimise="true" resampleEvery="1000" >
	```
1. [ ] Add the constant sites by changing:
	```xml
    <data id="main" spec="Alignment" name="alignment">
		
	<data id="main-original" spec="Alignment" name="alignment">	
	```
	And changing:
	```xml
 	<alignment idref="main"/>
		
    <alignment id="main" spec="FilteredAlignment" filter="-">
    	<data idref="main-original"/>
        <constantSiteWeights id="IntegerParameter.0" spec="parameter.IntegerParameter" dimension="4" lower="0" upper="0">1119279 1007240 1018377 1115997</constantSiteWeights>
   	</alignment>

	```
	