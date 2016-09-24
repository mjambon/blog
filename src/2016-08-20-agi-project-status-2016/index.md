% AGI research snapshot, 2016
% Martin Jambon
% August 2016

<!-- toc -->

# Motivations

I have been working on and off since 1999 on ideas and programs with
the aim of eventually achieving artificial general intelligence
(AGI).

This is a write-up of my current thoughts, approaches, and
designs. While we don't have a working AGI system yet, it seems like a
good idea to share the state of my research with others.

# A practical definition of general intelligence

From the beginning my goal has been to come up with
software running on commodity computers that demonstrates _some
intelligent behavior_. It's not about rivaling humans at typical human
activities such as playing games or classifying images. It's about
demonstrating modest but real bits of general intelligence.

## Framework for defining and evaluating intelligence

We'll define general intelligence, or intelligence for short, within
the following informal framework:

1. Some definition of time.
2. A world, that no information can penetrate.
3. At a given date, the current state of the world can be computed
   from a previous state of the world.
4. Events, which are modifications of the state of the world occurring
   at a given time.
5. A system which is part of the world. The rest of the
   world is called the environment.
6. The system can acquire some information from the world via inputs.
7. The system can modify the state of the world via outputs also known
   as actions.
8. An objective function that we want the system to minimize, i.e.
   how well the system is doing, given as a real number ranging from 0 to 1.
9. The objective function is determined from the state of the
    world.
10. Values of the objective function may be fed as input to the system
    but it is not a requirement.
11. Some correlation between input events and inputs of the objective
    function. This can achieved by encoding values of the objective
    function into some suitable input for the system.
12. Some influence of the outputs on the inputs of the objective
    function.
13. An observer can inspect the world and the system without
    affecting them.

Within this framework, we define general intelligence as:

> A system's intelligence is measured by how fast it learns to
  optimize the objective function in an arbitrarily new environment,
  compared to a younger version of itself.

An example of an arbitrarily complex environment is a setup
where multiple systems compete for a resource, such as food.
Each system views the
other systems as part of the environment. When a system's objective
function, or health, becomes too low, it is removed from the
environment and the healthiest of the systems is cloned.

## Sample method for evaluating intelligence

In our framework, the world $W$ is partitioned into a system $S$
and an environment $E$:

$$
W = S \oplus E
$$

The state of both the system and the
environment changes over time, but their interface remains compatible.
This means that any state of the system can be combined with any state
of the environment, for evaluation purposes.

Let $\phi(t_0, E_0, S_0, t) \in [0,1]$ denote the application of the objective
function $\phi$ to the initial conditions $t_0$, $E_0$, and $S_0$, and
to the date $t$. $t_0$ is the origin of time, $E_0$ is the initial
state of the environment $E$, and $S_0$ is the initial state of the
system $S$.

Given $t_1$ and $t_2$ future dates such that $t_0 < t_1 < t_2$, the
performance $\lambda$ of the system from $t_1$ to $t_2$ is given by:

$$
\lambda(t_1, t_2, E_1, S_1) =
   \int_{t_1}^{t_2} \phi(t_1, E_1, S_1, t) dt
$$

where $E_1$ is the state of the environment at $t_1$ and likewise,
$S_1$ is the state of the system at $t_1$.

The intelligence $I$ of the system $S$
can be defined by comparing the performance
of the naive system $S_0$ with the more experienced system $S_1$
starting in the new environment $E_1$.

$$
I(t_0, t_1, t_2, E, S) =
   \lambda(t_1, t_2, E_1, S_1) - \lambda(t_1, t_2, E_1, S_0)
$$

This is straightforward to compute if we can save and restore
the state of the world, i.e. if such world is a simulation in our
control.

Note also that according to this definition, a system is intelligent
if from $t_0$ to $t_1$ it learns something useful for dealing with the
environment encountered from $t_1$ to $t_2$. A system that performs
already well at $t_0$ but can't learn anything new won't be considered
intelligent even if it outperforms most other systems for optimizing the
objective function. Humans might refer to such individual as wise, but
as far as we are concerned, it is no longer capable of general
intelligence.

## Criticism of the system/environment duality

Our framework is based on a separation between a system and its
environment. This matches the view that the human intelligence is
determined by the brain, located in the human body which has clear
physical boundaries.

An intelligent system is fundamentally open as it exchanges
information with its environment, by definition.
By modifying the environment to improve its success, the system
can become intimately dependent on it.
Tools and cooperation are prime examples of co-evolution
of an intelligent system and its environment.

### Tools

Tools are external resources that are not typically treated as part of
the intelligent system, but are key to a more efficient use of the
environment by a system who learned to use those tools.

### Cooperation

Cooperation can emerge when other intelligent systems exist in the
world and they benefit from working together.
Groups of humans are typically not considered as sharing a brain,
despite living in organized societies with individuals having widely
different roles. This is highly beneficial to the group.
Indeed, single humans having to sruvive without contacts with other humans,
even with some tools, tend to do much more poorly than as an organized
group.

### An acceptable compromise

The expectation of tools and cooperation are reasons why a good,
general definition of intelligence may
not define a system as a clear-cut piece of the world.
Instead, one might want to base a definition of intelligence
on notions such as the time it takes to
obtain information, regardless of whether this information is obtained
by sensing, by reasoning, or by querying resources using some language.

It seems that we could obtain a simpler definition of intelligence
by eliminating the complex framework required to by the
system/environment model, which we haven't even tried to define
formally.

Note that we may not need a formal definition of intelligence in order to
design and implement software that achieves our goal of AGI. We'll
stick with the system/environment model as it corresponds closely to
how machines are defined and constructed.

# Other useful definitions of intelligence

## Intuition

_General intelligence is the ability to become familiar with arbitrary
structures._

This view focuses on two main notions. The first one is that knowledge
about the world can be modeled as some sort of graph that relates
different concepts. The second notion is that not only any kind of
knowledge can be acquired, but also that with enough exposure to the
relevant information, an intelligent system can become capable of quickly
making predictions and turning them into assumptions. For example,
when seeing four fingers from a partially hidden human hand, one assumes
unconsciously that there is a fifth finger hidden.

In contrast, statistical learning or machine learning would lack the
mechanisms allowing it to make good predictions for arbitrary data,
hence the more restricted definition of learning:

_Learning is the ability to become familiar with some structures._

Cognitive activities such as imagination, intuition, and unconscious
bias are related and are characteristic of all systems capable of
learning.
Among them, systems capable of general intelligence distinguish
themselves by the ability, given enough time, to correct or
override unconscious bias.

## Self-control

_General intelligence is characterized by the ability to develop
new behaviors and to adopt or maintain a behavior independently from the
immediate environment._

This characterization of intelligence is not a full definition, but
more of a necessary condition of how a system should work internally
for the system's creators to maintain a hope of achieving general
intelligence.

A related definition mentions goals rather than behaviors but we treat
them as roughly equivalent. A behavior is a way of a
achieving a goal. It can be seen as the activation of a subsystem and
the maintenance of this state for as long as the system is pursuing
the goal. By preferring the term behavior over goal, we wish to leave
aside the questions of consciousness and free will.

A simple example is the decision for an animal to climb a mountain even
though it requires a lot of energy. A naive individual might simply
try to avoid going up whenever possible because it consumes energy,
which requires finding more food. A more experienced individual may
however push itself
to go against its original instinct to not go uphill, and this would
require a behavior or goal that could be called
"exploration". A long-term benefit would be to find a more prosperous
valley on the other side of the mountain. Achieving this result
necessitates adopting an originally unintuitive exploratory behavior.
Once the whole mountain range has been explored, though, the system
should switch to another behavior such as exploiting the newfound
resources, while not spending too much effort climbing mountains.

# Considerations about the methodology

## Modularity and testability

Successful software architectures are made up of components that can
be tested independently. The reason for that is not structural. The
human brain works extremely well despite a very intricate
structure. However the human brain is not a machine in the sense that
it wasn't designed, built, and modified by engineers. Instead it
evolved in the least efficient way, which happens to be how some
programming beginners modify existing programs: by single mutations
and repeated trial-and-error over the whole system. In the case of the
human brain, it's a process involving the life of one or multiple
human individuals who carry a new version of a gene or some other
genetic variant. Given favorable testing conditions in the
environment, the proportion of individuals with this version of the
gene will increase or decrease
within the population, generation after generation. So it is
possible to change a random line of code in a program and run the
whole program in many possible scenarios. However, it is not only very
slow to introduce new features or fix problems this way, it also
results in incomprehensible source code that forces future engineers
to adopt the same slow trial-and-error approach.

In short, good software engineering practices must be used. The system
is made up of components. Each component interacts with other
components via a clear interface and shall be tested independently from
the other components. A component itself is usually made up of
subcomponents, with the same property of testability.

## Simplicity

A simpler system is not just cheaper to develop because of its reduced
size. There are also fewer parameters to adjust manually, and such
parameters are not always numeric. It could be that instead of one
component, we have two components meant for different functions and
they might slightly differ in their structure. We will try to avoid
manually designing components of similar structure, whenever possible.

# Computational model

## Discrete time

## One node per abstraction

# Architecture

## Overview

<img src="img/overview.svg"
     alt="Overview"/>

## Perception

## Output and reinforcement

# Sample internal IO modules

## Automatic IO modules

### Automatic activity feedback and action feedback

<img src="img/activity-feedback.svg"
     alt="Automatic activity and action feedback"/>

### Reminiscence

<img src="img/reminiscence.svg"
     alt="Reminiscence"/>

For each once-dominant node, a reminiscence module is created as shown
above. Each time the node is active again (dominant or not), the input
node is activated. That same input node can be activated via a
dedicated output node chosen by any dominant node. As a result, the
input node is always active one tick after the original node and can
also be activated artificially, triggering the same effects as a
natural activation.

## Optional IO modules

### A simple feedback loop, the transmitter

<img src="img/transmitter.svg"
     alt="Transmitter module"/>

### Single-bit state

<img src="img/single-bit-state.svg"
     alt="Single-bit state module"/>

### Activator

<img src="img/activator.svg"
     alt="Activator module"/>

### Toggle or 2-state round robin

<img src="img/toggle.svg"
     alt="Toggle module"/>

# Test environments

## Testing pure pattern identification: small B&W images

## Testing reinforcement: reconstruct arbitrary topologies

## Full test: competition for resources on a 2D grid
