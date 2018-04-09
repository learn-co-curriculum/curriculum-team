# Introduction

**Tracks** define the lessons that are to be provided as part of the experience
of the students in a **batch**. Batches are the join model between students
and a given track.

Batches are assigned tracks that they "present" to their students. Thus a given
batch can present "foo-bar" as well as "full stack web development 4" and
"embedded python idea"

# Testing Track

First: **tracks cannot be destroyed** Therefore: **we have a test track**
if you need it **however** you should not count on this to be anything but
ephemeral; data might be lost, etc.

Most often, thus far, practice has shown you will generally **not** need
a test track. You will either be deploying an existing track, a 
monthballed track, or a new track that has not been associated with any
batches (yet). We'll talk more about batches below.

**Track Name**: [curriculum-livetrack-test][test]

Also: **you should break the binding between the track to your test batch when
you are done so someone else can use this track**

## Tracks

Tracks need to have **2 levels of depth** before you start adding lessons.

```text
curriculum-livetrack-test
  Ruby
    Derping in Ruby
      Lesson One
```

By selecting the "divider" with a circle in it below one heading you can
add a child. Thus by clicking on `curriculum-livetrack-test`'s divider
you can add a sub-container. By clicking on that container you can add
your second (required!) sub-container.

By clicking on that "grandchild" sub-container you can choose to ADD or 
FIND a lesson.

FIND means "pull in from somewhere else" (like another track) ADD means
"I'm going to give you a repository in the `learn-co-curiculum` org."

## Find Your Batch

Try using [sgharms test webdev fund](https://learn.co/batches/539).

If you need to create a batch beyond this, let's talk about it in-channel.

For documentation's purposes, if you needed to create a batch, here's how
you'd do it:

1. Visit: https://learn.co/batches
2. For testing purposes you want to create the batch below a nesting level
   that makes sense. `Curriculum (Internal)` is where `sgharms-test-webdev-fund`
   lives. You might need to create a track underneath another heading.
3. Select, from the left bar, the container that's most appropriate. The Learn
   Admin UX is a bit..unreliable, so this step might not be necessary but, as
   you'll see in subsequent steps, you can't specify the container elsewhere,
   so this might be a required step. Sorry for the cargo-culting.
4. Click "+ Batches" at the top
5. Here you can create your new batch. You *might* think that you could specify
   the container (per 3, above) but it doesn't seem like it. So, that's why 
   step 3 exists. Specify your admins and specify the default track that the
   batch is to be populated with.
6. Viol&agrave;! You have a batch!

## Add the Test Track as the Track to your Test Batch

If you need to create your own batch, add `curriculum-livetrack-test` as a
track that's assigned to it. Alternatively, if you're working on a track
that's _not_ ephemeral, deploy it to the `sgharms-test-webdev-fund` batch.


[test]: https://learn.co/curriculum/tracks/32272
