---
project:
due: 2021-05-18
people:
tags: ⬜/🧨 
status: done
title: NCBImeta Python 3.9
type: [[Task]]
---

# NCBImeta Python 3.9

- Start by investigating what commits are relevant to this issue.

```bash
git log | grep -B 4 python | less -S
```

- I removed [[Python#3 9\| Python 3.9]] support previously because [[NumPy]] failed to build. The challenge now is to find a version of [[NumPy]] that will build for both [[Python#3.9\|Python 3.9]] and [[Python#3 6\|Python 3.6]].
	- ❌ [[Numpy]] 1.20.3
	- ✔ [[Numpy]] 1.19.5