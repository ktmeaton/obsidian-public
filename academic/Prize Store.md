---
aliases:
  - Prize Store
tags:
  - 📝/🌱
status: idea

---

# Prize Store

## Wallet

## History

### [[2021-08-11]]

|  Status  | Redeemed |
|:--------:|:--------:|
|   Done   |    10    |
| Redeemed |    0     |


```dataview
table tags
from ""
where due=date(2021-08-11) and contains(status,"done")and !contains(file.path, "templates")
```