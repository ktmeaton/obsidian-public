---
aliases:
  - Prize Store
tags:
  - 📝/🌱
status: idea

---

# Prize Store

## Menu	

| Prize  | Cost  | Tasks |
|:------:|:-----:|:-----:|
| Welkin | $6.99 |  14   |
|   BP   | $13.99 |  28   | 

## History

### [[2021-08-11]] | 11 | $5.50

|  Status  | Redeemed |
|:--------:|:--------:|
|   Done   |    11    |
| Redeemed |    0     |


```dataview
table tags
from ""
where due=date(2021-08-11) and contains(status,"done")and !contains(file.path, "templates")
```