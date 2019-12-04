# Your Course Outline

## Introduction

You’re an expert in your topic. You’ve worked professionally in it and might
even have published books or articles about it as well. And that’s why we’re
working with you to develop curriculum! Nevertheless, creating a course for
early-stage beginners is a slightly different undertaking. While you might have
had previous experience, points of reference, etc. to make your non-linear path
through this material possible, Flatiron School students quite likely _do not
have the benefit of that larger context_. As such, it bears value to be
extremely thoughtful when creating learning experiences. The first step in this
translation is to create an outline.

Ultimately, the most difficult challenge is to leap the _empathy gap_ and
remember to think from the perspective of a learner consistently.

## Begin with the End in Mind

When designing your course, think of what you want your student to accomplish.
This should be an activity, not a statement of inferred capability. "Student
understands the box model" is not demonstrable in itself. The goal should be
something that an interviewer would ask an interviewee to perform e.g. "Could
you lay out a page such that it has a sidebar and main body?" We call these
behaviors **Objectives**.

These behaviors are rather broad but indicate familiarity with the technology
in an _integrated_ perspective. CEOs don't wander in and say "Hey could you
configure a database adapter to use MongoDb and asynchronously process jobs
with Sidekiq." Rather they say: "Hey could you build a basic app for a
schemaless datastore that's going to do significant offline processing."

While we're not going to be _as vague_ as a CEO, convert or down-scale the
"project" so that it's comprehensive and challenging enough for a student whose
seeking a junior position using that topic / technique / or technology.  It
should take between 10-20 hours for a student to complete. If you believe the
assignment will exceed those bounds, we can adjust that pacing by adjusting the
starter code.  As an example, when students complete our Sinatra course, they
should be able to build a Twitter clone.

Map out your final project. List the objectives and what students should be
expected to do to build it.

In this final project, students will demonstrate:
1.
2.
3.
4.
etc.

Now that you have your final project's _objectives_, let's expand them into
_units_.

## Creating Your Units

What are the main milestones (both skills and knowledge areas) that students
need to pass to be able to complete this project? You don’t need to get too
specific and there is no set number of milestones.

Oftentimes when you’re figuring out the milestones, you’ll find yourself
working backwards from the end. That’s fine, but once you’re done, list the
milestones in the sequential order in which you think they should be covered.

Now change milestones to units. Congratulations! You’ve just broken your large
topic into much more manageable units.

Here are the sample Milestones/Units in our Ruby on Rails Curriculum:

Section    | Topic
-----------|-------------------------------------------
1          | Intro to Rails and What it Is
2          | Rails Models Basics
3          | REST
4          | ActionView
5          | CRUD with Rails
6          | Validations and Forms
7          | Associations and Rails
8          | Refactoring with Partials
9          | Refactoring with Helpers and Private Methods
10         | Routes and Resources
11         | Authentication
12         | Asset Pipeline
13         | Popular Gems
14         | Consuming APIs
15         | Building APIs

Units can vary in length. We don’t have a standard for how many lessons belong
in a unit since we understand that some units take less time to cover while
others might be more difficult and need more lessons devoted to them.

## Breaking Your Units Down into Lessons

Let’s take a closer look at the **unit**. What are the specific things students
need to be able to do at the end of a unit? And what’s your plan for how they
should get there? In other words, what are the actions, skills, and knowledge
that they need? Wherever possible, focus on the actions that students are
taking and not the knowledge itself. Always remember that learning is about
doing, and not about content.

For each of your units, list these capabilities in sequential order.

Congratulations again! You now have a rough outline of the **lessons** that
your **unit** will include. Sometimes, one action or skill can be its own
lesson. Other times, it might need to be several lessons. Or in other cases,
you can combine multiple actions and skills into a single lesson. Again, you
know your topic better than anyone else so use your judgement and shape those
expected student actions, skills, and knowledge into lessons.  Try not to shove
a wall of text in students' faces so that they have enough short "wins" such
that they want to keep going. On the other hand having lessons be 2 sentences
with a wall of white space surrounding it is not the right feeling either.

Also remember that when we talk about lessons, we mean both [Readmes][] and
[Labs][].  Our typical flow is that **every Readme should immediately be
followed by a Coding Lab** so that a student can immediately apply the skills
they’ve just learned. Towards the end of each unit, we also also want to have
more difficult labs that encompass multiple concepts (some of which can come
from previous units) and require more of students.

Rework your list of lessons from above to include the breakdown of Readmes and
Labs in your unit.

Sample Rails Unit Breakdown for Association in Rails:

Content    | Topic
-----------|-------------------------------------------
Readme     | Association Recap
Lab        | Rails Join the Fun
Lab        | Flatiron BNB Associations
Lab        | Flatiron BNB Methods
Readme     | Displaying Association Data
Lab        | Displaying Association Data Lab
Readme     | Forms and Basic Associations
Lab        | Forms and Basic Associations Lab
Readme     | Basic Nested Forms
Lab        | Basic Nested Forms Lab
Readme     | Displaying Has Many Through
Lab        | Displaying Has Many Through Lab
Readme     | Has Many Through in Forms
Lab        | Has Many Through in Forms Lab
Lab        | Rails Blog Complex Nested Forms
Lab        | Rails Blog Assications and Validations Lab
Lab        | Rails Pollywog Ranch Lab

And there you go! Now you have a solid high level outline of your course. This
will go through several iterations. You might, in your process, learn that a
unit needs to be broken down even further or that units were missing and / or
there were lessons you hadn’t considered. That’s totally fine and expected!
Part of the reason technologists gain so much from writing curriculum is
precisely because of these discoveries!

## ADVANCED: Continuity between Lessons

Experienced teachers have the benefit of looking back on their learning journey
from a place of hindsight. Consequently they can see how disparate lesson A
teaches technique A in domain D1, lesson B teaches technique B in domain D2,
and that lesson C requires you to use technique A and technique B in domain D3.

Students don't have this capability in a mature sense. Consequently, when you
have the ability to string multiple lessons across units or even topics to make
the building cohesive and enriching layer by layer, you're writing an even more
impactful curriculum.

When we cover Ruby, a lot of our labs cover a music playlist app domain or more
simply, a lot of labs will deal with the domain topic of students and classes.
These labs will build cumulatively across various units and give a sense of
consistency that’s important for online learners.

That said, if everything is Yet another Todo list challenge or Yet another
Playlist, interest can wane. At a natural closing point to an arc you might
consider changing the domain to keep the students engaged. Try to be empathetic
to their experience and let the natural desire for narrative resolution e.g.
"But what if we don't have JavaScript enabled...?" pull students into the next
lesson.

## Questions to Keep Asking Yourself

As you’re reviewing your outline, think about the following questions:

* Does the course have a logical, smooth progression for students?
* Do your units and lessons give a complete sense of the skills that a student will need to actually work as a developer in the topic?
* How can you ensure that the flow of your Readmes and Labs keep students engaged
  and challenged? For example, with more difficult concepts or units, how can you
  keep a student’s momentum going without making the labs and information
  presented too easy?

[Readmes]: ./glossary.md#readme
[Labs]: ./glossary.md#lab
