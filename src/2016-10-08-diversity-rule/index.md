Diversity rule: a voting system that accommodates minorities
============================================================

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
to stop joining activities or leave the group altogether.

Here we want to disproportionately favor unpopular candidates so that
each group member has a chance to have their favorite candidate
elected, even if only themselves support it. In the movie example, a
good solution would be to alternate action movies and documentaries.

Solution
--------

Round 1: Each group member designates their favorite candidate among
a large set of legal candidates. This can be done anonymously, but
it is ensured that anyone who designates a candidate must participate in
the activity that is chosen eventually.
After removing the possible duplicates, this gives us the list of candidates
for round 2.

Round 2: Group members vote anonymously using
[approval voting](https://en.wikipedia.org/wiki/Approval_voting). The
winner, as usual, is the candidate with the maximum number of points.
Additionally, we designate a loser, which is the candidate with the
minimum number of points. Ties are resolved at random.

Round 3: A coin toss determines whether the chosen candidate is the
winner or the loser from round 2.

The purpose of choosing randomly between the winner and the loser is
to encourage voters to cast their vote sincerely. If we'd just pick
the loser, voters could vote for their least-favorite candidates,
making the loser a winner and vice-versa.

Example
-------

Voters: Alice, Bob, Carlos, Dave, Eve

### Results from round 1

Alice chose movie A.

Bob chose movie B.

Carlos chose movie B.

Dave chose movie C.

Eve chose movie D.

Candidate list: A, B, C, D

### Results from round 2

Alice: A, C

Bob: B

Carlos: B, C

Dave: A, B

Eve: D

A: 2

B: 3

C: 2

D: 1

The winner is B with 3 votes and the loser is D with 1 vote.

### Results from round 3

A coin toss determines either B or D as the final choice.
