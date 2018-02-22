# How Do I Undeploy Something?

Consider that students exist in batches.
Batches associate students to tracks

Tracks are like a menu: they're what's available to a collection of diners
(a batch).

In order to remove a lesson, you need to know the *batch* which has it.

We pushed a horribly broken lesson "Bonus - Collections Practice 2." The
reporter was in batch `nyc-web-031218`. The github repository is
`collections_practice_vol_2`.

To remove:

1. Visit learn.co/curriculum
2. Search for `collections_practice_vol_2`
3. Expand the disclosure triangle
4. Find the applicable track. In this case the strongest candidate is **Web
   Development Funamentals**
5. Return to learn.co/curriculum
6. Find that track
7. Expand the breadcrumbs as found in 4, above
8. **SELECT THE CORRECT BATCH FROM THE DROP-DOWN.** In this case
   `nyc-web-031218`
9. Click the checkbox for "Bonus - Collections Practice 2"
10. Click deploy at the bottom
11. Wait for the ajax spinner to confirm it completed the undeployment
12. Additionally, visit the `learn-co-curriculum/collections_practice_vol_2`
    page and close all the issues as we're no longer going to support it. Use a
    message like "closing due to lesson retirement."

Done!

If you wanted to remove **all** presences of this deployed lesson from all
batches _and_ from the track, you'd have to clean up all the dependencies (a
manual process :-/). As such you'd implement the above process for every bach.
After it was done, you could then go to the left-hand menu, expand out the
lesson e.g. "Bonus - Collections Practice 2" and click the "Trash" icon and
remove it.
