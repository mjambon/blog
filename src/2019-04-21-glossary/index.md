Glossary
==

**abstract**: Given two known concepts $A$ and $B$, $A$ is said more abstract
              than $B$ if the activation of $B$ triggers the activation of $A$,
              but the activation of $A$ can take place without $B$.

**action**: (1) The activation of an output port, which may modify
            the environment. An action is said internal if other systems
            cannot sense these changes in the environment. (2) An output port.

**activation**: Setting a single node to its active state, its other state
                being inactive. A node remains active only for one
                cycle, after which it is systematically deactivated. In
                order to be considered continuously active, a node needs
                to be activated at each successive cycle.

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
                 other systems constitute the system's private
                 environment.

**fitness**: The single numeric value that the system tries to
             maximize. At least some of the rules that the system uses
             to compute the fitness are built in.

**imagination**: The ability to activate a concept in either of two contexts,
                 one being more abstract than the other.

**input**: Shorthand term for _sensing input_, which designates the
           fixed-length bit vector refreshed at regular intervals
           that's available to the system for sensing the environment.
           This excludes the external reward passed to the
           system via a special-purpose port and used in the
           computation of the fitness.

**intelligence**: The ability for a system to adapt increasingly
                  faster to new environments.

**intuition**: The ability for a system to make decisions without
               resorting to an emulation of Boolean
               logic. For design and implementation purposes, imagination,
               intuition, and perception are considered equivalent.

**model**: A representation of the world.

**node**: 

**optimization**

**output**

**pattern**

**perception**

**sensing**

**system**: An instance of the machine we're building and studying.

**world**: The union of a system and its environment.

Avoided terms
==

These common terms tend to confuse a lot of people and are of limited
use for designing cognitive systems.

* **consciousness**
* **explaining**
* **learning**
* **understanding**
