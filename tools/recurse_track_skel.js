#!/usr/bin/env node

const got = require('got');

const offset = '  ';

const ensureTrackId = () => {
  const t = process.argv[2];
  if (!t || !t.match(/\d+/)) {
    throw new Error('Did not receive a numerical track ID as argument.');
  }
  return t;
};

const createTrackUrl = trackId => `https://learn.co/api/v1/tracks/${trackId}`;

const isVertex = blob => blob.children && blob.children.length > 0;

const displayBlob = (blob, depth) => `${offset.repeat(depth)}${blob.title}: ${blob.github_url}`;

const processBlob = (blob, depth = 1) => {
  const prefix = offset.repeat(depth);

  if (isVertex(blob)) {
    console.log(`${prefix}${blob.title}`);
    blob.children.forEach(c => processBlob(c), depth + 1);
  } else {
    console.log(displayBlob(blob, depth + 1));
  }
};

const main = () => {
  const url = createTrackUrl(ensureTrackId());
  got(url, { json: true })
    .then(response => processBlob(response.body))
    .catch((error) => {
      console.log(error.response.body);
    });
};

main();


/* eslint no-console: "off" */
