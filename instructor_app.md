# The Instructor App

## Introduction

A guide to installing the Instructor App, a Rails application that hosts many
data analytics functions.

## Pre-Requisites

### GitHub Group

You need access to the `flatiron-labs` group. This is controlled by `#labs-team`.
Use this Slack channel and mention @Patrick Veverka to request enrollment. Specify
that you're part of the Curriculum team looking to work on the Intructor app.

### Production Instructor App Enrollment

Ensure that you've used the production app: https://instruction.learn.co/

If you need access, contact `@Ian Candy` on Slack. Specify
that you're part of the Curriculum team looking to work on the Intructor app.

## Repository

https://github.com/flatiron-labs/instructor-app-v2

### Local Setup Documentation:

In: `docs/LOCAL_DEVELOPMENT_SETUP.md` of the repo.

## Installation

Curriculum has updated the README based on our experience installing the
application.

## Curriculum Concerns

It's a Rails app, but we're being "mounted" as a separate application. As such
you'll find that `app/{controllers,views,models}/curriculum_application/` holds
our domain logic.

## Updates

We might want to update this app from time-to-time: get a new datum, calculate
something, etc. Here's the procedure as vetted by Jason Decker in concert with
Luke Ghenco:

1. Create an issue in the App Trello board: https://trello.com/b/I245H3lq/instructional-product
2. Put that issue in the Icebox swim-lane or....
3. Begin work and move the card to "In Progress" swimlane
4. Finish the work and push up a feature branch
5. Move your card to the "Ready for QA" lane
6. Wait for approval from a maintainer
7. Merge upon receipt of approval
8. If your code is clean past CI it will merge automatically; if not, fix it
9. Once it's merged it should auto-deploy. At that point, move the card to
   "Launched this Week."

