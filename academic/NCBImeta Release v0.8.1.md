---
project:
due: 2021-05-19
time: 13:00
people:
tags: ⬜/🚂
status: backlog
title: NCBImeta Release v0.8.1
type: [[Task]]
---

# NCBImeta Release v0.8.1

- [[PyPI]]: https://pypi.org/project/NCBImeta/
- Bioconda Recipes: https://github.com/bioconda/bioconda-recipes/pulls?q=ncbimeta
- Current PR: https://github.com/bioconda/bioconda-recipes/pull/26929

> Sadly, numpy dropped support for Python 3.6 in version 1.20, and only started releasing binary wheels for Python 3.9 in version 1.19.3. Without the binary wheels, build errors occur in my CI. I did some testing and the numpy versions that can support this range of Python are extremely narrow, 1.19.3-1.19.5 . I'll do a new commit with relaxed dependencies for your review.
>
> This might be the sign that I'll also be dropping Python 3.6 in my next release...
