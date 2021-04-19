---
project:
due: {{date}}
people:
tags: ⬜/📋 
status: idea
aliases:
  - {{title}}
---

# {{title}}

## Tasks

```dataview
task from "tasks"
where contains(file.name, "{{title}}")
```