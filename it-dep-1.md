# I Updated a Lesson in Curriculum but it's not going to students

## PROBLEM

You received an Issue, fixed it, but it's not showing up as changed.

## SHORT SOLUTION

You need to `--force` push the learn-co-curriculum repo to the student org.

## LONG SOLUTION

Deployment from `learn-co-curriculum` to the student org is dependent on `git`.
The downstream (`learn-co-students`) org requires a clean history to the
upstream (`learn-co-curriculum`) org. If a change has been introduced into the
downstream repo, it will mean the upstream can't push updates to it (diverged
merge history). Therefore, we've got to get them on the same page.

## PROCESS

1. Identify the `learn-co-students` repo e.g. `learn-co-students/...repo...readme-bootcamp-prep-000`
2. Identify the `learn-co-curriculum` repo e.g. `learn-co-curriculum/...repo...readme-bootcamp-prep-000`
3. Fix the issue in the `learn-co-curriculum` repo in a `wip-*` issue branch
4. Get the solution reviewed
5. Merge the branch into `master`

At this point, distribution simply *should* work. However, in this case it is
not. Consequently....

**NOTE**: Ensure that you are an owner in both `learn-co-curriculum` and
`learn-co-students`. Ensure both of your git remote URLS are `git://` versus
`http://`.

_On the local system_

1. _Assume that `origin` is the `learn-co-curriculum` repository_
1. Add the `learn-co-students` repo as a remote
2. `git checkout master`: this should be tracking the `learn-co-curriculum/master` branch
3. `git remote add student `learn-co-curriculum/...repo...readme-bootcamp-prep-000`
4. Use the GitHub interface to "unprotect" `master`
5. `git push student master:master --force`
6. Use the GitHub interface to "protect" `master`

## EXAMPLE

1. Annette reports numerous issues per: `https://learn.co/handraise\_questions/99313`
2. Steven clicks the GitHub icon to the student repo:
   https://github.com/learn-co-students/selecting-single-elements-readme-bootcamp-prep-000
3. Steven stores this repo's git URL:
   git@github.com:learn-co-students/selecting-single-elements-readme-bootcamp-prep-000.git
4. Steven hacks the URL to be the `learn-co-curriculum` version:
   https://github.com/learn-co-curriculum/selecting-single-elements-readme
5. Steven clones this repo:
   git@github.com:learn-co-curriculum/selecting-single-elements-readme.git
6. Steven adds a remote `students` based on #3
7. Steven creates a feature branch from master that fixes the bug
8. Steven pushes the PR to `origin`
9. The PR is merged via GitHub
10. Steven does a `git checkout master` and then a `git pull`  to catch up to the merged reality
11. Steven changes the permissions protection on the `master` branch
11. Steven then `git push students master:master --force`
13. Steven reenables protection on `master`.
14. Done!
