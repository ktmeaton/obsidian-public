---
aliases:
  - Troubleshoot 0.PRE Model Selection
tags:
  - 📝/🌱
status: idea

---

# Troubleshoot 0.PRE Model Selection

> [[Sebastian Duchene]]:
> - "*The problem is that the root-to-tip regression looks good, BETS using a strict clock supports temporal signal, but not using a relaxed clock, which is unheard of.  I ran 5 replicates using dates and without under the relaxed clock and this model still doesn't support temporal signal. I am pretty sure that it comes down to the very small size of the tree and it strong ladder-like pattern. Ultrameterising it can be done by making the among branch rate variation be just a little higher. Because the ultrametric model has one fewer parameter it gets favoured. The strict clock doesn't have this flexibility, so the best fit is indeed the one with dates (roughly matching the regression). *"
>  - *"So, I think we explain this in the paper and include the SC dated tree if needed. At this stage I can't prove that the explanation above is correct because it would require a simulation study into the sensitivity of BETS in small data sets and some sort of assessment of overfitting, which is beyond this study. "*
