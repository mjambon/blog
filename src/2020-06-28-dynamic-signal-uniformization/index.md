% Dynamic Signal Uniformization
% Martin Jambon, June 2020

<!-- toc -->

This article presents a heuristic for mapping a real-valued random signal
that follows an arbitrary distribution to a uniform distribution over
[0,1]. It's based on maintaining $n$ bins, each representing an equal
slice of the distribution. The average values of the bins are used to
define a piecewise linear mapping from the original distribution to
the uniform distribution. The result is a function that normalizes any
input signal onto [0, 1]. It also has the ability to adjust to changes
in the distribution over time. A usage scenario is the normalization
of ratings given by a particular judge into scores that can be
compared from one judge to another, regardless of how harsh or generous
the judges are.

Problem
==

We are concerned with the practical problem of normalizing ratings
from an external source into consistent scores with a universal
meaning. An external source
might be a human assigning some sort of ratings or feedback, using a
subjective scale. We would like to normalize those ratings such that
their value has the same meaning,

1. regardless of the distribution of the original ratings from
   a particular source, and
2. regardless of changes in the distribution over time.

The meaning of a score shall be its normalized rank or percentile,
expressed as a value in the range [0, 1]. For example, if 23% of the
input ratings are below 8.5 and the remaining 77% of ratings are above
8.5, then the normalized score for 8.5 is 0.23. Our goal is to build a
function that takes input ratings and maps them to such normalized
score. Input ratings are used in two ways:

* to build a model of the distribution of the input signal;
* to be mapped into a normalized score using the modeled distribution.

This article focuses on the main idea behind the solution. The more
tedious work such as the initialization phase or handling
interpolation at the extremities of the distribution is published as
part of the source code for our implementation.

Outline of the solution
==

Given a stream of input numbers, we have to build and maintain some
data structure that models the input distribution. We shall
call it the distribution tracker. We add new samples to the tracker in
order to improve or update the model. We also want to obtain a
normalized score by passing in a sample input without necessarily
updating the tracker.

Tracker
--

The algorithm uses two main parameters:

* $\alpha$, the number within (0, 1) used in the computation of
  a exponential moving average (EMA) for each bin;
* a number of bins $n$, each representing an equal slice of the
  distribution.



Results
==

EMA $\alpha$ = 0.2,
number of bins = 20

Input:

<a href="img/input.png"
   title="Click to enlarge"><img
     src="img/input.png"
     alt="Distribution of the sample input data"/></a>

Output:

<a href="img/output.png"
   title="Click to enlarge"><img
     src="img/output.png"
     alt="Distribution of the sample output data"/></a>

Sample implementation
==

[https://github.com/mjambon/uniformize](https://github.com/mjambon/uniformize)
