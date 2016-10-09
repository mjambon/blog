Diversity rule: a voting system that accommodates minorities
============================================================

Majority rule:

> _Given a group composed of 80% people of culture X and 20%
people of culture Y, ensure that 100% of the group activities
are of type X._

Proportional majority rule:

> _Given a group composed of 80% people of culture X and 20%
people of culture Y, ensure that 80% of the group activities
are of type X and 20% are of type Y._

Diversity rule:

> _Given a group composed of 80% people of culture X and 20%
people of culture Y, ensure that 50% of the group activities
are of type X and 50% are of type Y._

Problem
-------

A group of people wants to organize activities that are fun to
everyone, at least sometimes, and doesn't leave some members
less satisfied than others over time.

Most voting systems in which exactly one candidate has to be picked
among several candidates tend to satisfy the greatest possible number
of voters. The results obtained with such systems typically never
result in electing a minority candidate.

Even if each group member, in turn, is put in charge of choosing the
activity, the most popular activities will be picked more
frequently. Say 9 members out of 10 prefer action movies and 1 member prefers
documentaries. After 10 movies, the group will have watched 9
action movies and 1 documentary. This is terrible for the member
who likes documentaries, and as a result they're likely
to feel left out and leave the group.

Here we want to disproportionately favor unpopular candidates so that
each group member has a chance to have their favorite candidate
elected, even if only themselves support it. In the movie example, a
good solution would be to alternate action movies and documentaries.

Solution
--------

The basic method consists in two rounds and results in two winners.
Optionally, a third round picks a single winner.

### Round 1

Each group member nominates their favorite candidate from within
a large set of legal candidates. This can be done anonymously, but
it is ensured that anyone who designates a candidate must participate in
the activity that is chosen eventually.
After removing the possible duplicates, this gives us the list of candidates
for round 2.

### Round 2

Group members vote anonymously using
[approval voting](https://en.wikipedia.org/wiki/Approval_voting). The
majority winner, as usual, is the candidate with the maximum number of
votes. Additionally, we designate a minority winner, which is the candidate
with the minimum number of votes. Ties are resolved at random.

### Round 3 (optional)

A coin toss reduces the two finalists to a single
winner.

Example
-------

Voters: Alice, Bob, Carlos, Dave, Eve

### Results from round 1

Alice nominated movie A.  
Bob nominated movie B.  
Carlos nominated movie B.  
Dave nominated movie C.  
Eve nominated movie D.

Deduplicated candidate list: A, B, C, D

### Results from round 2

Votes:

> Alice: A, C  
Bob: B  
Carlos: B, C  
Dave: A, B  
Eve: D

Number of votes for each candidate:

> A: 2  
B: 3  
C: 2  
D: 1

The majority winner is B with 3 votes and the minority winner is D
with 1 vote.

Both B and D are elected, if practical. Otherwise we proceed to round 3.

### Results from round 3

If only one winner is desired, a coin toss determines either B or D as
the final choice.

Discussion
----------

The purpose of choosing both a majority winner and a minority winner is
to encourage voters to cast their vote sincerely. If we'd just keep
the minority winner as a rule, voters could vote only for their
least-favorite candidates. The minority winner elected by such
insincere voters would be the same as the sincere majority winner, as
in regular approval voting.

Note that the minority winner is not necessarily a choice that pleases
nobody. It is in the interest of the voters to nominate candidates that
they like since they have to take part in the activity for their
candidate to be validated. Also, voters can choose to nominate a
low-popularity candidate that themselves enjoy but others don't, in an
attempt for their candidate to become the minority winner. This is an
incentive for unconventional taste or opinions to surface up within
the group.
