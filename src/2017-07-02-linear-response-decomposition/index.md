% Real-time decomposition of a signal into a sum of responses to labeled events
% Martin Jambon
% July 2017

<!-- toc -->

<!-- abstract -->

Motivation in the context of artificial general intelligence
=====

The problem we are trying to solve arises while developing a cognitive
system driven that operates in real-time and is driven by a single
goal function.
In this context, a goal function $\phi$ is a real-valued signal over
discrete time, whose value becomes available at each time step. It
represents how well the system is doing, i.e. it would combine rewards and
penalties. Some of these
rewards and penalties may correspond to direct interactions of the
system with its environment, such as acquiring food or losing energy.
Other rewards and penalties may be generated internally by the system
itself, as a way to encourage itself to pursue certain paths.

In such a cognitive system, there is a finite (but possibly growing)
collection of possible actions. Each action can be viewed as a
button. We call an act an instance of an action, i.e. the press of a
button. An act is a pair (action, instant).
An action, naturally can correspond to a modification
of the system in its environment, such as an attempt to move
forward. It can also directly feed back into the system's input ports
without directly affecting the environment. No matter what kind of
action is triggered, it takes some amount of time to have an
effect on the goal function. Here and throughout this paper, we assume
that most meaningful effects of an action occur within a given time window,
which can be a short as 10 steps. We choose this window roughly to
capture reactions of the system to its own decisions, so it has enough
time to "realize" what it just did and produce a self-reward or a
self-penalty. Longer-term effects of course exist and will have to be
dealt with differently.

Given such a goal function $\phi$ and the knowledge of which actions were
triggered within a time window of length $w$, we wish to determine the
impact of each action on $\phi$.

General design contraints
=====

## Independence from context

The response to an action is considered the same independently from
the context. In the case of artificial general intelligence (AGI),
this is generally not the case. However, it is possible to create as
many controls ("buttons") as there are contexts. Instead of studying
the response to an action regardless of the context, we can study the
response to the pair (context, action).

## Effects can be delayed

We wish to capture the "immediate" effects of an action. However, our
system is such that during a time step it can only propagate
information from one node to another. It is not organized into layers,
typically several steps are required for some input information to
reach the nodes in charge of triggering actions.

So, while we are only interested in the immediate effects of
actions, we need to leave sufficient time for the system to react to
such effects.

## Overlapping effects

Multiple actions can take place simultaneously, or close
enough that their effects on the goal function overlap.
Our main challenge is to decompose the signal into a combination of
responses from multiple recent actions.

The simplest approach is to model $\phi$ as a sum of
responses to actions, and this is the one we'll follow.

## Incremental learning

It should be possible to start inferring the effects of new actions
when they start appearing. If only one action is new and the effects
of all the other actions are already well known, no relearning should
be necessary, and learning the effects of the new action should be as
fast as if it were the only action.

## Adaptation

If the effects of actions change progressively over time, the system
should be able to adapt. The adaptation rate should not slow down
as the system ages.

Notations
=====

Our approach doesn't require the notion of goal function or actions.
We'll simply refer to the goal function $\phi$ as the **signal**. Each
act is an action occurring at a given time and will be called an
**event**. The action is the **kind** of the event.

The variable $k$ will be used typically to identify each event uniquely among
the set of events $K$.

Each event is a pair $(E_k, t_k)$ of the kind $E_k$ and
of the instant $t_k$ at which it occurred.

An event kind is associated with a function that represents its linear
contribution to $\phi$. We'll denote $E_k(\tau)$ the value of this
function at $\tau$, where $\tau$ is the time elapsed since the
occurrence of an event of this kind. Naturally, the event has no
contribution to $\phi$ before it occurs, so we have:

$$
\forall k \in K: \forall \tau < 0: E_k(\tau) = 0
$$

Additionally, our model assumes that the effect of any event doesn't
last longer than $w$, called **window** length or just window:

$$
\forall k \in K: \forall \tau \ge w: E_k(\tau) = 0
$$

The only interesting values of $E_k$ are the $w$ values $E_k(0),
E_k(1), \dots, E_k(w-1)$. These are the values that our algorithm will
try to determine, for each event kind $k \in K$.

The signal $\phi$ is modeled as the sum of the effects of all events,
i.e.

$$
\phi: t \rightarrow \sum_{k \in K} E_k(t-t_k)
$$

Given the properties of $E_k$ mentioned above, all events occurring
outside the window ($t_k \notin [t - w + 1, t]$) can be ignored in the
computation of $\phi(t)$.

Estimated or predicted equivalents of a variable are denoted with a
hat. For example, $\hat{\phi}(t)$ is the predicted value of
$\phi(t)$.

Since estimators have a state that changes over time, we use
a parenthesized superscript to specify which state we're referring
to. In the following example, we use the variable $\hat{\mu}$ to
represent the exponential moving average of the sequence
$x$. $\hat{\mu}$ is updated as follows:

$$
\hat{\mu}^{(t+1)} = r x_t + (1-r) \hat{\mu}^{(t)}
$$

which could be implemented as the in-place assignment

$$
\hat{\mu} \leftarrow r x_t + (1-r) \hat{\mu}
$$

Solution
=====

## Outline

Informally, the solution consists in maintaining for each action a
number that represents the expected effect of this action after some
delay. Multiple actions take place, each with an expected effect
which is a contribution to the signal at some future instant $t$.
The expected value of the signal is the sum of the contributions at
$t$ of the previous actions.
The observed value of the signal is used to correct the expected
contributions into what each contribution should have been. The
contributions are not corrected evenly, but according to a weight
proportional to the standard deviation of the contribution. In other
words, the more a contribution fluctuates, the more it is prone to being
corrected. Conversely, a contribution that fluctuates less will
receive a smaller correction relative to the other co-occurring
contributions.

## Description

At each step $t$ of the computation, the value of the signal is
observed and denoted $\phi(t)$.

All the events that occurred within the last $w$ steps are assumed to
contribute to the signal. The predicted signal at instant $t$ is
denoted as $\hat{\phi}(t)$ and is computed as follows:

$$
\hat{\phi}(t) = \sum_{\{ k \in K | t_k \in [t-w+1, t] \}}
                   \hat{E}_k^{(t)}(t-t_k)
$$

The difference between the prediction and the actual signal is denoted
$\delta$:

$$
\delta_t = \hat{\phi}(t) - \phi(t)
$$

Each predicted term $\hat{E}_k^{(t)}(t-t_k)$ is an average of
the previous values of $\tilde{E}_k$, which are the corrected
terms. These corrected terms are defined such that at a given time
$t$, they add up to the observed signal $\phi(t)$:

$$
\phi(t) = \sum_{\{ k \in K | t_k \in [t-w+1, t] \}} \tilde{E}^{(t)}(t-t_k)
$$

Splitting $\phi(t)$ into corrected terms is done
by splitting and distributing the difference $\delta_t$ over the
predicted terms:

$$
\tilde{E}^{(t)}(t-t_k) = \hat{E}^{(t)}(t-t_k) - v_k^{(t)}(t-t_k) \delta_k
$$

where each weight $v_k^{(t)}(t-t_k)$ is nonnegative. All weights at instant
$t$ add up to 1. They are determined so as to reflect the uncertainty on each
contributing term, so that the terms predicted consistently with high
certainty will be corrected by a small amount while the more uncertain
terms will be corrected by a greater amount. An estimation of the
standard deviation of each term is used for this purpose:

$$
v_k^{(t)}(t-t_k) = \frac{ \hat{\sigma}_k^{(t)}(t-t_k) }
                        { \sum_{\{ k \in K | t_k \in [t-w+1, t] \}}
                            \hat{\sigma}_k^{(t)}(t-t_k) }
$$

where $\hat{\sigma}_k^{(t)}(t-t_k)$ is an estimate of the standard
deviation of $\tilde{E}_k$ based on the earlier known values of
$\tilde{E}_k$.

Note that our averages and standard deviations are estimated using
exponential smoothing because of their simplicity (see appendix),
but other methods should work well too. Until a certain number of
samples is reached, they behave like the classic sample mean and
sample standard deviation estimators. Beyond that, they give more
weight to recent values.

There are two classes of special cases where the standard deviation
cannot be used to determine the weight:

* Special case 1: In the presence of fewer than 2 samples, the sample
  standard deviation is undefined.
* Special case 2: If the initial samples are all equal, the estimated standard
  deviation is 0, which results in $\tilde{E}_k$ being not updated ever
  again.

For special case 1, a possible trick is to pretend the standard
deviation is so large that all the other weights are negligible,
except those in the similar situation with an undefined standard
deviation. Given $n$ such problematic terms, we can assign them each a
weight of $1/n$, and assign a weight of $0$ to the terms whose
standard deviation is defined.

For special case 2, we can impose a minimum value to the estimate
of the standard deviation. Let's call $S$ the sum of the
standard deviations at instant $t$:

$$
S_t = \sum_{\{ k \in K | t_k \in [t-w+1, t] \}}
      \hat{\sigma}_k^{(t)}(t-t_k)
$$

If $S_t = 0$, we give an equal weight to all the terms as for special
case&nbsp;1. Otherwise, let $n$ be the number of terms in the sum, i.e. the
number of events within the window. We define a minimum weight $m_t$
as a small fraction of $S_t$:

$$
m_t = \frac{\epsilon}{n} S_t
$$

where $\epsilon$ is a small positive constant such as 0.001.

Each weight is then defined as:

$$
v_k^{(t)}(t-t_k) = \frac{ \max(m, \hat{\sigma}_k^{(t)}(t-t_k)) }
                        { \sum_{\{ k \in K | t_k \in [t-w+1, t] \}}
                            \max(m, \hat{\sigma}_k^{(t)}(t-t_k)) }
$$


## Selected scenarios

A series of tests was conducted to evaluate the behavior of the system
with different parameters and under different conditions.

The source code is currently available at
[https://github.com/mjambon/unitron](https://github.com/mjambon/unitron)

### Shared protocol

A single run starts from time $t=0$ and runs as many steps as
necessary to reach specified conditions. This number of steps $T$ will
be our main criterion for determining how well the system performs.

These runs being non-deterministic, we repeat them 100 times, and
report simple statistics on the value of $N$ in each case.

The default setup consists in the following:

* Two actions $A$ and $B$ may be fired at each time step, each with a
  certain probability ($P(A) = 0.5$, $P(B) = 0.5$).
* Each action has an additive effect on the goal function. By default,
  A and B have effects on the value of the goal function for the
  current step and the next two steps. The contributions of $A$
  are $E_A = [1, -0.5, 0.25, 0, \dots]$ and the contributions of $B$
  are $E_B = [0.1, 0.2, 0.05, 0, \dots]$.
* The window length $w$ is 5.

For example, if action $A$ is triggered at some step $t$ and action
$B$ is triggered at $t+1$,
and no action took place earlier and no action takes place after that,
the values of the goal function $\phi$ are:
$$
\begin{eqnarray}
\dots && \\
\phi(t-1) &=& 0\\
\phi(t)   &=& 1 \\
\phi(t+1) &=& -0.5 + 0.1 \\
\phi(t+2) &=& 0.25 + 0.2 \\
\phi(t+3) &=& 0.05\\
\phi(t+4) &=& 0\\
\dots &&
\end{eqnarray}
$$

We'll predict the values of $E_A$ and $E_B$ and look at how many steps
it takes converge to the expected values $E_A(0)$ and
$E_B(0)$. The convergence criteria are the following:

$$
\mathrm{Condition}_A:
\left| \hat{E}_A^{(T)}(0) - E_A(0) \right| \le \epsilon_A
$$

$$
\mathrm{Condition}_B:
\left| \hat{E}_B^{(T)}(0) - E_B(0) \right| \le \epsilon_B
$$

with the following default error thresholds:

$$
\begin{eqnarray}
\epsilon_A &=& 0.05 \\
\epsilon_B &=& 0.005
\end{eqnarray}
$$

We assume convergence if a given condition remains valid for a large
number (1000) of consecutive steps.

### Default setup

This setup uses only the default parameters described in the previous
section.
Number of steps to converge to Condition$_{A}$:

$$
\begin{eqnarray}
\mathrm{10^{th} \dots 90^{th}\ percentile} &=& 19.1 \dots 147.2\\
\mathrm{median} &=& 70.0\\
\hat{\mu} &=& 73.7\\
\hat{\sigma} &=& 48.9\\
\end{eqnarray}
$$

Number of steps to converge to Condition$_{B}$:

$$
\begin{eqnarray}
\mathrm{10^{th} \dots 90^{th}\ percentile} &=& 95.8 \dots 231.3\\
\mathrm{median} &=& 149.0\\
\hat{\mu} &=& 156.1\\
\hat{\sigma} &=& 53.7\\
\end{eqnarray}
$$

### Window of 1

In this setup, each action only has an immediate effect $E_A(0)$ or
$E_B(0)$ and no delayed effect ($E_A(1)$, $E_B(1)$, etc.).

Additionally, the window length $w$ is 1, which is the smallest useful
window possible. This results in very fast convergence as shown below.

Number of steps to converge to Condition$_{A}$:

$$
\begin{eqnarray}
\mathrm{10^{th} \dots 90^{th}\ percentile} &=& 1.0 \dots 9.0\\
\mathrm{median} &=& 3.0\\
\hat{\mu} &=& 4.6\\
\hat{\sigma} &=& 4.1\\
\end{eqnarray}
$$

Number of steps to converge to Condition$_{B}$:

$$
\begin{eqnarray}
\mathrm{10^{th} \dots 90^{th}\ percentile} &=& 1.0 \dots 12.0\\
\mathrm{median} &=& 4.0\\
\hat{\mu} &=& 5.5\\
\hat{\sigma} &=& 5.5\\
\end{eqnarray}
$$


### Large difference between contributions

In this setup, $E_A(0)$ is 100 instead of 1, while $E_B(0)$ remains
0.1.

Number of steps to converge to Condition$_{A}$:

$$
\begin{eqnarray}
\mathrm{10^{th} \dots 90^{th}\ percentile} &=& 49.6 \dots 353.0\\
\mathrm{median} &=& 235.0\\
\hat{\mu} &=& 215.3\\
\hat{\sigma} &=& 118.3\\
\end{eqnarray}
$$

Number of steps to converge to Condition$_{B}$:

$$
\begin{eqnarray}
\mathrm{10^{th} \dots 90^{th}\ percentile} &=& 141.4 \dots 455.5\\
\mathrm{median} &=& 303.0\\
\hat{\mu} &=& 300.2\\
\hat{\sigma} &=& 120.1\\
\end{eqnarray}
$$

It takes 2-4 times longer to converge in this setup than in
the default setup. A crude explanation is that the relative error
tolerance is now smaller, since $\epsilon_A$ and $\epsilon_B$ are
unchanged but the gap between extreme values has increased.


### Background noise

In this setup, we study the effects of permanent background noise
on the determination of constant contribution $E_A(0)$.

In order to produce noise, each event $B$ is set to occur at each time
step ($P(B)=1$)
and its effects are shifted by the same random number following a
centered normal distribution of parameter $\sigma=0.5$. The control
uses no noise, i.e. $\sigma=0$.

Number of steps to reach Condition$_A$ (control):

$$
\begin{eqnarray}
\mathrm{10^{th} \dots 90^{th}\ percentile} &=& 26.7 \dots 179.2\\
\mathrm{median} &=& 92.0\\
\hat{\mu} &=& 97.3\\
\hat{\sigma} &=& 66.6\\
\end{eqnarray}
$$

Number of steps to reach Condition$_A$ (background noise):

$$
\begin{eqnarray}
\mathrm{10^{th} \dots 90^{th}\ percentile} &=& 484.8 \dots 4706.0\\
\mathrm{median} &=& 1108.0\\
\hat{\mu} &=& 2113.4\\
\hat{\sigma} &=& 1940.1\\
\end{eqnarray}
$$

This shows that convergence toward $E_A(0)$ is slower in the presence
of background noise but nonetheless happens reliably.

### Interdependent events

In this setup, event $A$ occurs with a probability of 0.5 only if $B$
occurs too. $A$ never occurs alone:

\begin{eqnarray}
P(B) &=& 0.5 \\
P(A|B) &=& 0.5 \\
P(A|\neg B) &=& 0
\end{eqnarray}

The results are similar to the default setup in which $A$ and $B$ are
independent.

Number of steps to converge to Condition$_{A}$:

$$
\begin{eqnarray}
\mathrm{10^{th} \dots 90^{th}\ percentile} &=& 4.8 \dots 168.3\\
\mathrm{median} &=& 73.5\\
\hat{\mu} &=& 82.4\\
\hat{\sigma} &=& 64.7\\
\end{eqnarray}
$$

Number of steps to converge to Condition$_{B}$:

$$
\begin{eqnarray}
\mathrm{10^{th} \dots 90^{th}\ percentile} &=& 90.3 \dots 297.9\\
\mathrm{median} &=& 178.5\\
\hat{\mu} &=& 187.5\\
\hat{\sigma} &=& 87.8\\
\end{eqnarray}
$$

Conclusion
=====

- suitable for large number of actions: reinforcement only affects
  recent actions; small computational requirements.
- no need to select a learning rate parameter; if the conditions are
  right, learning is very quick. The effects of each action can be
  learned at their own rate.
- overfitting is not seen as a problem that should be solved here;
  (context, action) pairs with poor success or poor predictability
  should be avoided by the cognitive system.
- non-linear effects cannot be handled here directly. Instead, a
  pattern should be identified first and act as the source for a
  specific action. If effect(A and B) = effect(A) + effect(B) + x,
  we will form a control named AB, active one step after both A and
  B. This now allows a linear decomposition as
  effect(A and B)_t = effect(A)_t + effect(B)_t + effect(AB)_(t-1)
  which works except for t=0.
