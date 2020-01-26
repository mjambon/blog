Glossary
========

This is a glossary of terms that I use in the context of my own work on
artificial cognition.

Definitions are acyclic, i.e. a definition may contain only links to
previously defined terms. [This forms a DAG](#dag) (directed acyclic
graph) of terms, with the most foundational terms at the bottom.

[]{#ad-73797374656d}**system**: [An instance of the machine we're
building and studying. ]{.ad-contents}

[]{#ad-656e7669726f6e6d656e74}**environment**: [Anything that is not
part of the [system](#ad-73797374656d){.ad-term-link}, with which the
[system](#ad-73797374656d){.ad-term-link} exchanges information via
input and output ports. Parts of the
[environment](#ad-656e7669726f6e6d656e74){.ad-term-link} that are
inaccessible to other [systems](#ad-73797374656d){.ad-term-link}
constitute the [system](#ad-73797374656d){.ad-term-link}'s private
[environment](#ad-656e7669726f6e6d656e74){.ad-term-link}.
]{.ad-contents}

[]{#ad-776f726c64}**world**: [The union of a
[system](#ad-73797374656d){.ad-term-link} and its
[environment](#ad-656e7669726f6e6d656e74){.ad-term-link}.
]{.ad-contents}

[]{#ad-636c6f6e696e67}**cloning**: [Copying a full
[system](#ad-73797374656d){.ad-term-link}. Unlike biological cloning,
this includes copying all the acquired cognitive skills and therefore
the identity of the [system](#ad-73797374656d){.ad-term-link}.
]{.ad-contents}

[]{#ad-6e6f6465}**node**: [Any kind of persistent element in the
[system](#ad-73797374656d){.ad-term-link}, that transmits information.
More generally, it has the usual meaning of vertex in graph theory.
]{.ad-contents}

[]{#ad-61637469766174696f6e}**activation**: [Setting a single
[node](#ad-6e6f6465){.ad-term-link} to its
[active](#ad-61637469766174696f6e){.ad-term-link} state. A
[node](#ad-6e6f6465){.ad-term-link} remains
[active](#ad-61637469766174696f6e){.ad-term-link} only for one cycle,
after which it is systematically deactivated i.e. switched to its
default state. In order to be considered continuously
[active](#ad-61637469766174696f6e){.ad-term-link}, a
[node](#ad-6e6f6465){.ad-term-link} needs to be activated at each cycle.
An [active](#ad-61637469766174696f6e){.ad-term-link}
[node](#ad-6e6f6465){.ad-term-link} transmits a unary signal to other
[nodes](#ad-6e6f6465){.ad-term-link} or components, while an
[inactive](#ad-61637469766174696f6e){.ad-term-link}
[node](#ad-6e6f6465){.ad-term-link} doesn't. ]{.ad-contents}

[]{#ad-636f6e63657074}**concept**: [A
[node](#ad-6e6f6465){.ad-term-link} that represents a set of states of
the [world](#ad-776f726c64){.ad-term-link}. An
[active](#ad-61637469766174696f6e){.ad-term-link} instance of such
[node](#ad-6e6f6465){.ad-term-link}. ]{.ad-contents}

[]{#ad-616374696f6e}**action**: [(1) The
[activation](#ad-61637469766174696f6e){.ad-term-link} of an output port,
which may modify the environment. An
[action](#ad-616374696f6e){.ad-term-link} is said internal if other
[systems](#ad-73797374656d){.ad-term-link} cannot sense these changes in
the environment. (2) An output port. ]{.ad-contents}

[]{#ad-6162737472616374}**abstract**: [Given two
[concepts](#ad-636f6e63657074){.ad-term-link} A and B, A is said more
[abstract](#ad-6162737472616374){.ad-term-link} than B if the
[activation](#ad-61637469766174696f6e){.ad-term-link} of B triggers the
[activation](#ad-61637469766174696f6e){.ad-term-link} of A, but the
[activation](#ad-61637469766174696f6e){.ad-term-link} of A can take
place without B. ]{.ad-contents}

[]{#ad-6669746e657373}**fitness**: [The single numeric variable that
changes over time and that the [system](#ad-73797374656d){.ad-term-link}
tries to maximize. At least some of the rules that the
[system](#ad-73797374656d){.ad-term-link} uses to compute the fitness
are built in. For example, an external operator would press a green
button to add 1 to the fitness at the current cycle or a red button to
add -1. The intended effect is to reward or punish the
[system](#ad-73797374656d){.ad-term-link} and encourage certain
behaviors. ]{.ad-contents}

[]{#ad-616e74696369706174696f6e}**anticipation**: [A mechanism by which
the [system](#ad-73797374656d){.ad-term-link} rewards itself based on
the expected reward for [actions](#ad-616374696f6e){.ad-term-link} that
it just decided to take. A reward refers to the value of the
[fitness](#ad-6669746e657373){.ad-term-link} considered to be resulting
from a set of [actions](#ad-616374696f6e){.ad-term-link}.
]{.ad-contents}

[]{#ad-636f6e6372657465}**concrete**: [The opposite of
[abstract](#ad-6162737472616374){.ad-term-link}. ]{.ad-contents}

[]{#ad-636f6e74657874}**context**: [(1) A
[concept](#ad-636f6e63657074){.ad-term-link}. (2) The set of all the
states of the [world](#ad-776f726c64){.ad-term-link} which are
sufficient to activate a [node](#ad-6e6f6465){.ad-term-link}.
]{.ad-contents}

[]{#ad-656d6f74696f6e}**emotion**: [(1) A built-in parameter of the
[system](#ad-73797374656d){.ad-term-link} which can take a range of
values and affects the behavior of the whole
[system](#ad-73797374656d){.ad-term-link} in a predetermined manner. Its
value changes over time and can be sensed by the
[system](#ad-73797374656d){.ad-term-link} itself. (2) A specific value
of such parameter. ]{.ad-contents}

[]{#ad-696e707574}**input**: [Shorthand term for \"sensing input\",
which designates the fixed-length bit vector refreshed at regular
intervals that's available to the
[system](#ad-73797374656d){.ad-term-link} for sensing the environment.
This excludes the external reward passed to the
[system](#ad-73797374656d){.ad-term-link} via a special-purpose port and
used in the computation of the
[fitness](#ad-6669746e657373){.ad-term-link}. ]{.ad-contents}

[]{#ad-73656e73696e67}**sensing**: [The
[activation](#ad-61637469766174696f6e){.ad-term-link} of
[input](#ad-696e707574){.ad-term-link} ports. ]{.ad-contents}

[]{#ad-6d696e64}**mind**: [A [system](#ad-73797374656d){.ad-term-link}
that works as expected. ]{.ad-contents}

[]{#ad-6d6f64656c}**model**: [A representation of the
[world](#ad-776f726c64){.ad-term-link}. ]{.ad-contents}

[]{#ad-6f7074696d697a6174696f6e}**optimization**: [Numeric optimization,
usually referring to the maximization of the
[fitness](#ad-6669746e657373){.ad-term-link} variable by the
[system](#ad-73797374656d){.ad-term-link}. ]{.ad-contents}

[]{#ad-6f7574707574}**output**: [Fixed-length bit vector updated by the
[system](#ad-73797374656d){.ad-term-link} periodically. A cell in the
output vector is called an [action](#ad-616374696f6e){.ad-term-link}.
The [activation](#ad-61637469766174696f6e){.ad-term-link} of an output
cell is called an [action](#ad-616374696f6e){.ad-term-link} as well.
Such [activation](#ad-61637469766174696f6e){.ad-term-link} typically
results in a modification of the
[environment](#ad-656e7669726f6e6d656e74){.ad-term-link}.
]{.ad-contents}

[]{#ad-7061747465726e}**pattern**: [A set of
[input](#ad-696e707574){.ad-term-link} values identifiable by the
[system](#ad-73797374656d){.ad-term-link}. ]{.ad-contents}

[]{#ad-70657263657074696f6e}**perception**: [The
[activation](#ad-61637469766174696f6e){.ad-term-link} of a
[concept](#ad-636f6e63657074){.ad-term-link} that's considered similar
to a [concept](#ad-636f6e63657074){.ad-term-link} of reference in
another [system](#ad-73797374656d){.ad-term-link} or more generally in
an external model of the [world](#ad-776f726c64){.ad-term-link}.
]{.ad-contents}

[]{#ad-696d6167696e6174696f6e}**imagination**: [The ability to
[activate](#ad-61637469766174696f6e){.ad-term-link} a
[concept](#ad-636f6e63657074){.ad-term-link} in either of two contexts,
one being more [abstract](#ad-6162737472616374){.ad-term-link} than the
other. ]{.ad-contents}

[]{#ad-696e74756974696f6e}**intuition**: [The ability for a
[system](#ad-73797374656d){.ad-term-link} to make decisions without
resorting to an emulation of Boolean logic. For design and
implementation purposes,
[imagination](#ad-696d6167696e6174696f6e){.ad-term-link},
[intuition](#ad-696e74756974696f6e){.ad-term-link}, and
[perception](#ad-70657263657074696f6e){.ad-term-link} are considered
equivalent. ]{.ad-contents}

[]{#ad-696e74656c6c6967656e6365}**intelligence**: [The ability for a
[system](#ad-73797374656d){.ad-term-link} to adapt increasingly faster
to new [environments](#ad-656e7669726f6e6d656e74){.ad-term-link}.
]{.ad-contents}

Avoided terms
-------------

We don't have a good use for these common terms, so we'll avoid them
until we do:

-   **consciousness**
-   **explaining**
-   **knowledge**
-   **learning**
-   **understanding**

[]{#dag}
[![](img/glossary-dag.png "Graph showing the dependencies between definitions of
              this glossary.")](img/glossary-dag.png)

This acyclic glossary and its graph representation were formatted with
[ad](https://github.com/mjambon/ad), a command-line utility I created
for the occasion.
