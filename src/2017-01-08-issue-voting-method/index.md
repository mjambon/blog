Issue Voting: a proposed voting method
======================================

Definition
----------

_Issue voting_ is a proposed voting method for electing a single
winner among a set of declared candidates. It is defined as follows:

* Each candidate formulates _n_ statements, _n_ being a small number.
* Each voter approves or disapproves each statement for each candidate.
* The candidate who receives the most approval votes in total across
  all their statements wins the election.

Example
-------

In this election, the number $n$ of statements that each candidate
must make is 5.

Candidate A: Dwayne Elizondo Mountain Dew Herbert Camacho

* A1 We need more electrolytes.
* A2 We don't need no education.
* A3 w00t
* A4 I'll serve up a can of whoop ass if you cross me.
* A5 This guy Not Sure. He's going to fix EVERYTHING.

Candidate B: Fielding Mellish

* B1 Underwear should be worn on the outside.
* B2 Blood! That should be on the inside!
* B3 Our children need to learn about electrolytes.
* B4 Everyone should have the right to work and make money for themselves.
* B5 You need a powerful president and I'll make you powerful too.

Candidate C: Sheev Palpatine

* C1 I like Jedis! I love my Jedi food. There are just too many of them.
* C2 A little bit of anger feels good and can solve many problems.
* C3 Mind tricks shall be outlawed.
* C4 Bread and games for all!
* C5 Let's make Hoth hot again.

A voter who supports Mellish and opposes Camacho and Palpatine can
decide to approve all of Palpatine's statements and none of the
statements of the other candidates. The ballot is: B1, B2, B3, B4, B5

Another voter might support more funding for public education and finds the
other issues less important, or doesn't have opinions on other issues.
This voter would approve the statement that promotes
education regardless of the candidate, resulting in the
following ballot: B3

A voter focused on a variety of issues more than a candidate might
pick the following: A1, A5, B2, B3, B4, B5, C2, C3, C4, C5.

In this scenario with 3 voters, the results are:

* A1: 1
* A2: 0
* A3: 0
* A4: 0
* A5: 1

Total for A (Camacho): 2

* B1: 1
* B2: 2
* B3: 3
* B4: 2
* B5: 2

Total for B (Mellish): 10

* C1: 0
* C2: 1
* C3: 1
* C4: 1
* C5: 1

Total for C (Palpatine): 4

Mellish gets elected with 10 votes. Palpatine comes in second with 4
votes and Camacho comes in third with 2 votes. These results can be
expressed as a percentage of the maximum score obtainable, which is
the number of statements per candidate (5) times the number of voters
(3), which is 15 in this example.

* A (Camacho): 2/15 = 13.3 %
* B (Mellish): 10/15 = 66.7 %
* C (Palpatine): 4/15 = 26.7 %

Equivalence with range voting
-----------------------------

This method is equivalent to range voting, where a voter can give from
0 to _n_ points to any candidate. However, each point that a voter
gives to a candidate is labeled with a statement or promise from the
candidate.

For example, a candidate may decide to enter the same empty
phrase, such as "I want a great president!",
for each of their statements. In this case, the voter will simply
score the candidate by checking some number of boxes for the
candidate, regardless of what they say.

Benefits over approval voting or range voting
---------------------------------------------

Requiring the candidates to make short, official statements shown on
the ballots has the following advantages:

* **Transparency**. The campaigning candidate cannot
  promise one thing to an audience and its opposite to another
  audience.
* **Consistency**. The candidates must publish their 5 official statements
  some time ahead of the election, say one month, or be disqualified.
  This prevents them from flip-flopping for at least that period of
  time.
* **Accountability**. It is now easy to hold the winner of the election
  accountable for the 4-5 statements that got them elected.
* **Ideological voting**. In elections where candidates are not well known
  by the voters, voting on a list of clearly stated issues is
  preferable than just their political party, how their name sounds,
  or how attractive they look on the official photo.
* **Independence from party ideology**. Voters no longer have to side
  entirely with one political party or another, but they pick
  ideas from various parties as they like.
* **Higher voter engagement**. By giving voters the option to support only
  the one issue they really care about and ignoring the other issues,
  voters know whether it's worth voting. If their issue is not listed
  among the candidate's statements, then they have a legitimate reason
  to not vote. Unlike range voting, the score given to each candidate
  is directly meaningful, without having the voter guess some
  percentage of approval from memory.

Usual advantages of range voting and approval voting:

* **Simplicity** for the voter and for counting votes, in particular
  in contrast with ranked-choice methods.
* **Maximum voter satisfaction** with respect to the outcome of the
  election.

Voter weight normalization
--------------------------

As in all forms of range voting including approval voting, the voter
should give the maximum points to one candidate and the minimum
points to some other candidate to have a maximum impact.
This is probably obvious to most
voters in the case of approval voting, not obvious in the general
case of score voting, and perhaps even less obvious here where
the voter is asked to vote on issues and may not want to support an
issue insincerely for strategic purposes.

This problem can be solved by scaling the votes on each ballot, such that
the maximum point difference between 2 candidates becomes the same
for each ballot.

The voters in the earlier example cast the following ballots:

* Voter 1: B1 B2 B3 B4 B5
* Voter 2: B3
* Voter 3: A1 A5 B2 B3 B4 B5 C2 C3 C4 C5

In the original formulation of the method, each approval results in 1
point. After normalization in which the difference between least-liked
and most-liked candidates is set to 5, the points associated with each
vote become:

* Voter 1: 1 (A and C receive 0 points, B receives 5 × 1 points)
* Voter 2: 5 (A and C receive 0 points, B receives 1 × 5 points)
* Voter 3: 2.5 (A receives 2 × 2.5 points, B and C receive 4 × 2.5
  points each)

Now voters automatically have a fair weight in the outcome of the
election, without forcing them to vote for some issues insincerely.

Algorithm for counting a ballot:

1. Determine the weight of the votes in a given ballot: Find _x_, the
   smallest number of votes that a candidate received. Find _y_, the
   largest number of votes that a candidate received. If _x_ equals
   _y_, the weight is set to 1. Otherwise, the weight is set to
   5/(_y_-_x_).
2. The weight for each vote (instead of 1) is added to the total for each
   statement.

This normalization is useful for giving the same weight to each voter
on which candidate will win the election, whether they vote sincerely
or not. It is however not valid for reporting the percentage of
approval for each statement, which should be done without
normalization.

Practical issues
----------------

This method requires larger ballots than if only the candidate names
and political party were shown. This is presumably not much of an
issue, since statements would be bounded in length anyway.

Counting the votes with normalization is also slightly more
complicated than in approval voting, but not by much.
