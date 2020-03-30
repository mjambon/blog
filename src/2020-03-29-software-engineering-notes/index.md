% Software “Engineering” Notes
% Martin Jambon, March 2020

These are a few rules I like, based on my experience. This is not
meant to be an exhaustive list, just things that are on my mind or that
I didn't realize until recently.

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

What happens when followed:

* Navigability: readers not familiar with the project can quickly find
  what they're looking for, by reading the project description, then
  finding the right component, then finding the right file, then
  finding the right function.
* Debuggability: it's hard to fix a piece of code if we don't know
  what it's supposed to do.
* Memory: contributors come and go, whether it was originally intended
  or not. A brain dump of the original author can be passed to the
  future generations of maintainers.

What happens when not followed:

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

Song: [Bronski Beat - Why ?](https://www.youtube.com/watch?v=H3LbzjFJdSA)

Build under 3 minutes
==

Rule: A routine `make` invocation may take no more than 3 minutes. Or
whatever time allows the developer to stay focused and not start
checking their email or other distractions.

What happens when followed:

* No interruptions. Happiness. Things get done fast.

What happens when not followed:

* Developer has to wait 5 minutes for their code to compile or pass
  tests. They go and check their email or company chat. Or maybe they
  go get coffee, or lunch. The 5-min break turns into a 15-min or
  30-min break. Employee gets back to their desk and needs to
  refocus. This adds another 5-10 minutes. In the end, it's a series
  20-min to 40-min breaks interleaved with 10-20 minutes of coding.
  Nothing gets done fast. Programmer gets sad.

Song: [Mano Negra - King Kong Five](https://youtu.be/HdqCk2MnKQk?t=19)

Don't break my focus
==

Song: [Queen - Don't Stop Me Now](https://www.youtube.com/watch?v=HgzGwKwLmgM)

Supervisor could fill in for me
==

Song: [USA For Africa - We Are the World](https://www.youtube.com/watch?v=9AjkUyX0rVw)

No deadlines
==

Song: [Europe - The Final Countdown](https://www.youtube.com/watch?v=9jK-NcRmVcw)

Consistent incentives
==

Song: [Pet Shop Boys - Opportunities (Let's Make Lots of Money)](https://www.youtube.com/watch?v=PyeWRd7ZEBs)

Zero-effort build
==

Song: [Marsheaux - Eyes Without a Face](https://www.youtube.com/watch?v=cCDorntnIYw)

Accountability for technical choices
==

Song: [Hillbilly Moon Explosion & Mark 'Sparky' Philips - My Love For Evermore](https://www.youtube.com/watch?v=G228uZgAD0c)
