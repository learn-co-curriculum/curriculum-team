# Tracks, Batches, and Learn Oh My!

## Introduction

Discussion between Joe Burgess and Steven Harms in an attempt to understand
legacy things that are floating around and also how to use Learn as a power
user.


## learn.co/organizations

* Organization has\_many batches
* Batch belongs\_to one Org
* Membership in an **organization** permits access to a **batch**
* Noteworthy Orgs 
  * **Flatiron Online** is a very important organization: it's the online experience
  * **In Person** is a very important organization: it's the online experience

## Notable Batches In "Flatiron Online"

* abcp: accelerate bootcamp prep
* abp: dead
* **bootcamp-prep**: **Very Important** Our primary marketing tool! It's the
  top of the funnel for people coming into _both_ of our programs!
* cb-\*: Experiments around certificates. Proscribed by regulatory
* cb-gh: GitHub promo
* html-000: Certificate program. Proscribed
* $LANG-apply / -cartoon-collections: As part of the application process
  learners of $LANG are given access to the former for prework and the latter
  for technical judgment
* js-intro-kwk: Kode with Klossy promo, in JS
* welcome-oo1: Basics, dead.

## Notable Batches In "Learn Verified"

* **!!! IMPORTANT !!!**: v-000: **EVERY ONLINE STUDENT**
* g-416: Graduate org

## Notable Batches In "In Person"

We have maaaany batches here. These are the in person students. The naming
algorithm is `/\w+-\d+/` before 2016 and then `/\w+-\d{6}` (year-based)
thereafter.

So an old course is `**f**ront**e**nd-002`. A more recent course is
`web-121117`.

* immersive-alum: "Grad class"
* module-x-alternative: a help to repeaters

## Batches

Recall that organizations have many batches. A batch is a container, but if a
batch contains no deployed repos (since organizations h\_m repos through
tracks, failure to have a track defined triggers the same error state), a
student _in_ that batch will trigger a 500 error.

This is a very sad thing. To fix, visit `learn.co/$USERNAME/admin` and change
your batch to something live.
