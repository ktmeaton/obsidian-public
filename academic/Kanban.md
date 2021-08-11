---
aliases:
  - Kanban
---

# Kanban Boards

## Overdue
```dataview
table project as Project,type as Type,due as Due, time as Time
from ""
where due and contains(status,"priority") and due<date(today) and !contains(file.path, "templates")
```

## Due

```dataview
table project as Project,type as Type,due as Due, time as Time
from ""
where due and contains(status,"priority") and due=date(today) and !contains(file.path, "templates")
```

## Done

```dataview
table project as Project,type as Type,due as Due
from ""
where due and contains(status,"done") and due=date(today) and !contains(file.path, "templates")
sort due asc
```

## Upcoming

```dataview
table project as Project,type as Type,due as Due, time as Time
from ""
where due and contains(status,"priority") and due>date(today) and !contains(file.path, "templates")
sort due asc
```

<!--
## Backlog

```dataview
table project as Project,type as Type, tags as Tag
from "" 
where (contains(status,"idea") or contains(status,"backlog"))
      and !contains(file.path, "templates")
	  and type and type!=[[Note]]
sort file.mtime desc
```
-->

![[Prize Store]]