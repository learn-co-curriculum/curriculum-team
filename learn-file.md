# `.learn` file

## Introduction

The `.learn` file is written in the YAML serialization format. It provides the
metadata for each [lesson][].

## Keys

* `tags`: An array which contains tags associated with the lesson
* `language`: The languages which are used
* `resources`: _undefined_

Specific documentation for each key follows.

### `languages`

Do not include `rspec/jasmine` in the tag unless the lab is explicitly teaching
testing (all labs should be test-driven).

### tags

* Refer to the topics, units, and lessons for tagging ideas
* Be as specific as possible

#### Tagging Usage

Use Case        | Example Tags
----------------|------------------------------
topics/concepts | algorithms, arrays, authorization, methods, computer science, join tables, iteration
frameworks      | rails, sinatra, angular
libraries       | jquery, popcorn.js
orms            | arel, activerecord, sequel, sql

#### Examples of good tagging:

tags: rails, strong params, complex nested forms, fields\_for

tags: methods, variable assignment, iteration

tags: jquery, variable scope

[lesson]: ./glossary.md#lesson
