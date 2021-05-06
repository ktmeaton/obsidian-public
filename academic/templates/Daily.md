---
type: [[Journal]]
---

# 📆 {{date}}

Before planning a day, reflect on the [[PhD Timeline]]. Does what you [[want to do]] match what you [[need to do]]?

## PhD Timeline

![[PhD Timeline]]

## Day Planner
- [ ] 09:00 Setup for work 💻
- [ ] 09:15 Plan day 📋
- [ ] 09:30 Check email 📧
- [ ] 12:00 Lunch 🍙
- [ ] 16:00 Write daily notes ✏️
- [ ] 16:30 Check email 📧
- [ ] 17:00 Finish work for the day 🎉

## Tasks

### Overdue

```dataview
table due, project, tags
from "tasks"
where status="priority" and status!="done" and due<date({{date}})
sort due
```


### Due

```dataview
table due, time, project, tags
from "tasks"
where status!="done" and due=date({{date}})
sort due
```

### Done

```dataview
table due, project, tags
from "tasks"
where status="done" and due=date({{date}})
sort due
```

### Upcoming

```dataview
table due, project, tags
from "tasks"
where status!="done" and status!="idea" and due>date({{date}})
sort due
```

---

tags: [[Journal]]  
prev: [[{{date}}]]  
next: [[{{date}}]]  