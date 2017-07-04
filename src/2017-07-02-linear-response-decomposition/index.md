Real-time decomposition of a signal into a sum of responses to labeled events
=============================================================================

<!-- abstract -->

Motivation in the context of artificial general intelligence
------------------------------------------------------------

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
button. An act is a pair (action, time).
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
-------------------------

### Independence from context

The response to an action is considered the same independently from
the context. In the case of artificial general intelligence (AGI),
this is generally not the case. However, it is possible to create as
many controls ("buttons") as there are contexts. Instead of studying
the response to an action regardless of the context, we can study the
response to the pair (context, action).

### Effects can be delayed

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
---------

Our approach doesn't require the notion of goal function or actions.
We'll simply refer to the goal function $\phi$ as the **signal**. Each
act is an action occurring at a given time and will be called an
**event**. The action is the **kind** of the event.

The variable $k$ will be used typically to identify each event uniquely among
the set of events $K$.

Each event is a pair $(E_k, t_k)$ of the kind $E_k$ and
of the time $t_k$ at which it occurred.

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
E_k(1), \dots, E_k(w-1)$. These are the ones that our algorithm will
determine, for each event kind $k \in K$.

The signal $\phi$ is modeled as the sum of the effects of all events,
i.e.

$$
\phi: t \rightarrow \sum_{k \in K} E_k(t-t_k)
$$

Given the properties of $E_k$ mentioned above, all events occurring
outside the window ($t_k \notin [t - w + 1, t]$) can be ignored in the
computation of $\phi(t)$.

Solution
--------

### Description

Define the following: labeled events, window, contributions, delta,
weights in delta correction

Link to implementation: https://github.com/mjambon/unitron

### Selected scenarios

- ideal scenario: constant contributions, linear, new events not
  overlapping with each other, window of 1
- window longer than 1?
- random noise on some contributions?
- random noise on all contributions?
- background noise on goal function?
- non-linear effects? (and how to deal with them in the context of AGI
  system where actions are fired by nodes representing concepts)
- systematically co-occurring events?

References
----------

(moving average)
