# Major Project Deploy New Version

## Introduction

### Key Facts

* A Flatiron "product" aka "curriculum track" exists only in the back-end
  database of Learn. 
* Updates to `learn-co-curriculum` are instantaneously deployed to all batches
  in which the given lesson appears
* Tracks cannot be deleted and thus should be named carefully
* Batches cannot be deleted and thus should be named carefully
* Changes, once propagated, will be put in front of online learners _instantly_

### Summary

Because of the Facts above, we have to move with care when deploying updates to
the `learn-co-curriculum/<repo>`s. We truly have to follow the carpenter's
maxim around measuring twice and cutting once. As an effort to streamline this
inherently **heavy** and **slow** process, we're documenting our steps here.

Admittedly, because this process is so complicated, you should read through the
entire document with your thinking cap on. It's not a mechanical process and
might require some thought / discussion / prep. Don't follow this like a recipe
for macaroni.

### Pre-Process

Sage of sages, Joe Burgess suggests that all work be done in friendly,
malleable interfaces _before_ working with Learn. That is, **spreadsheets** and
**docs** before we start working with the immutable / persnickity interfaces in
Learn.

Generally, when deploying a major revision, we're doing substanital updates,
pruning repositories, adding multiple repositories etc. We will call this **the
CHANGESET**.

### Process

#### Step 0: Communicate the Changeset Purpose / General Character and Motivation

This will be a broad communication. Invested parties are:

* Educational Coaching
* Online Education Team
* Section Leads / Coaches
* In-person Program
* Product Team

Example:

> Shrink the amount of content covered in the online experience of Rails. Obvious errors, cleanup, light improvement pass
Update / correct huge swaths of the React Curriculum. Student feedback for online and in-person has been quite negative and we frequently see students reaching to third parties (Egghead, Treehouse) to backfill our broken content

#### Step 1: Size, Execute, Communicate, and Stage the Change

Here's where a Google Sheet really comes in handy ([example sizing sheet][example]).
You will want to list the changes that are made, size the time to update, track
the status as you move to successful change. Actions, per lesson, fall into the
following buckets:

* **Minor Edit**: Sensibly, probably the most frequent option. On re-read you
  decid that it's _mostly_ OK but you might tighten things up. Create a
  `wip-`-prefixed feature branch and put your changes in there. **DO NOT MERGE
  IT IN YET LEST IT BE INSTANTANEOUSLY AUTO-DEPLOYED**
* **Major Edit**: Quite common when deploying a new revision. Perhaps you're
  combining several lessons into one (edit + delete, effectively). Perhaps
  you're updating the sample code to reflect a new API, etc.  Create a
  `wip-`-prefixed feature branch and put your changes in there. **DO NOT MERGE
  IT IN YET LEST IT BE INSTANTANEOUSLY AUTO-DEPLOYED**
* **Remove**: Note that you plan on removing a lesson. This will mean that you will
  not add it to the new Track. We don't **delete**, we simply decline to continue
  surfacing the material.
* **Addition**: You add a new lesson. Great! **Don't publish** it to an
  existing track.

The idea with all this is, like `git`, to **stage** the diffset (i.e. our
**Changeset**).

#### Step 2: Get the Changeset Reviewed

A major draw on time here, but which is great for inter-team relations and
quality is to invite changesets to be reviewed.

We recommend that changes be reviewed _internally_ and then should be reviewed
_externally_ in two dimensions. The first dimension is to have individuals do a
deep **vertical** QA review. They're going to "play test" the lesson, read the
README material carefully etc. They're making sure each "block" is
well-crafted. This is simliar to unit testing. Just like a battery of unit
tests, if they are all excellent units, we might miss something if we don't
check their _interactions_. This is where a **horizontal** QA review should be
done. Someone should review the "flow" of the entire thing.

We recommend partnering with a section lead via Ian Candy or the Online
Education department. _Ideally_ the section lead for the impacted topic area(s)
will do a "horizontal" review after that section's technical coaches have done
a thorough "vertical" review of all the impacted assets.

#### Step 3: Prepare The Rollout Specification

[Example](https://docs.google.com/document/d/1G18dqLJIN68tDN_NfrS70Zla-LAeHu6Ah1mMq0FGIU4/edit?usp=sharing)

The Curriculum Update Shell / Specification can be used for inspiration on how
to proceed and what communication paths to follow. This can be maintained while
the Changeset is undergoing review.

Our primary buy-in teams are Product (who will need to actually move students
from track-old to track-new) and online education (who will be, ahem, surprised
if students start asking questions about new / altered material than what
they've seen).

#### Step 4: Create the New Track

See ["How Do I Create / Populate a New Track?"](./it-learn-new-track.md)

#### Step 5: Execute

By following the specification you should use Intercom to communicate with
students what the changes are. You should have told them to prepare for the
cutover day / cutover policies. The Product team should be ready to run the
script that does the migration. You should have the data you will need for
metrics ready. When that's set, **execute**!

#### Step 5: Review Performance

Per the specification, reviewing performance in a post-mortem is how we
continue to improve. Be sure to learn and improve!

[example]: https://docs.google.com/spreadsheets/d/1jJNphjt-bxAGfprSdBd2fOrmVcYhWi2jQxnbo4kPabI/edit#gid=1793748468
