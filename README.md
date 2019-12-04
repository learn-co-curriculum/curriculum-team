# Flatiron Software Engineering Curriculum Team

This repo serves as a source of information and tools for managing the FIS
software engineering curriculum.

You can reach us in slack at #se-curriculum-questions - we're always interested in hearing from you!

## Empowerment

We want to empower the team to

* understand our curriculum and how our curriculum systems work
* make changes and contributions safely and confidently
* be heard about the issues they see and experience
* have visibility into the work that we are doing on our curriculum (and why!)

## Communicating with us

* slack for open discussion, raising issues, letting us know that there are prs or issues you've opened
* github issues and prs for particular labs
* our issue scripts for tracking all the github issues over time, raw input to our work queue
* looker dashboard for work priorization / raw input for insight generation
* on github, curriculum-team and education-team-wiki as documentation homes

## Meetings

* regular meetings for feedback (about biweekly or so)
* ad hoc meetings for digging into particular issues
* a monthly introduction / training meeting to tell whoever wants to know who we are, how our workflows work, and how to work with us

## What everyone needs to know about the curriculum system

git and github
batches, tracks, lessons
learn-co-curriculum and learn-co-students
readmes, labs, and quizzes
linters and checkers

## What everyone needs to know about how curriculum team works

github issues (we pay attention, we will review your issues and prs)
looker dashboard
slack
we're small, and the work is mighty

## What to do when something goes wrong

### There's an urgent curriculum issue

Slack #se-curriculum-questions, and tag `@rob` and `@maxwell benton`.

### There's an urgent technical issue

Slack #product-questions

### There's a non-urgent issue with a particular lab or lesson

Open a github issue on the canonical (learn-co-curriculum) version of the lab. If you know how to fix the issue, feel free to make a pr.

We have tools to pull all the github issues from our active tracks daily, and we will eventually get to your issue. If you'd like to bring it to our attention faster, feel free to mention it in slack in #se-curriculum-questions.

#### Writing a helpful issue

When writing a technical report imagine that the reader has 0 context available
to them. They need the facts in front of them (or perhaps linked to a neutral
source). They don't know what you know; they are technically capable and have
all the appropriate access _but_ they need to have all the facts at hand.

### I have feedback about the curriculum


### I want to contribute to the curriculum

#### Finding issues

If you're looking for some work to do, here's how!

1. Navigate to http://learn.co/curriculum
2. Choose the track you're interested in (likely "Full Stack Web Development
   V#")
3. Change top-level headings to "Track Health"
4. Expand a Unit ("ORMs and ActiveRecord") with the disclosure triangle
5. Expand a Sub-Unit ("ActiveRecord") with the disclosure triangle
6. Click on a Topic ("Intro to Rake")
7. You will see PRs and Issues. These are where you can start work, validate
   PRs, and groom the entity.


### Curricular Approach

* [Curriculum Style Guide](./style_guide.md)
* [Curriculum Philosophy and Flatiron School Culture](./philo_and_culture.md)

### Curriculum Issues / "Bugs"

* [Finding Issues: "What Should I Fix?"](./finding-issues.md)
* [How to Resolve a Specific Issue Update a README/ Merges / Rebases /
  etc.](./updating-lessons-process.md)
* [Boilerplate Templates](./saved-replies)

### Triage Process for Support-Debt

When you're not actually _fixing_ an issue, but are trying to size work or to
help us tear down any legacy Support-Debt, this is the process to use.

* [Issue-Handling Process](./issue-handling-process.md)

### Curriculum IT / Deployment / Student Experience

* [Tracks, Batches, Organizations and Learn (Oh My!)][tbol]
* [Opening IT / Deployment / Engineering Issues](./it-reporting.md)
* ["I Updated a Lesson in Curriculum but it's not going to
  students"](./it-dep-1.md)
* ["How Can I See What This Look Like In Learn?"](./it-learn-display.md)
* ["How Can I See What Software is in Learn IDE Images?"](./learn-images.md)
* [How will Learn present my lesson?](./how_will_learn_present_my_repo.md)
* ["How Can I See Which Batches Have a Lesson?"](./it-learn-batch-lesson.md)
* ["I see PRs with util--hide paragraphs, what's that?"](./github-backlinks.md)
* ["How Do I Undeploy Something?"](./it-learn-undeploy.md)
* ["How Can I Test What Something Will Look Like In a
  Track?"](./testing_track.md)
* ["How Do I Create a New Track?"](./it-learn-new-track.md)

### Curriculum Pipeline / Review Process

_Extremely under construction as of 2017-12-28_

* ["How Do I Write a Quiz"](./quizzes.md)
* [Updating Lessons Process](./updating-lessons-process.md)
* [Review Status Types](./pipeline-review_status_types.md)
* [Review Example](./review-example.md)
* [Deprecated Labs](./deprecated-labs.md)
* [Duplicated Labs](./duplicated-labs.md)
* [Deleting Labs](./deleting-labs.md)
* ["What the heck is this data-visibility thing at the bottom of
  READMES?"](./data-vis-backlink.md)
* ["Mass updates to curriculum - HOW?"](./how_i_did_a_mass_update.md)

### Deploying Major Releases of Curriculum

Occasionally re release new "major versions" of the Curriculum. Here is the
process for that. It's a big deal and requires careful coordination with
Product, Admissions, Section Leads. Read and _consider_ the following, it's not
a rote play-book.

* [MAJOR THING: Deploying New Major Versions of Curriculum][newver-proc]

### Curriculum Authoring

* [Curriculum Creation: Mechanics and
  Systems](./creation-mechanics_and_systems.md)
* [Curriculum Creation: Content and Writing](./creation-content_and_writing.md)
  * [Writing Stages](./creation-content-writing-stages.md)
    * [Rough Draft Checklist](./creation-content-rough-draft-checklist.md)
    * [Final Draft Checklist](./creation-content-final-draft-checklist.md)
  * READMEs (i.e. "the textbook")
    * [README Creation: Writing
      Overviews](./creation-content-focus-overviews.md)
    * [README Creation: Writing Learning
      Objectives](./creation-content-focus-learning_objectives.md)
    * [README Creation: Writing the
      README](./creation-content-focus-writing_readme.md)
    * [README template](./creation-content-focus-readme_template.md)
  * Labs: ("Code-Alongs" and "Test-Driven Labs")
    * [Lab Creation](./creation-lab-materials.md)
    * [Lab Template](./lab-template.md)
    * [Lab Checklist](./lab-checklist.md)
    * [JavaScript Lab Testing Stack](./javascript-lab-testing-stack.md)
* [A Fine-Grain Edit of a
  README](https://github.com/learn-co-curriculum/js-async-fetch-readme/pull/3)
* Follow the [GitHub Ruby Style
  Guide](https://github.com/bbatsov/ruby-style-guide)
* [How to Add Images to Lessons](./adding-images-to-lessons.md)

## Resources

* [Glossary](./glossary.md)

## Peer Resources

* [Technical Coaches: Reporting Painful Issues](./tc-painful-issues.md)

[newver-proc]: ./major_project_deploy_new_version.md [path]:
./curriculum-as-tcf-career-path.md [tbol]: ./tracks-batches-orgs-learn.md

