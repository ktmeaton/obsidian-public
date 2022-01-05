---
aliases:
  - Retype Obsidian Links
tags:
  - 📝
status: idea
type: Note
---

# Retype Obsidian Links

```bash
key=Journal

# Test
grep "\[\[$key\]\]" *.md | \
  cut -d ":" -f 1 | \
  while read filename; do 
    echo $filename; 
	sed "s/\[\[$key\]\]/$key/g" $filename; 
	break; 
  done

# Run
grep "\[\[$key\]\]" *.md | \
  cut -d ":" -f 1 | \
  while read filename; do 
    echo $filename; 
	sed -i "s/\[\[$key\]\]/$key/g" $filename; 
  done  
````