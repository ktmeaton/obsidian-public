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

## Today

```dataview
table project as Project,type as Type,due as Due, time as Time
from ""
where due and contains(status,"priority") and due=date(today) and !contains(file.path, "templates")
```

## Tomorrow

```dataview
table project as Project,type as Type,due as Due
from ""
where due and contains(status,"priority") and due=date(today) + dur(1 day) and !contains(file.path, "templates")
sort due asc
```

## This Week

```dataview
table project as Project,type as Type,due as Due
from ""
where due and contains(status,"priority") and (due>date(today) + dur(1 day)) and (due<date(today) + dur(7 day))  and !contains(file.path, "templates")
sort due asc
```

## This Month

```dataview
table project as Project,type as Type,due as Due
from ""
where due and contains(status,"priority") and (due>date(today) + dur(8 day)) and (due<date(today) + dur(30 day))  and !contains(file.path, "templates")
sort due asc
```

## Long Term

```dataview
table project as Project,type as Type,due as Due, time as Time
from ""
where due and contains(status,"priority") and due>date(today) + dur(30day) and !contains(file.path, "templates")
sort due asc
```