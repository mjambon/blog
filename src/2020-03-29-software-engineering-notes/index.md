% Software Engineering Notes
% Martin Jambon, March 2020

Many of these rules are highly counter-intuitive to inexperienced
programmers and engineering managers. Use responsibly.

<!-- toc -->

Tell us why we need that code
==

Rule: When producing a piece of code of any size, make sure it
comes with a concise explanation of _why_ it has to exist.

Answers to the following questions must be obvious to a naive reader:

* Who or what needs it?
* What is it for? Where can I learn more about it?
* Why not use an existing library?
* What does it depend on? How much maintenance will be needed?
* Who understands it best?

Examples:

* Start _all_ source files with at least _some_ description of
  where they fit in the project.
* Use evocative names.
* Have a short, low-maintenance readme for each component of the
  project.
* Describe the intent behind a long function.
* Leave notes about room for improvement.

If followed:

* Navigability: Outsiders can quickly locate
  things by reading the project description, then
  find the right component, then find the right file, then
  find the right function.
* Debuggability: We can't fix it if we don't know what it's supposed to do.
* History: Contributors come and go. Finding a brain dump of
  the original author saves the day.

If not followed:

* Lengthy reconstruction: A new contributor has to guess what the
  existing code does without knowing its structure. Not knowing what
  is part of a grand design and what was meant to be improved
  is challenging. Sometimes it is even faster to throw the
  whole project away and start a fresh implementation. Any of this is
  costly.
* Bugs: New contributors start making changes without understanding
  their implications. Bad code piles up. New contributors are hired
  to keep up with maintenance.
* 10x programmers are born. The infamous “10x programmer” is one who
  delivers inscrutable code at a fast rate. They leave other contributors
  puzzled and unable to extend it or fix it. Team productivity tanks.

Don't break my focus
==

Rule: It's fine to interrupt a programmer only for things that don't
require them to focus on something else. For everything else, use
asynchronous communication.

Examples: Interrupting someone to ask for their home address is usually
ok. Interrupting someone to ask them what they think of a piece of
code is not acceptable.

If followed: Programmer gets their job done.

If not followed: 30 minutes are needed to refocus after each
interruption.

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

<a name="eliminate"></a>

Eliminate future tasks
==

Rule: If the programmer can eliminate future work for themselves or
for their peers, they should take the time to do so.

It is important that the manager sees this as well and supports such
unscheduled tasks. See also the “[No deadlines](#deadlines)” rule.

Example: Take a month to create a tool that will eliminate two years
of work across the team.

<a name="deadlines"></a>

No deadlines
==

Rule: Eliminate deadlines as much as possible.

Justification:

* Don't skip opportunities for automation due to the pressure to stick
  to a schedule. See also the “[Eliminate future tasks](#eliminate)” rule.
* Keep things running smoothly by investing in occasional refactoring
  work. It should be done before the code base becomes too messy so as
  to avoid [boiling the frog](https://en.wikipedia.org/wiki/Boiling_frog).
  Such work typically has no visible impact on the product.
  This is why it requires understanding and support from management.

If followed:

* Increased productivity.
* Low stress.

If not followed:

* Too much code piles up, needs maintenance.
* Low productivity due to lack of clean-up efforts.
* Team spends time fixing bugs.

Consistent incentives
==

Rule: Managers must set incentives consistent with
best software engineering practices. They must identify and eliminate
counter-productive incentives.

Examples:

* Encourage code quality over quantity.
* Encourage selfless efforts.
* Encourage initiative.
* Reward automation proportionally to cost savings.

Zero-effort build
==

Rule: Any project can be built, tested, and deployed without thinking.

Example: A project is trivially built, tested, and installed with the
following commands:

* `make`
* `make test`
* `make install`

Any deviation from this scheme adds to the cognitive burden of the
person who needs to build the project.

Routine build under 2 minutes
==

Rule: A routine `make` invocation should be short enough for the
developer to _not lose focus_. This is 1 to 2 minutes.

Beyond that, the developer loses focus and starts looking at other
things. Prevent that context switch.

If followed: No interruptions. Happiness. Things get done fast.

If not followed: Developer has to wait 5 minutes for
their code to compile or pass tests. They go and check their email or
company chat. Or maybe they go get coffee or a snack. The 5-min break
turns into a 15-min or 30-min break. Employee gets back to their desk
and needs to refocus. This adds another 5-10 minutes. In the end, it's
a series 20-min to 40-min breaks interleaved with 10-20 minutes of
coding.  Nothing gets done fast. Programmer gets sad.

Accountability for technical choices
==

Rule: Let the programmer choose their tools and hold them
accountable.

> “A good craftsman never blames his tools”

because he gets to choose them!

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

Group culture sticks
==

Rule: Don't change a culture, replace it.

The culture of a group of people never shifts progressively to
a different culture. You can only leave the group, join
another group, or start a new group. A culture is defined by a set of
behaviors. When these behaviors get in the way of effective software
engineering, the group will fail rather than changing its habits.

This is why acqui-hires, i.e. the hiring of a successful group of
workers, is valuable to large companies. By joining as a group,
these workers hopefully keep doing things the way they used to,
instead of adopting the unsuccessful practices of the hiring
company.

Don't do what you don't understand
==

Rule: If you don't know what it's for and why it should work, don't use
it. Drop it. This applies to rules, tools, methods, and processes at
all levels of an organization.

Of course, this applies to the rules mentioned in this article! Don't
apply them if they're not justified in your situation.

Justification: Shallow imitation or “[cargo
cult](https://en.wikipedia.org/wiki/Cargo_cult)” comes at a cost:

* Doesn't produce the expected results
* Wastes time
* Weakens initiatives that really matter
