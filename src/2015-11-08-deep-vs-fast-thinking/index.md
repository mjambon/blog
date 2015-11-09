Deep vs. fast thinking: a synchronization problem
=================================================

I've been thinking on and off, in my spare time, over the past 15
years about artificial general intelligence (AGI) and practical
designs and implementations.

I tested a handful of these ideas but haven't obtained
amazing results. Almost from the beginning I have been unsatisfied with
any approach that assumes a fixed set of neuron analogs. The family of
systems I have focused on is based on a notion of nodes
that are:

* activated from a small number of other nodes, typically just two
* created dynamically if they're predicted as useful based on previous
  activation patterns

In these models, a node represent what I call a _concept_, which
represents the conjunction of other concepts. The design principle is
that nodes are the core units of the system. They correspond to
intuitive ideas on how an intelligent system would function.

Our model contrasts with neural networks where each node is connected
to many inputs with mutable connection weights, which don't have an
obvious and fixed meaning to the designer of such a system.

Additionally, our models are based on discrete activation from one
node to another. What this means is the system uses a discrete
clock. The activation from one node to another takes one indivisible
unit of time, also referred to as step, tick, or clock cycle.
Each active node remains active only for one step, unless it is
activated again.

We define the _depth_ of a concept as the minimum number of steps it takes
to go from a blank state where not a single node in the system is
active to the activation of this concept by activating a number of
input nodes. Input nodes are nodes that can be activated from the
outside.

Claims
------

A. Reasoning involves deep concepts.

B. The deeper the concept, the longer it needs to be kept active for more
than one step. This allows for detecting the conjunction of concepts
of different depths.

C. Detecting the conjunction of concepts of different depths is
essential to keep the size of the system practical, to allow growth,
and to allow concepts of arbitrary depth.

D. Reasoning involves the sequential activation and deactivation of
concepts without overlap.

E. The deeper the concepts involved in reasoning, the slower reasoning
takes place.

F. Reasoning can be made faster by improving hardware and software and
reduce the real time required for a discrete step of the system. The
number of steps itself cannot be reduced.

G. Similar limitations are observed in the human brain, making humans
slow thinkers.

Conclusions
-----------

These are fun predictions for the future.
If you don't understand any of what's written on this page, it's
okay.
