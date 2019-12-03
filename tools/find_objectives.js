#!/usr/bin/env node

/*
 *
 * Usage
 *
 * ./find_objectives.js (list of GitHub pages for repos)
 *
 * REQUIREMENTS
 *
 * You must set a "personal access token" in the GITHUB_APP_TOKEN environment
 * variable.
 *
 * OUTPUT
 *
 * [
 *  { 'learn-co-curriculum/js-basics-control-flow-lab': [
 *      'Practice writing `if...else if...else` statements.',
 *      'Practice working with the ternary operator.',
 *      'Practice writing `switch` statements.' ] },
 *   { 'learn-co-curriculum/js-basics-arithmetic': [
 *        'Recognize the limitations of math in JavaScript',
 *        'Employ operators to perform arithmetic and assign values to variables',
 *        'Explain `NaN`',
 *        'Use built-in objects like `Math` and `Number` to accomplish complex tasks' ] }
 *  ]
 */

const fs = require('fs');
const octokit = require('@octokit/rest')();
const repotools = require('./repotools');

octokit.authenticate({
  type: 'token',
  token: process.env.GITHUB_APP_TOKEN,
});

const urls = fs
  .readFileSync(process.argv[2], 'utf8')
  .split('\n')
  .filter(l => l.match(/./));

const fetchReadme = (path, agent) => {
  const [owner, repo] = path;

  return agent.repos.getReadme({ owner, repo })
    .then((response) => {
      const baseEncBody = response.data.content;
      return Buffer.from(baseEncBody, 'base64').toString('utf8');
    })
    .then(readmeContent => readmeContent)
    .catch((error) => {
      console.error(`Unable to fetch README for ${repo}: ${error}`);
    });
};

const fetchReadmeObjectives = (u) => {
  const apiPath = repotools.repoUrlToReadmeUrl(u);
  const ownerAndRepo = apiPath.split('/');

  return fetchReadme(ownerAndRepo, octokit)
    .then(r => repotools.extractObjectivesFromReadme(r))
    .then((objSet) => {
      const l = {};
      l[apiPath] = objSet;
      return l;
    });
};

Promise.all(urls.map(u => fetchReadmeObjectives(u)))
  .then((objectiveSets) => {
    console.log(objectiveSets);
  });

/* eslint no-console: 0  no-debugger: 0 */
