# PhyD3# PhyD3

## Summary

PhyD3 is software that performs...

## Documentation

<https://phyd3.bits.vib.be/documentation.html>

## Example

1. Create a newick tree.
```newick
echo "((raccoon:19.19959,bear:6.80041)Group_1:0.84600,((sea_lion:11.99700, seal:12.00300)Group_2:7.52973,((monkey:100.85930,cat:47.14069)Group_3:20.59201,weasel:18.87953):2.09460):3.87382,dog:25.46154);" > test.nwk
```
1. Convert to XML
```python
from Bio import Phylo
tree = Phylo.read('test.nwk','newick')
target_nodes = ["weasel", "monkey", "cat"]
default_tax = Phylo.PhyloXML.Taxonomy(code="default")
target_tax = Phylo.PhyloXML.Taxonomy(code="1_PRE")

for c in tree.find_clades():
	if c.name in target_nodes:
		
Phylo.write(tree, 'test.xml','phyloxml')
```

1. Submit to [PhyD3](https://phyd3.bits.vib.be).
1. Export to XML.
1. Make the XML "pretty":
	```python
	from lxml import etree
	parser = etree.XMLParser(remove_blank_text=True)
	tree = etree.parse("test.xml", parser)
	tree.write("test_pretty.xml", pretty_print=True)
	```
1. Add taxonomy to a clade:
	```xml      
    <taxonomy>
    	<code>Test_Taxonomy</code>
    </taxonomy>
	```
1. Add taxonomy colors:
	```xml
	<taxonomies>
		<taxonomy code="Test_Taxonomy">
			<color>0x8000ff</color>
		  	<name></name>
		</taxonomy>
	</taxonomies>
	```
---

tags: [[Tool]]