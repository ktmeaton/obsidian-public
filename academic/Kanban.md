# Kanban Boards

## Overdue
```dataview
table project as Project,type as Type,due as Due
from ""
where due and contains(status,"priority") and due<date(today) and !contains(file.path, "templates")
```

## Due

```dataview
table project as Project,type as Type,due as Due
from ""
where due and contains(status,"priority") and due=date(today) and !contains(file.path, "templates")
```

## Upcoming

```dataview
table project as Project,type as Type,due as Due
from ""
where due and contains(status,"priority") and due>date(today) and !contains(file.path, "templates")
sort due asc
```

## Done

```dataview
table project as Project,type as Type,due as Due
from ""
where due and contains(status,"done") and due=date(today) and !contains(file.path, "templates")
sort due asc
```

## Backlog

```dataview
table project as Project,type as Type
from ""
where contains(status,"idea") and !contains(file.path, "templates")
sort file.name asc
```