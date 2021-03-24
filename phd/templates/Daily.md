# 📆 {{date}}

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
line:(⬜/🧨 {{date}}) -path:journal/{{date}} -path:templates
```

### Upcoming

```query
line:(⬜/🧨 -{{date}}) -path:templates -path:templates -INDEX
```

---

tags: [[Journal]]
prev: [[{{date}}]]
next: [[{{date}}]]