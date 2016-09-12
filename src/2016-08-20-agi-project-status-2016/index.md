% 2016 notes on AGI project
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

# Our definition of general intelligence

From the beginning my goal has been to come up with
software running on commodity computers that demonstrates _some
intelligent behavior_. It's not about rivaling humans at typical human
activities such as playing games or classifying images. It's about
demonstrating modest but real bits of general intelligence.

We'll define general intelligence, or intelligence for short, within
the following informal framework:

1. Some definition of time.
2. A world, that no information can penetrate.
3. At a given date, the current state of the world can be computed
   from a previous state of the world.
4. Events, which are modifications of the state of the world occurring
   at a given time.
5. Some topology for the world, which allows us to associate
   information and events with
   locations. It defines some metric used to determine the proximity
   of two locations.
6. A system which is part of the world. The rest of the
   world is called the environment.
7. The system can acquire some information from the world via inputs.
8. The system can modify the state of the world via outputs also known
   as actions.
9. An objective function that we want the system to minimize.
10. The objective function is determined from the state of the
   world.
11. Values of the objective function may be fed as input to the system
   but it is not a requirement.
12. At any given date, some input events, some output events, and some
    inputs of the objective function exist in proximity of each other.
13. An observer can inspect the world and the system without
    affecting them.

Within this framework, we define general intelligence as:

> A system's intelligence is measured by its ability to optimize new
  objective functions, i.e. cope with new environments,
  better than it used to at a younger age.

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
