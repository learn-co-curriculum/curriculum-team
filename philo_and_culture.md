# Philosophy and Culture

## Introduction

The goal here is to describe some of the values and beliefs which define the
Flatiron School culture and which influence the curricular voice. As the
organization grows larger, we should be aligned in the style and voice we adopt
as writers.

## Qualities

### Back From The Bleeding Edge, But Not Too Far

We are on the critical-mass bubble bounded by speed of product delivery,
market-relevance, **and** approachability.

We _prefer_ concepts to _implementations_

We will _shy away_ from the ragged edge

We will _follow_ the ragged edge

We will trade market-relevance for speed of delivery and approachability

### Irreverent

Our voice is irreverent. While we are never _offensive_, we are irreverent. We
think it's just as interesting to name the turtles in our [LOGO][] clone
Rihanna, Beyonc&eacute;, and W. Axl Tortuga.

### Open / Inclusive / Accessible

We are in a scaling phase. We must, therefore, make sure that our examples,
sample code, joke breaks, .gifs, etc. appeal to audiences larger than New York
City, larger than the East Coast, larger than the United States. Our amibitions
are worldwide, our examples must be as well. Inside knowledge (the NYC grid,
the rules of cricket, etc.) should be recognized as being exclusionary.
Worldwide media juggernauts as example are permissible, but must be used
sparingly and with care lest the curriculum grow treacly or over-precious
(there's only so many Ron, Hermione, and Harry jokes to go around).

## Pedagogical Approach

We want to begin in the middle, jump to the bottom, spiral upward back to
the middle, and then launch upward. It is fine, in early documents, to
give rules or rote practices. Subtleties and edge cases can be saved for later.

As developers we are loath to say anything online which means we'll have a
Twitter rage-fight about subtleties of something we said. That impulse should
not limit your providing rules to beginners. They are paying for our heuristics.

## Embrace Doing it by Hand

"At the end, we're not teaching students to use an API, we're teaching them
...to think as an engineer." &mdash; Jason Decker

The classical example here is that we would ask students to write their own
ORM. They should come to appreciate the way it abstracts out the pluralized
nouns in their SQL queries, but also understand how brittle it is. When
introducing powerful APIs e.g. ActiveRecord we want to explain not _how_ to
use it exclusively, but also cover the _why_ it exists and the _what_ things
like AR (i.e. _any_ ORM) must do.

If, when we reveal the power tool, students feel upset that we made them
"do it by hand," then we succeeded.

## Do Work Where Teaching Makes a Difference

There are many topics to teach. In an ideal world without the bound of time, we
could make every atomic idea clear and build up an air-tight education. But
education functions within time and, as a result, requires us to invest more
and less time unevenly.

**There very well may be topics that are difficult but that are not fully
explored in the curriculum**. As a statement on orientation on how we evaluate
these decisions we provide the following:

1. Is the idea well explored. Active Record's helper methods that come as a
   result from `has_many` or `belongs_to` are [exhaustive][ex]. A _reference_
   here should be sufficient. An extensive README **and** a lab is overkill. A
   brief README or a reference within a larger project-based lab should be
   sufficient
2. Is the idea used, but has a lot of bad instruction around it? Looking at the
   case of the Apple CoreData platform. The documentation is impeterable and
   most resources a student would find would *increase* confusion, not reduce
   it. In this case, as a vaccine, it makes sense for us to teach it in-house
   so as to keep the eyballs in-house and not getting bad information.


[LOGO]: https://en.wikipedia.org/wiki/Logo_(programming_language)
[ex]: http://guides.rubyonrails.org/association_basics.html#detailed-association-reference
