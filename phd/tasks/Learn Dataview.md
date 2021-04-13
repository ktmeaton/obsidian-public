---
project: [[Obsidian]]
due:
people:
tags: ⬜/📋 
status: idea
---

# Learn Dataview

## File Information

```dataview
table file, tags
from ""
where file.name="Yersinia pestis"
```
	
### Backlinks in a file

```dataview
table tags
from [[Yersinia pestis]]
```

### Project

```dataview
table People
from [[Project]]
where file.path != "templates/Project.md"
```

### Tasks

```dataview
table people, due
from "tasks"
where people=[[Emil Karpinski]] or due=[[2021-04-16]]
```
