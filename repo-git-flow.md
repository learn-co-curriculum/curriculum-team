# Repository Git Workflow

Flatiron has a unique use of Git: we keep parallel branches (master and solution) that have no intention of ever being merged. Ideally, the `solution` branch is a perfect superset of `master`, which may have a commit history that looks like this:



```
        sC  (solution)
       /
mA---mB  (master)
```
There are two common ways we update repositories when the existing commit history is sound:
1. Make a change that should _only_ be present in the `solution` branch, (i.e. updating an absent/outdated solution function in a solution file)
2. Make a change that should be present in both the `master` and `solution` branch, (i.e. updating a ReadMe.md, dependency version, etc.)
------

### 1. Make a change that should _only_ be present in `solution`:

* Make a branch, i.e. `wip-solution-update`
* Only make changes to the _actual_ solution code
* **NOTE**: if you find yourself updating the ReadMe as what it requests pertains to the solution, updating a dependency that your solution, etc. then stop, make those changes following the flow of `2.` below, and then follow this solution flow

```
           wsD---wsE---wsF  (wip-solution)
          /              \
        sC----------------sG
       /
mA---mB  
```
After asserting that everything is working locally, we would PR on our remote:
* `[solution] <-- [wip-solution]`



-------

### 2. Make a change that should be present in both `master` and `solution`

* checkout a `wip-master-<feature>` branch off of `master`
* checkout a `wip-solution-<feature>` branch off of `solution`
* make the common changes that should be present in both `master` and `solution` in your `wip-master-<feature>` branch
* merge `wip-master-<feature>` into `wip-solution-<feature>`
* assert that only the changes you want carried over were applied (via git log or before the merge)
* push both and make pull requests for each respectively

```
           wsE--------wsG  PR: [wip-solution] <-- [wip-master]
          /          /
        sC          /
       /           /
mA---mB           /
       \         /
        wmD---wmF  (wip-master)
```
After asserting that everything is working locally, we would PR on our remotes:
* `[master] <-- [wip-master]`
* `[solution] <-- [wip-solution]`

-----

## Something goes wrong with merging/solutions are being overwritten:

Some repositories have a commit history that will cause problems. While there can be many reasons this occurs, following is a possible scenario, in which commits `mC` & `mD` make conflicting changes to a solution file that was filled out in `sE` & `sF`:
```
PROBLEM!
                wsH------------wsJ  PR: [wip-solution] <-- [wip-master]
               /               /
        sE---sF               /
       /                     /
mA---mB---mC---mD           /  
                 \         /
                  wmG---wmI                  
```
What we wanted to happen is for the changes made in `wmG` & `wmI` to be incorporated into `solution`. Instead, we uncovered a rats nest of disjointed commits causing conflicts.

In this scenario, my boy Linus Torvald's Git would rightfully search back for the 'common ancestor' commit between `wip-master` and `wip-solution`. Following, we would experience pain when changes in commits `mC` & `mD` blow up being compared against `sE` & `sF`.

We are presented with two options:
* `cherry-pick` <-- not ideal
* `rebase` <-- can fix the problem

### `cherry-pick`

If we weren't to go back and fix the original problem, gitting everything back on track, we could use [`cherry-pick`][cherry-pick] to only apply `wmG` & `wmI` to `wip-solution`. In this case the command (while co'd in `wip-solution` branch) may look like:
`git cherry-pick origin/master..origin/wip-master`

Which is saying: "Ples, Linus, give me the commits from (`md`, `wmI`] and apply them on top of `wsJ`". The result may look like this:
```
                wsH---wsJ---wmG---wmI
               /             
        sE---sF             
       /                   
mA---mB---mC---mD           
                 \       
                  wmG---wmI
```

### `rebase`

If we were to go back and fix the issue in the 'PROBLEM!' tree above, so that we can resume our normal merge git flow, one option is [`rebase`][rebase]. Rebase will take a branches commits, from the point it diverged with another, and play them on the head of another. In this case, we could `git rebase master solution`, which would re-assert `solution` as a superset of `master`:

```
                  sE---sF             
                 /                   
mA---mB---mC---mD           
```

Now we are free to resume out normal merge git flow described at the beginning of this document.

---

Understanding that our Git flow is non-traditional (two parallel branches with no intent to consolidate), and that our flow has not been heavily controlled, we will experience legacy issues with our repositories.


[cherry-pick]: https://git-scm.com/docs/git-cherry-pick
[rebase]: https://git-scm.com/docs/git-rebase
