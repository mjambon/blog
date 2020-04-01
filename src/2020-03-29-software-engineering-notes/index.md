% Software “Engineering” Notes
% Martin Jambon, March 2020

These are a few rules I like, drawn from my experience.
Like all good rules, they're really just guidelines. Nothing's
set in stone. Execution is what matters.

The accompanying songs can be happily ignored.

<!-- toc -->

Tell us why [we need that code]
==

Rule: When producing a piece of code of any size, make sure it
comes with a concise explanation of why it has to exist. Answers to
the following questions must be obvious to a naive reader:

* Who or what needs it?
* What is it for? Where can I learn more about it if necessary?
* Couldn't we do with an existing library?
* What does it depend on? How much maintenance will be needed?
* Who understands it best?

Examples:

* Start _all_ source files with at least _some_ description of
  where they fit in the project.
* Use evocative names.
* Have a short, low-maintenance readme for each component of the
  project.
* Describe the intent behind a non-trivial function.
* Leave notes about code weaknesses and things that may need more
  work.

If followed:

* Navigability: readers not familiar with the project can quickly find
  what they're looking for, by reading the project description, then
  finding the right component, then finding the right file, then
  finding the right function.
* Debuggability: it's hard to fix a piece of code if we don't know
  what it's supposed to do.
* Memory: contributors come and go, whether it was originally intended
  or not. A brain dump of the original author can be passed to the
  future generations of maintainers.

If not followed:

* Lengthy reconstruction: a new contributor has to guess what the
  existing code does without knowing its structure. Not knowing what
  is part of a grand design and what was meant to be improved
  is challenging. Sometimes it is even faster to throw the
  whole project away and start a fresh implementation. Any of this is
  costly.
* Bugs: new contributors start making changes without understanding
  their implications. Bad code piles up. New contributors are hired
  to keep up with maintenance.
* 10x programmers are born. The now infamous “10x programmer” is one who
  delivers inscrutable code at a fast rate. They leave other contributors
  puzzled and unable to extend it or fix it. Team productivity tanks.

Song: [Bronski Beat - Why?](https://www.youtube.com/watch?v=H3LbzjFJdSA) (1984)

Don't break my focus
==

Rule: It's ok to interrupt a programmer only for things that don't
require them to focus on something else. For everything else, use
asynchronous communication.

Examples: Interrupting someone to ask for their home address is usually
ok. Interrupting someone to ask them what they think of a piece of
code is not acceptable.

If followed: Programmer gets their job done.

If not followed: 30 minutes are needed to refocus after each
interruption.

Song: [Queen - Don't Stop Me Now](https://www.youtube.com/watch?v=HgzGwKwLmgM) (1978)

Supervisor could fill in for me
==

Rule: The programmer's supervisor, if any, must be able to take over
the programmer's job were they to leave the team.

If followed:

* Programmer can take a vacation, get sick, leave, etc. without complications.
* Supervisor can evaluate their work.
* Supervisor can create the correct incentives for shaping the team's
  productivity.

If not followed:

* Supervisor hires and fires the wrong people.
* Supervisor cannot provide adequate tools and a productive
  environment.
* Supervisor cannot settle conflicts.
* Supervisor is useless as a supervisor.

Song: [Bruno Mars - Count on me](https://www.youtube.com/watch?v=ZMsvwwp6S7Q) (2010)

<a name="eliminate"></a>

Eliminate future tasks
==

Rule: If the programmer can eliminate future work for themselves or
for their peers, they should take the time to do so. It is important
that the manager sees this as well and supports such unscheduled
tasks. See also the “[No deadlines](#deadlines)” rule.

Example: Take a month to create a tool that will eliminate two years
of work across the team.

Song: [Rathergood - Bagger 288!](https://www.youtube.com/watch?v=azEvfD4C6ow)
(2009), an ode to a [giant mobile excavator in
Germany](https://en.wikipedia.org/wiki/Bagger_288) which can move 240,000
tons of dirt per day.

<a name="deadlines"></a>

No deadlines
==

Rule: Eliminate deadlines as much as possible.

Justification:

* Opportunities for automating the team's tasks should
  not be missed due to the pressure to stick to a schedule. See also
  the “[Eliminate future tasks](#eliminate)” rule.
* Occasional refactoring work must be undertaken to keep things
  running smoothly. It should be
  done before the code base becomes too messy so as to avoid
  [boiling the frog](https://en.wikipedia.org/wiki/Boiling_frog).
  Such work typically has no visible impact on the product.
  This is why it requires understanding and support from management.

If followed:

* Increased productivity.
* Low stress.

If not followed:

* Too much code piles up, needs maintenance.
* Low productivity due to lack of clean-up efforts.
* Team spends time fixing bugs.

Song: [Europe - The Final
Countdown](https://www.youtube.com/watch?v=9jK-NcRmVcw)
(1986)

Consistent incentives
==

Rule: Managers must set incentives consistent with
best software engineering practices. They must identify and eliminate
counter-productive incentives.

Examples:

* Encourage code quality over quantity.
* Encourage selfless efforts.
* Encourage initiative.

Song: [Pet Shop Boys - Opportunities (Let's Make Lots of
Money)](https://www.youtube.com/watch?v=PyeWRd7ZEBs) (1986), a song
about greed.

Routine build under 3 minutes
==

Rule: A routine `make` invocation may take no more than 3 minutes. Or
whatever time allows the developer to stay focused and not start
checking their email or other distractions.

If followed: No interruptions. Happiness. Things get done fast.

If not followed: Developer has to wait 5 minutes for
their code to compile or pass tests. They go and check their email or
company chat. Or maybe they go get coffee, or lunch. The 5-min break
turns into a 15-min or 30-min break. Employee gets back to their desk
and needs to refocus. This adds another 5-10 minutes. In the end, it's
a series 20-min to 40-min breaks interleaved with 10-20 minutes of
coding.  Nothing gets done fast. Programmer gets sad.

Song: [Mano Negra - King Kong Five](https://youtu.be/HdqCk2MnKQk?t=19)
(1989) because it's a short song? And it's French.

Zero-effort build
==

Rule: Any project or subproject can be built, tested, and
deployed without thinking.

Example: A project is trivially built, tested, and installed with the
following commands:

* `make`
* `make test`
* `make install`

Any deviation from this scheme adds to the cognitive burden of the
person who needs to build the project.

Song: [Marsheaux - Eyes Without a
Face](https://www.youtube.com/watch?v=cCDorntnIYw) (2012) I just like this
song. A good cover of the [Billy Idol
classic](https://www.youtube.com/watch?v=9OFpfTd0EIs) (1983).

Accountability for technical choices
==

Rule: Let the programmer choose their tools and hold them
accountable.

What if they do:

* Programmers choose what makes them more productive in their
  specialty.
* Programmers stand by their work.
* Manager doesn't have to be an expert at everything.
* Manager is trusted and loved.

What if they don't:

* Manager is not an expert, chooses inadequate or obsolete tools.
* Programmers are unproductive.
* Programmers get frustrated.
* Manager gets frustrated.
* Manager gets disrespected.
* Nobody really owns successes or failures.
* Team members stop caring.

Song: [Hillbilly Moon Explosion & Mark 'Sparky' Philips - My Love For
Evermore](https://www.youtube.com/watch?v=G228uZgAD0c) (2011)
I like this song too!
