# Why We Work In Wip

The Flatiron curriculum system is hooked up to an autodeployer that replicates
changes to the GitHub repo to Learn.co. **ANY CHANGE TO ANY BRANCH** will
trigger this deployment. Changes to `master`, changes to `solution`, changes to
`stevens-awesome-idea`.

Updates to branches called `wip-` **don't** trigger the autodeploy. That's why
updates / features etc. should be done in it.
