# Creating a Lab

You've written a phenomenal lesson, and now it's time to test your students to
see how much they learned. A lab is a time for students to put the skills
they've learned to the test.

## Purpose of a Lab

The purpose of a lab is for students to practice what is taught in a lecture or
through a reading. Students become developers when they are working on labs.

Because of this, we want our labs to be challenging but applicable. Students
should feel pushed intellectually with each lab, but not overwhelmed.

For this reason, our overall curriculum should include labs of varying degrees
of difficulty. For important Units or Lessons, we should make sure that there
are Introductory, Intermediate, and Advanced labs. This also creates
flexibility on a semester-by-semester, or even student-by-student basis: we can
deploy lab(s) applicable for individual learning paces.

## Naming Convention

Naming convention is helpful for instructors to at a glance know what a lab is
covering and if it should be assigned. Labs should be named to correspond with
the Topics defined on Learn. It should at the very least begin with the name of
the Topic. The last word should be `lab` (to distinguish it from a Readme). For
example:

* "Rails-Blog-Nested-Resources-lab"
* "SQL-Library-lab"
* "Sinatra-Nested-Forms-lab"
* "js-oo-task-list-lab"

Again, notice that all the examples above end with `lab`. This is important
because it helps us distinguish a lab from a lesson just by the repository
name.

## Content

Ideally, a lab should focus on one Learn-specified Lesson. Of course, many of our labs
require students to practice more than one skill, especially in more complex
full-application labs. But most effective labs are granular, because they allow
a student to hone in and focus on one skill.

Try to keep your labs focused to one lesson. For Rails and more complex topics,
our labs should be granular, with each iteration building off the preceding
one. An example of this is the Rails Blog Domain, which is comprised of the
following labs, all of which are iterations on top of the preceding lab:

1. Rails Blog Scaffold
2. Rails Blog Associations Validations
3. Rails Blog Nested Forms
4. Rails Blog Nested Resources
5. Rails Blog Sessions
6. Rails Blog Omniauth
7. Rails Blog Asset Pipeline

## Readme

Your lab's Readme (not to be confused with a README as in a "textbook-style
document") is the first point of reference about your lab to a student. And, if
you're making a tutorial or resource that isn't a full lab, your README is
everything.

Your README sets the student up for what scanario or context in which they're
building. It's important to connect the lab with real world context or actual
situations. Context provides a reason for a student to struggle. Once they know
the purpose of the skill they're learning, they can become motivated by the
things they can build with that skill.

If you're teaching methods, talk about a situation in which you'd want the same
action to take place over and over again - like Facebook sending happy birthday
emails to every user on their birthday.

If you're teaching arrays, an example where you'd want to store a group of
objects and do the same action to each item in that group.

## Instructions

**Lab instructions should err on the side of overly-specific**. The worst thing
in the world is to have a student confused and struggling with material because
the instructions are unclear. **We would rather give the student more
instructions and risk annoyance over too much reading, than too little**. If
you need a student to create a database table, tell them exactly what columns
the table should have. They shouldn't have to guess. It's not giving it away to
tell them what to build; they still have to figure out **how** to build it.

Instructions should be written in order of how to solve the problem. Really big
labs or labs that cover complex topics can feel really overwhelming. Students
learn the patterns of how to approach larger projects by reading instructions
in the order in which they should tackle the problem.

## Solution Branch

Every lab should have a `solution` branch. Your `solution` branch should have a
clean, understandable solution that other instructors can refer to for lab
reviews and helping students. Sometimes, students might want the solution
pushed up to them after they've completed the lab, so it's important that the
solution is straightforward.

## Regular Lab vs. Stretch Lab

A normal lab should test the student on exactly what they just learned in the
lesson or code along. Every piece to the solution should be able to be
referenced in the previous lesson. They only lines of code they should have to
write are the skills they should be practicing.

A stretch lab is a lab that requires students to put some of the pieces
together themselves. The point is that a student should be far removed from
their comfort zone during a stretch lab. We should be stretching the boundaries
of their learning. Several components of a stretch lab:

* Provide less instruction
* Tests only cover the big picture and not each individual line of code they have to write
* Provide less starter code.
* Require a student to Google some information to complete the lab
* Incorporate past skills a student has learned to pass all the tests

## How to Approach Building a Lab

Sometimes it can feel daunting to approach building a lab. There are many ways to do it, none more correct that the other.

If you need a little help getting started, we recommend you start at the end and work your way forward. Start by build the solution you want your students to create in the lab, then build the tests that test the skills you want the lab to practice. From there, write your Readme with clearly stated objectives and instructions.

All work should be done on a `work-in-progress` branch. **Remember** Include a `solution` branch.

## Extras

We always want to make sure our students are having fun, and a lot of that can be achieved through the tone of the lab. Here are some ways to achieve that:

* The lab topic or intro can be humorous
* A good gif
