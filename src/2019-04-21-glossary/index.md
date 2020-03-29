% Glossary
This is a glossary of terms that I use in the context of my own work on
artificial cognition.

Definitions are acyclic, i.e. a definition may contain only links to
previously defined terms. [This forms a DAG](#dag) (directed acyclic
graph) of terms, with the most foundational terms at the bottom.

[]{#vanity-73797374656d}**system**: [An instance of the machine we're
building and studying. ]{.vanity-contents}

[]{#vanity-656e7669726f6e6d656e74}**environment**: [Anything that is not
part of the [system](#vanity-73797374656d){.vanity-term-link}, with
which the [system](#vanity-73797374656d){.vanity-term-link} exchanges
information via input and output ports. Parts of the
[environment](#vanity-656e7669726f6e6d656e74){.vanity-term-link} that
are inaccessible to other
[systems](#vanity-73797374656d){.vanity-term-link} constitute the
[system](#vanity-73797374656d){.vanity-term-link}'s private
[environment](#vanity-656e7669726f6e6d656e74){.vanity-term-link}.
]{.vanity-contents}

[]{#vanity-776f726c64}**world**: [The union of a
[system](#vanity-73797374656d){.vanity-term-link} and its
[environment](#vanity-656e7669726f6e6d656e74){.vanity-term-link}.
]{.vanity-contents}

[]{#vanity-636c6f6e696e67}**cloning**: [Copying a full
[system](#vanity-73797374656d){.vanity-term-link}. Unlike biological
cloning, this includes copying all the acquired cognitive skills and
therefore the identity of the
[system](#vanity-73797374656d){.vanity-term-link}. ]{.vanity-contents}

[]{#vanity-6e6f6465}**node**: [Any kind of persistent element in the
[system](#vanity-73797374656d){.vanity-term-link}, that transmits
information. More generally, it has the usual meaning of vertex in graph
theory. ]{.vanity-contents}

[]{#vanity-61637469766174696f6e}**activation**: [Setting a single
[node](#vanity-6e6f6465){.vanity-term-link} to its
[active](#vanity-61637469766174696f6e){.vanity-term-link} state. A
[node](#vanity-6e6f6465){.vanity-term-link} remains
[active](#vanity-61637469766174696f6e){.vanity-term-link} only for one
cycle, after which it is systematically deactivated i.e. switched to its
default state. In order to be considered continuously
[active](#vanity-61637469766174696f6e){.vanity-term-link}, a
[node](#vanity-6e6f6465){.vanity-term-link} needs to be activated at
each cycle. An [active](#vanity-61637469766174696f6e){.vanity-term-link}
[node](#vanity-6e6f6465){.vanity-term-link} transmits a unary signal to
other [nodes](#vanity-6e6f6465){.vanity-term-link} or components, while
an [inactive](#vanity-61637469766174696f6e){.vanity-term-link}
[node](#vanity-6e6f6465){.vanity-term-link} doesn't. ]{.vanity-contents}

[]{#vanity-636f6e63657074}**concept**: [A
[node](#vanity-6e6f6465){.vanity-term-link} that represents a set of
states of the [world](#vanity-776f726c64){.vanity-term-link}. An
[active](#vanity-61637469766174696f6e){.vanity-term-link} instance of
such [node](#vanity-6e6f6465){.vanity-term-link}. ]{.vanity-contents}

[]{#vanity-616374696f6e}**action**: [(1) The
[activation](#vanity-61637469766174696f6e){.vanity-term-link} of an
output port, which may modify the environment. An
[action](#vanity-616374696f6e){.vanity-term-link} is said internal if
other [systems](#vanity-73797374656d){.vanity-term-link} cannot sense
these changes in the environment. (2) An output port.
]{.vanity-contents}

[]{#vanity-6162737472616374}**abstract**: [Given two
[concepts](#vanity-636f6e63657074){.vanity-term-link} A and B, A is said
more [abstract](#vanity-6162737472616374){.vanity-term-link} than B if
the [activation](#vanity-61637469766174696f6e){.vanity-term-link} of B
triggers the
[activation](#vanity-61637469766174696f6e){.vanity-term-link} of A, but
the [activation](#vanity-61637469766174696f6e){.vanity-term-link} of A
can take place without B. ]{.vanity-contents}

[]{#vanity-6669746e657373}**fitness**: [The single numeric variable that
changes over time and that the
[system](#vanity-73797374656d){.vanity-term-link} tries to maximize. At
least some of the rules that the
[system](#vanity-73797374656d){.vanity-term-link} uses to compute the
fitness are built in. For example, an external operator would press a
green button to add 1 to the fitness at the current cycle or a red
button to add -1. The intended effect is to reward or punish the
[system](#vanity-73797374656d){.vanity-term-link} and encourage certain
behaviors. ]{.vanity-contents}

[]{#vanity-616e74696369706174696f6e}**anticipation**: [A mechanism by
which the [system](#vanity-73797374656d){.vanity-term-link} rewards
itself based on the expected reward for
[actions](#vanity-616374696f6e){.vanity-term-link} that it just decided
to take. A reward refers to the value of the
[fitness](#vanity-6669746e657373){.vanity-term-link} considered to be
resulting from a set of
[actions](#vanity-616374696f6e){.vanity-term-link}. ]{.vanity-contents}

[]{#vanity-636f6e6372657465}**concrete**: [The opposite of
[abstract](#vanity-6162737472616374){.vanity-term-link}.
]{.vanity-contents}

[]{#vanity-636f6e74657874}**context**: [(1) A
[concept](#vanity-636f6e63657074){.vanity-term-link}. (2) The set of all
the states of the [world](#vanity-776f726c64){.vanity-term-link} which
are sufficient to activate a
[node](#vanity-6e6f6465){.vanity-term-link}. ]{.vanity-contents}

[]{#vanity-656d6f74696f6e}**emotion**: [(1) A built-in parameter of the
[system](#vanity-73797374656d){.vanity-term-link} which can take a range
of values and affects the behavior of the whole
[system](#vanity-73797374656d){.vanity-term-link} in a predetermined
manner. Its value changes over time and can be sensed by the
[system](#vanity-73797374656d){.vanity-term-link} itself. (2) A specific
value of such parameter. ]{.vanity-contents}

[]{#vanity-696e707574}**input**: [Shorthand term for \"sensing input\",
which designates the fixed-length bit vector refreshed at regular
intervals that's available to the
[system](#vanity-73797374656d){.vanity-term-link} for sensing the
environment. This excludes the external reward passed to the
[system](#vanity-73797374656d){.vanity-term-link} via a special-purpose
port and used in the computation of the
[fitness](#vanity-6669746e657373){.vanity-term-link}.
]{.vanity-contents}

[]{#vanity-73656e73696e67}**sensing**: [The
[activation](#vanity-61637469766174696f6e){.vanity-term-link} of
[input](#vanity-696e707574){.vanity-term-link} ports.
]{.vanity-contents}

[]{#vanity-6d696e64}**mind**: [A
[system](#vanity-73797374656d){.vanity-term-link} that works as
expected. ]{.vanity-contents}

[]{#vanity-6d6f64656c}**model**: [A representation of the
[world](#vanity-776f726c64){.vanity-term-link}. ]{.vanity-contents}

[]{#vanity-6f7074696d697a6174696f6e}**optimization**: [Numeric
optimization, usually referring to the maximization of the
[fitness](#vanity-6669746e657373){.vanity-term-link} variable by the
[system](#vanity-73797374656d){.vanity-term-link}. ]{.vanity-contents}

[]{#vanity-6f7574707574}**output**: [Fixed-length bit vector updated by
the [system](#vanity-73797374656d){.vanity-term-link} periodically. A
cell in the output vector is called an
[action](#vanity-616374696f6e){.vanity-term-link}. The
[activation](#vanity-61637469766174696f6e){.vanity-term-link} of an
output cell is called an
[action](#vanity-616374696f6e){.vanity-term-link} as well. Such
[activation](#vanity-61637469766174696f6e){.vanity-term-link} typically
results in a modification of the
[environment](#vanity-656e7669726f6e6d656e74){.vanity-term-link}.
]{.vanity-contents}

[]{#vanity-7061747465726e}**pattern**: [A set of
[input](#vanity-696e707574){.vanity-term-link} values identifiable by
the [system](#vanity-73797374656d){.vanity-term-link}.
]{.vanity-contents}

[]{#vanity-70657263657074696f6e}**perception**: [The
[activation](#vanity-61637469766174696f6e){.vanity-term-link} of a
[concept](#vanity-636f6e63657074){.vanity-term-link} that's considered
similar to a [concept](#vanity-636f6e63657074){.vanity-term-link} of
reference in another [system](#vanity-73797374656d){.vanity-term-link}
or more generally in an external model of the
[world](#vanity-776f726c64){.vanity-term-link}. ]{.vanity-contents}

[]{#vanity-696d6167696e6174696f6e}**imagination**: [The ability to
[activate](#vanity-61637469766174696f6e){.vanity-term-link} a
[concept](#vanity-636f6e63657074){.vanity-term-link} in either of two
contexts, one being more
[abstract](#vanity-6162737472616374){.vanity-term-link} than the other.
]{.vanity-contents}

[]{#vanity-696e74756974696f6e}**intuition**: [The ability for a
[system](#vanity-73797374656d){.vanity-term-link} to make decisions
without resorting to an emulation of Boolean logic. For design and
implementation purposes,
[imagination](#vanity-696d6167696e6174696f6e){.vanity-term-link},
[intuition](#vanity-696e74756974696f6e){.vanity-term-link}, and
[perception](#vanity-70657263657074696f6e){.vanity-term-link} are
considered equivalent. ]{.vanity-contents}

[]{#vanity-696e74656c6c6967656e6365}**intelligence**: [The ability for a
[system](#vanity-73797374656d){.vanity-term-link} to adapt increasingly
faster to new
[environments](#vanity-656e7669726f6e6d656e74){.vanity-term-link}.
]{.vanity-contents}

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
[![](img/glossary-deps.png "Graph showing the dependencies between definitions of
              this glossary.")](img/glossary-deps.png)

This acyclic glossary and its graph representation were formatted with
[vanity](https://github.com/mjambon/vanity), a command-line utility I
created for the occasion.
