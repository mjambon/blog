Product ideas
=============

This is a collection of ideas of products and features that I would
love to use. So if you could build them for me that would be
awesome &#9786; Thanks.

Normalized performance scoring for race results
-----------------------------------------------

Trail races and cycling races are not held on standard courses. As a
result, it is hard to know how well a given athlete did in a
particular event, especially in small or local races with few famous
athletes that could be used as a reference.

What I propose is establishing a normalized performance score, which would
be calculated within a given sport, for each
athlete over a whole season as well as for each event.

This would have the following benefits:

* Accurate prediction of rankings before the race, even if none of the
  competitors ever raced against each other.
* Additionally, for annual events on the same course,
  accurate time predictions can be made. These can serve as time goals
  for the entrants.
* After each race, the competitor would know how well they performed
  relative to their recent performances.
* No need for elites to join races against other elites in order to
  track their progress throughout the year.

The normalized score can be expressed as a pace, a speed or a finish
time on a well-known course that comes with little variability from
one year to another. For distance running, such reference could be the
Berlin marathon. Trail runners could use this road race as well, or
some trail race where the weather is the same from one year to
another. Or it could be simply "last year's Western States 100",
knowing that this year's times would be slighly different because
of the weather.

A possible algorithm could use an iterative approach over a large set
of race results:

1. The initial season's score of each athlete is
initialized with the same value for everyone.
2. For each race in the season (e.g. last 12 months), the race's score of
each athlete is computed from their season's score and from the
results of the other competitors. At least in
the first iteration, this increases the race's score of
the top finishers and lowers the score of the bottom finishers.
3. For each athlete, recompute the season's average score from each
race's score. The bottom performances of the athlete (e.g. bottom 25%)
can be ignored as a means of eliminating bad days on which the athlete
finished but got accidentally delayed (athlete fell, got lost, had
stomach issues, etc.).
4. Go to 2 until the scores no longer change significantly.

Applicability: [Ultrasignup](https://ultrasignup.com) for example
could use this. A unique identifier of each athlete
and a large number of races results for a given sport is all that's
needed.

Housekeeping robot
------------------

A robot that uses machine vision to identify objects within found in
the household, puts them back where they should be, and cleans the
surfaces that should be cleaned. This robot would have a way to pick
up a variety of objects. The robot would be trained by its human
operator to do the following:

* identify trash
* identify non-trash and where these objects should be put back
* identify items that may not be touched
* identify types of surfaces that need cleaning
* identify power sockets and plug into them for maximum
  vacuuming/cleaning power

We're hoping such technology will be available by 2020 and will be
affordable, since it looks about as hard as self-driving cars.

Algorithmic anti-harassment for online social networks
------------------------------------------------------

This is a problem for Twitter where the default is that anyone can
talk to and harass anyone, and for Facebook where the default is that
people need to be made friends explicitly. Facebook offers manual
settings to let anyone comment on certain posts, but it's done
manually and ends up being as problematic as Twitter's full openness.

We want to:

* allow only reasonable people to react to a person's posts,
* not have to give them permission manually,
* automatically prevent abusive users from reacting,
* raise the threshold for reacting to a post as the post becomes
  popular and the number of reactions increases.

Whether a user may comment on someone's post could be influenced by:

* Familiarity between these users, i.e. how much communication
  happened between them in the past.
* Cordiality: reacting user being rarely blocked.
* Quality: reacting user's reactions being often liked by original posters.
* Indirect trust: original poster likes people who like the reacting user.
* Traffic: not too many people have reacted to the post already.

Why doesn't Twitter do this already as of 2016? Beats me.
