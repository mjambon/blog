% Dictionary
This is an attempt to construct a dictionary of various terms which I
consider important and unambiguous in my view of the world. Emphasis is
placed on simplicity, consistency, and approachability. This document is
meant to evolve on a continuous basis rather than being the subject of
official releases.

[]{#vanity-776f726c64}**world**: [A subject of study plus everything
that interacts with it directly or indirectly. It is normally referred
to as \"the\" world because it is everything that exists from the
subject\'s perspective. An interaction can be modeled as a flow of
information, for some definition of information to be specified. A world
is isolated from everything else, and therefore anything modeled within
the world cannot learn anything about the existence or the nature of
other worlds.]{.vanity-contents}

[]{#vanity-6d6f64656c}**model**: [An unambiguous representation of the
[world](#vanity-776f726c64){.vanity-term-link}. As such, a model can in
principle be translated into another language and recovered back without
loss. A model is necessarily simpler than the world in which it can be
expressed.]{.vanity-contents}

[]{#vanity-74696d65}**time**: [An ordering over the states of a
[model](#vanity-6d6f64656c){.vanity-term-link}. Time is the breakdown of
a model into a sequence of objects called states with constraints over
those states. A more specific definition of time is part of each model,
if the model relies on such notion of time or successive states. Unless
otherwise specified, the stepwise execution of computer programs uses a
discrete, nonnegative index t to reference the successive steps of a
computation. An ideal scenario is a computation of discrete states
starting from an initial state t = 0 and a transition function. The
transition function computes the next state from the previous one. Such
computations are called simulations. More generally however, when there
is no need for computing successive states, time is usually modeled as
the real line.]{.vanity-contents}

[]{#vanity-73797374656d}**system**: [A system refers to a partial
[model](#vanity-6d6f64656c){.vanity-term-link}. It can be obtained by
taking some elements of a [world](#vanity-776f726c64){.vanity-term-link}
model and ignoring all interactions with the rest of the world, or by
modeling the rest of the world in a simpler manner than in the original
model. For example, modeling a car could consist in retaining a model of
the car components as well as a model of a road and how the car
interacts with the road, discarding all other elements of the world such
as buildings and trees. In this example, the car is the system and the
road is the rest of the world.]{.vanity-contents}

[]{#vanity-656e7669726f6e6d656e74}**environment**: [In a
[model](#vanity-6d6f64656c){.vanity-term-link} comprising
[systems](#vanity-73797374656d){.vanity-term-link}, the environment
refers to everything in the model that\'s not part of the system under
consideration.]{.vanity-contents}

[]{#vanity-696e646976696475616c}**individual**: [In a
[model](#vanity-6d6f64656c){.vanity-term-link} of the
[world](#vanity-776f726c64){.vanity-term-link}, an individual is a
mutable [system](#vanity-73797374656d){.vanity-term-link} which
interacts with the rest of world, including other individuals. Each
individual exists for some continuous period of
[time](#vanity-74696d65){.vanity-term-link}, usually in a binary
fashion: at a given time, the individual either exists or doesn\'t
exist.]{.vanity-contents}

[]{#vanity-6172746966696369616c}**artificial**: [The property of being
created by
[individuals](#vanity-696e646976696475616c){.vanity-term-link}, as
opposed to being imposed by the
[model](#vanity-6d6f64656c){.vanity-term-link} of the
[world](#vanity-776f726c64){.vanity-term-link} in which the individuals
exist.]{.vanity-contents}

[]{#vanity-6964656e74697479}**identity**: [The collection of properties
associated with an
[individual](#vanity-696e646976696475616c){.vanity-term-link}.]{.vanity-contents}

[]{#vanity-736574}**set**: [A set as defined in mathematics by the
axioms of set theory.]{.vanity-contents}

[]{#vanity-72756c65}**rule**: [An
[artificial](#vanity-6172746966696369616c){.vanity-term-link}
constraint. Unlike a physical constraint which can apply to various
portions of a [model](#vanity-6d6f64656c){.vanity-term-link}, an
artificial constraint applies to
[individual](#vanity-696e646976696475616c){.vanity-term-link} members of
a society, and said members can decide whether to follow
it.]{.vanity-contents}

[]{#vanity-736f6369657479}**society**: [A
[set](#vanity-736574){.vanity-term-link} of
[individuals](#vanity-696e646976696475616c){.vanity-term-link} known as
society members within a [model](#vanity-6d6f64656c){.vanity-term-link}
of the [world](#vanity-776f726c64){.vanity-term-link}, and associated
with [rules](#vanity-72756c65){.vanity-term-link}.]{.vanity-contents}

[]{#vanity-746f6f6c}**tool**: [A tool, in the very general sense that
interests us, is an extension of what\'s normally considered the body of
an individual and facilitates their interaction with the
[environment](#vanity-656e7669726f6e6d656e74){.vanity-term-link}. This
definition includes all machines, methods, and processes stored outside
of the normal body of an individual. In the usual human world, this
includes not just physical devices such as a hammer or a computer, but
also all data stored outside the body such as books and other
recordings. Therefore, other individuals can also be considered as tools
according this definition.]{.vanity-contents}

[]{#vanity-736369656e6365}**science**: [The activity consisting in
creating and refining [models](#vanity-6d6f64656c){.vanity-term-link} of
the [world](#vanity-776f726c64){.vanity-term-link}.]{.vanity-contents}

[]{#vanity-656e67696e656572696e67}**engineering**: [The activity of
making [tools](#vanity-746f6f6c){.vanity-term-link}.]{.vanity-contents}

[]{#vanity-6d617468656d6174696373}**mathematics**: [The study of the
structure of unambiguous statements. Mathematics are useful for dealing
with [models](#vanity-6d6f64656c){.vanity-term-link} in
[science](#vanity-736369656e6365){.vanity-term-link},
[engineering](#vanity-656e67696e656572696e67){.vanity-term-link}, and
other fields of study.]{.vanity-contents}

[]{#dag}
[![](img/glossary-deps.png "Graph showing the dependencies between definitions of
              this glossary.")](img/glossary-deps.png)
