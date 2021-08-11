---
project: [ [ plague-phylogeography ] ]
due: 2021-05-03
people: null
tags: ✨
status: done
title: Calculate p Value for Mugration
type: [ [ Task ] ]
---

# Calculate p Value for Mugration

Given n states (i1, i2...,in) what is the probability of observing transition from state ij to ik by chance? Assuming all state transitions occur at equal frequency. Also assume reversable.

```python
import itertools

states_dict = {
	"Russia" : 4,
	"Lithuania" : 1,
	"Estonia": 1,
	"Germany": 2,
}
states = []
for state,freq in states_dict.items():
	states += [state] * freq
	
transitions = list(itertools.permutations(states, 2))
transitions_uniq = set(transitions)

for t in transitions_uniq:
	print(t, round(transitions.count(t) / len(transitions),2))
```

> I'm tackling the issue of sampling bias in mugration, and was curious if a p-value might be of use here?
> Given *n* states s<sub>1</sub>, s<sub>2</sub>,... s<sub>n</sub> with frequencies f<sub>1</sub>, f<sub>2</sub>,...f<sub>n</sub>, what is the probability of observing a transition of s<sub>j</sub> to s<sub>k</sub> by chance?

> What is the probability of observing a mugration event between Russia and Germany by chance?
```python
import itertools

states = ["Russia", "Lithuania", "Estonia", "Germany"]
frequencies = [4,1,1,2]

observations = []
for s,f in zip(states, frequencies):
	observations += [s] * f
# ['Russia', 'Russia', 'Russia', 'Russia', 'Lithuania', 'Estonia', 'Germany', 'Germany']

# I'm uncertain if "staying in place" should be considered a transition

transitions = list(itertools.permutations(observations, 2))
transitions_uniq = set(transitions)

target = ("Russia", "Germany")
pvalue = transitions.count(target) / len(transitions)

# Results in a p-value of 0.14
```