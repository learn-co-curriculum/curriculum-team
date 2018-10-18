# Learn Presentation Logic

## How Will Learn Present My Lesson?

Determining how Learn will present your lesson involves some complex code that
has numerous intersecting rules. This is Steven Harms' dig as of 2018-10-18.

## Definitions

Some of the code works by looking at the contents of the lesson's repository.
Here are definitions to help you parse the logic:

1. **is canonical**: If your repository is hosted in learn in the `learn-co-curriculum` it is considered "canonical"
1. **has any directories**: If there is any subdirectory present (based on a
   call to the GitHub API: `/repos/contents/` endpoint (as such, not dot-directory filtering is to be expected! We're not using file system conventions) 
1. **has any tests**:
   1. Has root level spec or test directory
   1. Has root level spec or test file
   1. Has nested test directory or spec file
1. **can infer quiz type**: A quiz parsing class `InlineQuizParser` effectively
   parses a section of the `README.md` file as parsing a quiz question
1. **.learn file**: A configuration file written in YAML

## Logic Table

Type of lesson is determined based on working through this table **in order**;
first match wins

|Type|Logic|
|----|-----|
|`Lessons::JupyterReadmeType`| `.learn` contains truthy value for `jupyter notebook` and **has any tests** is not true|
|`Lessons::JupyterLabType`| `.learn` contains truthy value for `jupyter notebook` and **has any tests** is true|
|`Lessons::ProjectType`| `.learn` contains truthy value for `project`|
|`Lessons::EnvSetupType`| `.learn` contains truthy value for `env_setup`|
|`Lessons::LiveAssessmentType`| `.learn` contains truthy value for `live_assessment`|
|`Lessons::LabWithSpecsType`| if **has any directories**; possibly dangerous since order in this table changes outcome!|
|`Lessons::LabWithoutSpecsType`| if **has any directories** is false; possibly dangerous since order in this table changes outcome!|
|`Lessons::QuizType`| if **can infer quiz type**; implicitly relies on order to ensure it's the last-last-ditch ahead of `ReadmeType`; possibly dangerous since order in this table changes outcome! If you understand regular expressions, it's a bloc of text `/\?{3}\s*?(.+?)\?{3}/m`|
|`Lessons::ReadmeType`|(default)|

## Process

_For code spelunkers; ignorable by most_

1. Learn synchronizes its data from GitHub through a service class called
   `GithubRepoSync`. Instances of `GithubRepoSync` implement the command
   pattern (inherited from `BaseService`). The command is executed by `#execute`.
2.  Assuming the lesson to be synchronized is **canonical**:
  1. In executing the command, `attr_reader` `attr` `canonical_material` (`CourseWork::CanonicalMaterial`) is set
  2. `set_canonical_material_kind` runs as part of the command
     1. This method instantiates a helper object: `AssessableRepoTypeIdentifier` and uses its `#classify_repo_assignment_kind`
     2. `#classify_repo_assignment_kind` enwraps `get_lesson_type_from_repo`
        which iterates a collection of `lesson_types` (implementors of the
        Strategy pattern) yielding the GH repo's data to them looking for a
        `true` match. Confusingly, the method is called `detect` which is
        easily confused with Ruby's `Enumerable` of the same name
        ```ruby
        Lessons::JupyterReadmeType.new,
        Lessons::JupyterLabType.new,
        Lessons::ProjectType.new,
        Lessons::EnvSetupType.new,
        Lessons::LiveAssessmentType.new,
        Lessons::LabWithSpecsType.new,
        Lessons::LabWithoutSpecsType.new,
        Lessons::QuizType.new
        ```

... and so on, see table, above
