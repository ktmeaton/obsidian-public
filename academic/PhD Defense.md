---
title: PhD Defense
project: "[[PhD]]"
aliases:
  - PhD Defense
tags: ✨
status: done
type: task
due: 2022-01-21
time: 08:00
---

# PhD Defense

![[PhD Defense Information.png|500]]

## Preparation

1. [x] Read the [[Chair Procedures Guide_Online Examination_May 2020.pdf|Chair Procedures Guide]].
2. [x] Read the [[Eaton_2022_PhD_Dissertation_External_Report.pdf|External Examiners Report]].

### Topics

- The future maintenance plans and actions for the computational package (especially for handling even larger data sets).
- The choice of the demographic models underlying the dating analyses presented in section 3.
- The possible impact of dates modeling as point estimates and not full distributions. 
- The comparison of those timing estimates obtained and some of those most recently published, especially for the second pandemics.
- The motivation for using some of the coverage thresholds, and Beast1 instead of Beast2. 
- The benefit for real-time PCR testing samples .
- Whether new wet-lab procedures could be developed to improve detection success.
- Whether radiocarbon dating data were obtained on the Danish samples.
- The main limitations in current approaches to studying plague evolutionary history. 
- Possible experimental design to study (epi)genetic changes in the host genome as a response to past pandemics and more.



### [[BEAST]] and MCMC (Markov Chain Monte Carlo)

#### Algorithms

---

```ad-note
![[Bayes Theorem.png|500]]
The denominator (p(D) is the marginal likelihood.
```

```ad-note
title: Markov Chain
icon: dog
A stochastic model describing a sequence of possible events in which the probability of each event depends only on the state attained in the previous event.
```

```ad-note
title: Monte Carlo
icon: dog
- Monte Carlo methods typically assume that we can efficiently draw samples from the target distribution. 
- From the samples that are drawn, we can then estimate the sum or integral quantity as the mean or variance of the drawn samples.
```

- Standard MCMC inference of posterior distributions avoids estimating the normalization constant or marginal likelihood p(D|H)

---

- Stepping Stone Sampling
- [[BEAST]] v1 vs v2
- Marginal Likelihood

#### Model Comparison

- Bayes Factors:
	![[Bayes Factor Equation.png]]
	Where p(D|M) is the marginal likelihood of model M. Calculation of the marginal likelihood of model M requires integration of its likelihood across model parameter values θ, weighted by the model's prior distribution
	![[Marginal Likelihood Formula.png]]


	For our model comparison in BETS, we estimated (log) marginal likelihoods using generalised stepping-stone sampling (Fan et al. 2011; Baele, Lemey, and Suchard 2016).

Path sampling (under the term ‘thermodynamic integration’; Lartillot and Philippe, 2006), stepping-stone sampling (Xie et al., 2011) and generalized stepping-stone sampling (Fan et al., 2011) with the latter approach currently only applicable on a fixed underlying topology. We aim to relax this latter assumption by providing two working distributions in a genealogical framework (Baele et al., 2016, Syst. Biol.)

##### Stepping Stone (SS)

![[Stepping Stone.png]]

This method generalizes the standard SS approach (Xie et al. 2011) by making use of a “working” distribution that is parameterized using samples from the posterior distribution. The authors show that if this working distribution exactly matches the posterior distribution, the marginal likelihood can be estimated exactly.

#### Tree Priors

---

> "In addition to general models of branching times such as the coalescent and Yule priors, the tree prior may also include specific distributions and/or constraints on certain node heights and topological features. These additional priors may represent other sources of knowledge such as expert interpretation of the fossil record."

##### Parametric

- Constant Size: Population size (_N_)
- Exponential: Initial population size (_N^0^_), growth rate (_r_)
![[Tree Priors.png|500]]

##### Non-Parametric
- Skyride
	1. Assuming population size changes smoothly over time
	1. Places a smooth Gaussian process prior on the population sizes.
- Skygrid
- Yule
- Birth Death

##### Hyperpriors:
- **Population size (_N_)**: lognormal with a mean of 10, standard deviation of 100. This leads to a prior 95% credibility interval (CI) of [0.015, 67.06]. This prior is reasonably uninformative, while remaining proper.
	\* I think the key here is that this is an uninformative prior. Because our posterior is very different from the prior.
	\* I don't know what the units are, but I think you need generation time to turn it into effective population size (_Ne_).
	![[Exponential Distribution Mean 10.png|500]]
	![[Population Size Output.png|500]]
- Exponential vs. No Hyperprior

#### Rate Priors

- Uncorrelated relaxed lognormal clock (UCLN)
- Hyperpriors
	- **Mean Rate**: a CTMC Conditional Reference Prior
	![[CTMC Conditional Reference Prior.png]]
	- **Standard Deviation of Rates**: an exponential prior with mean 1/3

#### Proper Priors

- Integrate to 1.0. The uniform distribution (x=1) is not proper.


## Oral Examination

https://us02web.zoom.us/j/83296048664?pwd=dU12NjRERzl2Qld4NlRFTkJkVDRqZz09

Meeting ID: 832 9604 8664
Passcode: 424831

### Setup

1. The Chair of the oral defence (or Supervisor) will host the web meeting and verify that all required participants have joined the meeting online.

	- Chair | [[David Earn]]

1. When the Chair confirms that all required participants are online, the Chair will introduce those committee members not known by the candidate, if any.

1. The Chair should explain to those present the composition of the examining committee There will be a **minimum of four members on the examining committee, but not exceeding 5 voting members**. All examining committee members are required to attend. In anticipation of the defence, the Chair for the defence and Supervisor will receive a set of scenarios to address possible participation or connectivity issues. If an examining member is not able to attend at the last minute and it is not addressed in the scenarios, approval from the Vice-Provost and Dean of Graduate Studies is required to proceed.

	- Committee Member | [[Hendrik Poinar]]
	- Committee Member | [[Tracy Prowse]]
	- Committee Member | [[Brian Golding]]
	- Committee Member | [[Nukhet Varlik]]
	- External Examiner | [[Ludovic Orlando]]

1. The Chair will select the candidate and use the option of moving them to the “Lobby” (WebEx) or “Waiting Room” (Zoom) while the order of questioning is established by the examining committee. Once the discussion is finished, the Chair will “Admit” them back into the room.

	- If the Chair and Supervisor have decided to invite audience members to the defence, audience members should not be “Admitted” to the defence until the student is ready to present their findings. To maintain the quality of the web meeting, the “Host” should ensure that all audience members lines are muted, and video turned off. The Chair should cue the examining committee member to unmute to ask questions. They should also ensure that all examining committee members are muted when it is not their turn to speak.

### [[PhD Defense Presentation|Presentation]]

1. The Chair will then have the student present an oral statement about his/her thesis of approximately 15 minutes duration (in no case more than 20 minutes). Controls in the web meeting can be shared to the student to allow them to navigate their presentation for the committee. **The student should stress the main points of the contribution to knowledge and the principal technical difficulties either of an experimental or theoretical nature which he/she has overcome. A simple summary of the thesis is neither necessary nor desirable**.

### Examination

1. Individual examiners will question the candidate according to the order established by the Chair. **All members of the examining committee are expected to put questions to the candidate**. Issues that have been raised by members of the supervisory committee in the course of composition of the thesis may nevertheless be profitably brought up now, when the candidate will have to respond in the presence of others.

1. If present, the external examiner should be given full opportunity to question the candidate. If the external examiner is not present, **it is the Chair’s responsibility to see that questions raised in the external examiner’s report are put to the candidate by some member of the examining committee, preferably the supervisor**.

1. Candidates who are unwilling or unable to respond to questions should be cautioned that such an action may cause the examination to be adjourned, or in extreme cases, could lead to failure on one of both questions put to the committee about the thesis and its defence. 

1. If audience members have been permitted, the Chair can ask for questions once the Committee’s questions have been satisfied. To maintain the quality of the web meeting, audience members should either: 

	- “Raise their hand” and be prompted to unmute their line to ask the question. 
	- Type their question into the “Chat” feature to be read by the Chair.

1. When there are no further questions, the Chair should move the candidate and any attendees (if applicable) to the “lobby” or “waiting room” using the corresponding feature to prevent access to the conversation and any recording functionality.

### Vote

1. After a discussion of the examination, the Chair will ask for a vote on the success or failure of the **oral defence**. If there are two or more negative or abstaining votes, with at least one of these votes being from a member of the supervisory committee, adjournment is mandatory and a decision must be reached at this time as to whether a reconvened oral defence may be held at a later date. If, in the judgment of the examiners, the defence is to be reconvened, the candidate should be told as clearly as possible what he /she must do to improve his/her defence of the thesis. In the event the written thesis is approved conditionally, the Chair is responsible for ensuring that (1) the candidate is advised of the conditions in writing, (2) the conditions are met before the thesis is submitted to the School of Graduate Studies, and (3) the SGS Thesis Coordinator is informed of the conditions. 

1. Following the committee’s decision, the Chair will email `gthesis@mcmaster.ca` with a CC to the examining committee members, including the External, to request the written vote of each examiner for the completion of the report form. 

1. The Chair will then “admit” the candidate back into the web meeting to inform him/her of the committee’s decision(s), and for any congratulations or discussion appropriate to the circumstances. 

### Adjourn

1. The examination will be formally adjourned and the web meeting ended. Normally, 
examination of the candidate will not take more than two hours. In no case should it take 
more than three. 

1. If the student has failed or if the oral defence is to be reconvened, the Chair of the 
examining committee should discuss the situation as soon as possible with the SGS 
Thesis Coordinator. 

1. If the oral defence is reconvened, no new examining committee members will be added, 
except for necessary replacements. It is the duty of the examiners to attend the 
reconvened examination, and no subsequent defences may be held.
