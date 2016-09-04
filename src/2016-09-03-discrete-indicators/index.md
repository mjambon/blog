Discrete concepts and discrete time
===================================

_A proposed basis for the design of engineerable intelligent systems_

Discrete representation of concepts
-----------------------------------

The system is made up of indicators. They are nodes in a directed
acyclic graph (DAG) and each node holds a binary state. At a given
time, an indicator is either active or inactive.

There are two kinds of activators which differ in how they are activated:

* An input node is an indicator that is activated by some
  special-purpose module.
* A regular node is an indicator that is activated by two other
  indicators that are active simultaneously.

Input modules can be varied in nature. They are the software interface
between physical sensors and the system. For example, a video camera
that delivers black and white images would send data to a video module
consisting of one input node per pixel. Each white pixel would
activate the corresponding input node, while the same pixel being
black would leave the node inactive.

<img src="img/camera.svg"
     alt="Camera module"/>

Regular nodes are built from exactly two other nodes, which
can be regular nodes or input nodes. For example, if a
node $A$ indicates "the system is moving" and a node $B$ indicates "the
presence of a forest trail", then a node $C = (A, B)$ would
represent the concept that "the system is hiking".

<img src="img/abc.svg"
     alt="ABC"/>

Discrete time
-------------

The whole system has its own internal clock that defines discrete
cycles. Each cycle or "tick" is a computational step during which
information propagates within the system.

At each cycle, information propagates from one node to the next:

1. Each input-output (IO) module sets the binary state of the input nodes
   that it controls.
2. Each regular node is activated if its two children nodes were
   active at the end of the previous cycle, otherwise it is
   deactivated.

Given a node $C = (A, B)$, the activation of $C$ comes always one tick
behind the activation of $A$ and $B$. A node $D = (A, C)$ can also be
denoted $(A, (A, B))$ which means that $A$ and $B$ must be active
simultaneously, then $A$ must be active again at the next tick, and
$D$ will be active the tick after that.

<img src="img/abcd.svg"
     alt="ABCD"/>

Actions
-------

Some active nodes can trigger actions of their choosing. An action
consists in activating one of the action nodes provided by the IO
modules. This is analogous to pressing and releasing a button.

The following processes are left unspecified in this document:

- Selecting which nodes can perform an action
- Selecting a good action for the selected node
- Collecting feedback on how well the system is doing and improving
  the choice of actions accordingly

Growth
------

Initially, the system is created with at least some input
nodes. Regular nodes, as well as new input nodes, are created as time
passes and as the system interacts with its environment.

The following processes are left unspecified in this document:

- Deciding which indicators are useful
- Deciding which new indicators to create from pairs of existing indicators

Conjunction
-----------

The conjunction of two concepts is defined as two indicators active at
the same time. It is detected one tick later.

Abstraction
-----------

In our context, abstraction is defined as activating one
indicator when at least one of several indicators is active.

The system does not provide such an "OR" construct directly like it
provides an "AND" construct in the form of nodes activated by the
conjunction of two active nodes.

Solutions for abstraction must involve actions, possibly via modules
that connect actions directly to input nodes without interacting with
the outside world.
