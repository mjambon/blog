% Software “Engineering” Notes
% Martin Jambon, March 2020

These are a few rules I like, based on my experience. This is not
meant to be an exhaustive list, just things that are on my mind or that
I didn't realize until recently.

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
  their implications. Bad code piles up. New superficial features get
  delivered. Manager is happy. Bugs get fixed. New bugs gets
  produced. New contributors are hired. Manager is ecstatic. More
  complexity piles up. Nothing really new was accomplished. System is now
  a behemoth with 10 maintainers focused solely on its survival.
* 10x programmers are born. The mythical 10x programmer is one who
  delivers inscrutable code at a fast rate, leaving other contributors
  puzzled and unable to extend it or fix it.

Song: [Bronski Beat - Why ?](https://www.youtube.com/watch?v=H3LbzjFJdSA)

3-min builds or less
==

Song: [Mano Negra - King Kong Five](https://www.youtube.com/watch?v=HdqCk2MnKQk)

Don't break my focus
==

Song: [Queen - Don't Stop Me Now](https://www.youtube.com/watch?v=HgzGwKwLmgM)

Supervisor could fill in for me
==

Song: [Whitney Houston - How Will I know?]()

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
