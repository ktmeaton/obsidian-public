---
project:
due: {{date}}
people:
tags: ⬜/📋 
status: idea
title: {{title}}
type: [[Task]]
---

# {{title}}

## Tasks

```dataview
task from "tasks"
where contains(file.name, "{{title}}")
```