---
aliases:
  - Reload Python Module
tags:
  - 📝/🌱
status: idea

---

# Reload Python Module

```python
import sys, importlib
importlib.reload(sys.modules['functions'])
from functions import calc_peak_ci
```