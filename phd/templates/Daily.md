# 📆 {{date}}

Before planning a day, reflect on the [[PhD Timeline]]. Does what you [[want to do]] match what you [[need to do]]?

## PhD Timeline

![[PhD Timeline]]

## Day Planner
- [ ] 09:00 Setup for work 💻
- [ ] 09:30 Plan day 📋
- [ ] 10:00 Check email 📧
- [ ] 12:00 Lunch 🍙
- [ ] 16:00 Write daily notes ✏️
- [ ] 17:00 Finish work for the day 🎉

## Tasks

### Due Today

```query
line:("⬜/🧨 | [[{{date}}]]") -path:README -path:Kanban -path:journal -path:templates
```

### Done Today

```query
line:("⬜/✨ | [[{{date}}]]") -path:README -path:Kanban -path:journal -path:templates
```


### Upcoming

```query
line:(⬜/🧨 -{{date}}) -path:README -path:Kanban -path:journal -path:templates
```

---

tags: [[Journal]]  
prev: [[{{date}}]]  
next: [[{{date}}]]  
scratch: [[scratch/{{date}} Scratch|{{date}} Scratch]]