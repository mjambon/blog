Author’s artificial intelligence glossary
==

**abstract**: Given two known concepts $A$ and $B$, $A$ is said more abstract
              than $B$ if the activation of $B$ triggers the activation of $A$,
              but the activation of $A$ can take place without $B$.

**action**: (1) The activation of an output port, which may modify
            the environment. An action is said internal if other systems
            cannot sense these changes in the environment. (2) An output port.

**activation**: Setting a single node to its active state. A node
                remains active only for one cycle, after which it is
                systematically deactivated i.e. switched to its
                default state. In order to be considered continuously
                active, a node needs to be activated at each
                cycle. An active node transmits a unary
                signal to other nodes or components, while an inactive
                node doesn’t.

**anticipation**: A mechanism by which the system rewards itself based
                  on the expected reward for actions that it just
                  decided to take. A reward refers to the value of the
                  fitness considered to be resulting from a set of actions.

**cloning**: Copying a full system. Unlike biological cloning, this
             includes copying all the acquired cognitive skills and
             therefore the identity of the system.

**concept**: (1) A node that represents a set of states of the
             world. (2) An active instance of such node.

**concrete**: The opposite of abstract.

**context**: (1) A concept. (2) The set of all the states of the world
             which are sufficient to activate a node.

**emotion**: (1) A built-in parameter of the system which can take a
             range of values and affects the behavior of the whole
             system in a predetermined manner. Its value changes over
             time and can be sensed by the system itself. (2) A
             specific value of such parameter.

**environment**: The rest of the world, with which the system
                 exchanges information via input and output ports.
                 Parts of the environment that are inaccessible to
                 other systems constitute the system’s private
                 environment.

**fitness**: The single numeric variable that changes over time and
             that the system tries to maximize.
             At least some of the rules that the system uses
             to compute the fitness are built in. For example, an
             external operator would press a green button to add 1 to
             the fitness at the current cycle or a red button to
             add -1. The intended effect is to reward or punish the
             system and encourage certain behaviors.

**imagination**: The ability to activate a concept in either of two contexts,
                 one being more abstract than the other.

**input**: Shorthand term for _sensing input_, which designates the
           fixed-length bit vector refreshed at regular intervals
           that’s available to the system for sensing the environment.
           This excludes the external reward passed to the
           system via a special-purpose port and used in the
           computation of the fitness.

**intelligence**: The ability for a system to adapt increasingly
                  faster to new environments.

**intuition**: The ability for a system to make decisions without
               resorting to an emulation of Boolean
               logic. For design and implementation purposes, imagination,
               intuition, and perception are considered equivalent.

**mind**: A system that works as expected.

**model**: A representation of the world.

**node**: (1) A persistent element in the system, that can be either
          active or inactive, and implements a concept. This is
          somewhat analog to the notion of _neuron_ in artificial
          neuron networks. (2) More generally, it has the
          usual meaning of _vertex_ in graph theory.

**optimization**: Numeric optimization, usually referring to the
                  maximization of the fitness variable by the system.

**output**: Fixed-length bit vector updated by the system
            periodically. A cell in the output vector is called an
            action. The activation of an output cell is
            called an action as well. Such activation typically
            results in a modification of the environment.

**pattern**: A set of input values identifiable by the system.

**perception**: The activation of a concept that’s considered similar
                to a concept of reference in another system or more
                generally in an external model of the world.
                For design and implementation purposes, perception is
                considered equivalent to imagination and intuition.

**sensing**: The activation of input ports.

**system**: An instance of the machine we’re building and studying.

**world**: The union of a system and its environment.

Avoided terms
==

We don’t have a good use for these common terms, so we’ll avoid them
until we do:

* **consciousness**
* **explaining**
* **knowledge**
* **learning**
* **understanding**
