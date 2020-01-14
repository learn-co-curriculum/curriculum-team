# Writing an in-browser test suite

## Introduction

Going forward, all (pre-React) JavaScript labs should be written with the following testing stack in mind:

* `browser-sync` — for a hot-reloading test server.
* `mocha` — as the test runner.
* `chai` — as the library for matchers.
* `sinon` — as the library for spies, stubs, mocks, etc.

We want to normalize this so that students have a chance to familiarize themselves with a perfectly acceptable, standard JS testing stack.

## `learn-browser`

You do **not** need to add any of those packages to `package.json`. When creating the `package.json` file for a new lab, the only thing you need to do is `npm i --save-dev learn-browser`. That command installs the `learn-browser` package and saves it as a development dependency in `package.json`. If you accidentally `npm i --save learn-browser`, that works fine, too — there's just no reason for the package to be loaded in any non-development context.

## [Starter repository](https://github.com/learn-co-curriculum/template-js-lab-with-browser-based-mocha-tests)

There are 15 TODOs in this repository:

* `test/indexTest.js`: 1
* `.learn`: 2
* `index.html`: 2
* `package.json`: 6
* `README.md`: 4

To create a new JavaScript lab, clone [this repository](https://github.com/learn-co-curriculum/template-js-lab-with-browser-based-mocha-tests) down, delete the `.git/` directory, address all of the TODOs (in the process writing the lab and test suite), and then push your handiwork up into a [new `learn-co-curriculum` repo](https://github.com/new).

## Sample files

### `package.json`

```json
{
  "name": "js-basics-arithmetic-lab",
  "version": "0.1.0",
  "description": "Lab on JavaScript numbers and arithmetic in Flatiron School's Learn.co curriculum.",
  "main": "index.js",
  "scripts": {
    "postinstall": "gem install learn-co",
    "test": "node_modules/browser-sync/bin/browser-sync.js start --config node_modules/learn-browser/bs-config.js"
  },
  "repository": {
    "type": "git",
    "url": "git+ssh://git@github.com/learn-co-curriculum/js-basics-arithmetic-lab.git"
  },
  "keywords": [
    "javascript",
    "learn.co",
    "flatiron school",
    "arithmetic",
    "math",
    "number",
    "operators"
  ],
  "author": "Flatiron School",
  "license": "SEE LICENSE IN LICENSE.md",
  "bugs": {
    "url": "https://github.com/learn-co-curriculum/js-basics-arithmetic-lab/issues"
  },
  "homepage": "https://github.com/learn-co-curriculum/js-basics-arithmetic-lab#readme",
  "devDependencies": {
    "learn-browser": "^0.1.14"
  }
}
```

Current version of `learn-browser`: [![npm version](https://badge.fury.io/js/learn-browser.svg)](https://www.npmjs.com/package/learn-browser)

#### Notes

```json
"main": "index.js"
```

The JavaScript file in which students should code their solution.

```json
"scripts": {
  "postinstall": "gem install learn-co",
  "test": "node_modules/browser-sync/bin/browser-sync.js start --config node_modules/learn-browser/bs-config.js"
}
```

The `postinstall` script installs and/or updates the student's `learn-co` gem to the latest version. We need this because students with older versions of the gem won't have the version of the `learn-test` gem that supports this new testing setup.

The `test` script starts a Browsersync server with the custom config file located in the `learn-browser` package.

### `index.html`

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">

    <title>JavaScript Arithmetic Lab</title>
    <meta name="description" content="Introduction to JavaScript numbers and arithmetic in the Learn.co curriculum">
    <meta name="author" content="Flatiron School">

    <!-- Include Mocha's stylesheet to style test results -->
    <link rel="stylesheet" href="node_modules/mocha/mocha.css">
  </head>

  <body>
    <!-- <div> for Mocha to display test results. -->
    <div id="mocha"></div>

    <!-- Include Mocha and set it up for BDD-style testing. -->
    <script src="node_modules/mocha/mocha.js"></script>
    <script>mocha.setup('bdd');</script>

    <!-- Include Chai as the matcher library. -->
    <script src="node_modules/chai/chai.js"></script>

    <!-- Include Sinon as the library for spies, stubs, and mocks. -->
    <script src="node_modules/sinon/pkg/sinon.js"></script>

    <!-- Include the student's JavaScript file. -->
    <script src="index.js"></script>

    <!-- Include the JavaScript file containing the tests. -->
    <script src="test/indexTest.js"></script>

    <!-- Include Flatiron School's minified test runner to push results to Learn. -->
    <script src="node_modules/learn-browser/learnBrowser.min.js"></script>
  </body>
</html>
```

#### Notes

You can play around with the ordering of the student's JS file (`index.js`), the test suite (`test/indexTest.js`), and any fixtures (e.g., `test/fixtures.js`) to suite your needs. Generally, load Mocha first, then Chai, then Sinon (only if you need it for the test suite), then the student's code and the test suite, and finally `learnBrowser.min.js`.

### `test/indexTest.js`

```js
const expect = chai.expect;

describe('index.js', () => {
  describe('myVariable', () => {
    it('description of what the variable should contain', () => {
      expect(myVariable).to.eq(42);
    });
  });

  describe('myFunction()', () => {
    it("description of behavior when the function is invoked in a certain situation", () => {
      expect(myFunction()).to.be.true;
    });

    it("description of behavior when the function is invoked in a different situation", () => {
      expect(________).to.be.false;
    });
  });
});
```

#### Notes

The test file should be named according to the student's JS file. If students are coding in `strings.js`, the test file should be `stringsTest.js`.

The whole test suite should be encapsulated within a top-level `describe` block that references the student's JS file (yet another hint to them about which file to write their code in):

```js
describe('index.js', () => {
  ...
});
```

## Resources

- [Mocha documentation](http://mochajs.org/)
- [Chai BDD-style matchers](http://chaijs.com/api/bdd/)
- [Sinon v2.3.8 documentation](http://sinonjs.org/releases/v2.3.8/)
- [Learn Browser on NPM](https://www.npmjs.com/package/learn-browser)
