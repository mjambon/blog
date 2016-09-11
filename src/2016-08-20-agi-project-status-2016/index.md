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

From the beginning my goal has been to come up with
software running on commodity computers that demonstrates _some
intelligent behavior_. As far as my goals here are concerned,
I view intelligence as a binary property of systems that process
information. I use the following definition:

> A system that interacts with the world via inputs and outputs is
  intelligent if it is capable of setting and pursuing new
  goals in a changing environment. A goal is characterized by an
  internal state of some part of the system that remains constant
  while the goal is being pursued, even if the environmental
  conditions that triggered the goal no longer exist.

A shorter formulation of this definition of intelligence would be
"temporary stubbornness". It is the ability of a system to enter a
reversible state in which the output is determined
differently than if the system were in another state,
given the same input.

Note that a goal doesn't have to be communicated by the system to the
outside world. It is however necessary for an observer to access this
information in order to determine whether a system is
intelligent. This can be done by either directly inspecting
the inside of a system while it's running and without disturbing it, or
by only analyzing its regular output, possibly while controlling its
input. Turing tests fall in the second category, where the system to
evaluate is treated as a black box. While such tests are useful to
demonstrate that a system works, they are useless to explain why a
system doesn't work.

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
whole program in many possible scenarios. However, it is only very
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
