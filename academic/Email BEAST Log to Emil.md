---
project: null
due: 2021-04-20
people: null
tags: ✨
status: done
title: Email BEAST Log to Emil
type: [ [ Task ] ]
---

# Email BEAST Log to Emil

## Tasks

```dataview
task from "tasks"
where contains(file.name, "Email BEAST Log to Emil")
```

## Email

>Hi Emil,
>
> I have my first results for a BEAST run! I've attached my log if you wanted to take a look. This run is 100M generations, using a fixed-tree. I'm estimating parameters of two general models:
> - DNA substitutions (rates, nucleotide frequencies)
> - Geographic location (mean rate, standard deviation)
> 
> My interpretation is that the DNA substitution model is well-sampled, although that's just recapitulating the tree that I used as input. The geographic location model has problems, in that around generation 90M the state changes dramatically. Which results in a bimodal distribution for the rate parameters ([[ucld.mean]] and [[ucld.stdev]]). 

| [[ucld.mean]] Estimate                    | [[ucld.mean]] Trace                       |
| ----------------------------------------- | ----------------------------------------- |
| ![[BEAST Tracer Histogram 3.png\|500]] | ![[BEAST Tracer Trace 3.png\|300]]  |

> I wonder if my next experiment should be to run 3 independent chains of 50-100M generations each, and check for convergence? A 100M generation run only takes about a day.

> Cheers,
> Kat

## Replies

>Hi Kat,
>
>I would agree. It looks like your DNA substitution model is very, very well sampled and mixing really well. Your ESS scores are very close to the number of samples you drew (9001) suggesting you're moving and exploring the parameter very well.
>
>I'm not sure if the problems with the data are due to the geographic location. ucld.mean and ucl.stdev are uncorrelated lognormal clock parameters and may be being tripped up by some temporal aspect. I haven't run the geographic stuff yet, but I think the geographic parameters are the ones that start with location.*.
>
>I wonder if my next experiment should be to run 3 independent chains of 50-100M generations each, and check for convergence? A 100M generation run only takes about a day.
This was going to be my suggestions as well.
>
>What we can also try is playing with the tuning and weight operators on some parameters that aren't being sampled as well to spend more time exploring them, but let's try the above first.
>
>The other thing that might be interesting to try is to start the chain in that second peak (with a start value in there) and see if it manages to leave.
>
>Best,
>
>Emil

---

> Hi Emil,
>
> You're definitely right about the ucld parameters, I think I'm confusing which partition those pertain to. I'm going to label my different data partitions more explicitly (nucleotide and location) to help me interpret these better.
>
> As an alternative to running multiple independent chains, is it worth trying an MC3 with the heated/cold chains instead?
>
>Cheers,
>Kat
