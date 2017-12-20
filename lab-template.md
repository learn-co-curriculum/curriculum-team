# Lab Outline:

Labs are the category of repositories that include some form of coding
practice. This could be:

* a **spec lab** that involves writing code to pass tests. These are more
  stringent and of more value to students. This most-closely mirrors real-world
  concerns.
* a **Code-Along**  does not involve independent problem solving to pass tests,
  but rather gives heavy-handed direction to write specific lines of code.
  Code-Alongs, however, should also include tests and students are still expected
  to pass them even if you're telling them exactly how to do so. In many cases, a
  Code-Along can take the place of a Readme that would cover the same topic. 

## Examples

Spec Lab:

  * TODO: Find

Code-Along:

  * TODO: Find

## Format of a Lab Readme

### `#` Title

The title comes first. It should be the name of the repository.

### `##` Objectives

Objectives should immediately follow the title of the lab. Students should be
able to readily find and define the skills they should be expected to practice
or learn by completing the lab.

### `##` Introduction

The introduction should discuss the premise, or scenario of the lab. It should
set the stage for the work the students will be doing.

### `##` Instructions

Instructions should be a numbered list of steps to take when solving the lab.
This section can include a leading paragraph if its content does not fit into
the numerical order (i.e., "After forking and cloning this lab, open the
`main.rb` file.").

Instructions should be be specific. Students shouldn't have to make assumptions
about what to do based on the instructions, they should immediately know. 

Instructions should be written in order of how to approach the lab. If you need
to build a class before you can define any methods, the instructions should
lead the student to build the class first.

## Lab Templates

Labs should fit into one of the following categories. Take the file structure
linked below and be sure to duplicate it.

### Templates

* [fundamental-ruby](#fundamental-ruby)
* [command_gline](#command-line)
* [SQL](#SQL)
* [activerecord](#activerecord)
* [rake](#rake)
* [rack](#rack)
* [sinatra-classic](#sinatra-classic)
* [sinatra-mvc](#sinatra-mvc)
* [js](#js)
* [front-end](#front-end)



Note for rails labs moving forward we should be using [flatiron-rails][] to
generate new Rails labs.

<a name="fundamental-ruby"></a>

### Fundamental Ruby
  File Structure:
  ```bash
  ├── README.md             # The guide to the this lab
  ├── Gemfile               # A file that specifies helpful external Ruby libraries
  ├── Gemfile.lock          # A file created by bundler that stores the specific versions of gems
  ├── lib/                  # The directory that holds your programs code
  │   └── file.rb           # The Ruby file where your code goes
  └── spec/                 # The directory where test files go
      └── spec_helper.rb    # This rspec file instructs all test files how
      └── file_spec.rb      # The test itself, which is testing only file.rb
  ```

<a name="command-line"></a>

### Command Line
  File Structure:
  ```bash
  ├── README.md
  ├── Gemfile
  ├── bin/                  # The directory that holds code only meant to execute the program
  │   └── runner.rb         # The file that executes the program
  ├── lib/
  │   ├── environment.rb    # The file that requires all the different parts of your program
  │   └── lab-name/         # The directory that holds the core of your program
  │       └── cli.rb        # The main file of your program
  └── spec/
      └── spec_helper.rb
      └── file_spec.rb
  ```

<a name="SQL"></a>

### SQL
  File Structure:
  ```bash
  ├── README.md
  ├── Gemfile
  ├── bin/
  │   ├── environment.rb
  │   ├── run.rb            # The same as runner.rb
  │   └── sql_runner.rb     # The file that instructs ruby how to evaluate your SQL
  ├── lib/
  │   └── sample.sql        # The file that your SQL goes in
  └── spec/
      └── spec_helper.rb
      └── file_spec.rb
  ```

<a name="activerecord"></a>

### Active Record
  File Structure:
  ```bash
  ├── README.md
  ├── Gemfile
  ├── Rakefile              # Holds ruby code that can be executed via the command line
  ├── app/                  # This directory organizes your application's components
  │   └── models/           # The directorty that the models go in
  │       └── sample-class.rb  # A model, which holds logic to interact with your database
  ├── config/               # This directory contains code to help run your app
  │   └── environment.rb
  ├── db/                   # This directory holds all your files that are relevant to your database
  │   └── migrations/       # This directory holds files that instruct your database about how to construct it's schema
  ├── lib/
  │   └── support/          # A directory that holds files help your program run
  │       ├── connection_adapter.rb  # This file specifies how to connect to your database
  │       └── db_registry.rb  # A file that instructs the connection_adapter to choose between a test, development, or production environment
  └── spec/
      └── spec_helper.rb
      └── file_spec.rb
  ```

<a name="rake"></a>

### Rake
  File Structure:
  ```bash
  ├── README.md
  ├── Gemfile
  ├── Rakefile
  ├── bin/
  │   └── console   # Allows you enter a pry session with your entire app loaded into it
  ├── config/
  │   └── environment.rb
  ├── lib/
  │   └── file.rb
  └── spec/
      ├── rakefile_spec.rb
      └── spec_helper.rb
  ```


<a name="rack"></a>

### Rack
  File Structure:
  ```bash
  ├── README.md
  ├── Gemfile
  ├── app/
  │   ├── application.rb
  │   └── controllers/      # A directory that holds controllers
  │       └── erb_maker.rb  # A file that helps interact between models and views
  ├── config/
  │   └── environment.rb
  ├── config.ru             # A file that executes rack files
  ├── lib/
  │   └── templates/        # A directory that holds files to be executed by
  │       └── my_cool_response.html.erb
  └── spec/
      ├── controllers/
      │   └── 01_server_port_spec.rb
      ├── spec_helper.rb
      └── support/
          └── an_ok_request.rb
  ```

<a name="sinatra-classic"></a>

### Sinatra Classic
  File Structure:
  ```bash
  ├── README.md
  ├── Gemfile
  ├── Rakefile
  ├── app.rb
  ├── config
  │   └── environment.rb
  ├── config.ru
  ├── models
  ├── public
  │   ├── images
  │   ├── javascripts
  │   └── stylesheets
  ├── spec
  │   └── spec_helper.rb
  └── views
  ```

<a name="sinatra-mvc"></a>

### Sinatra MVC
  File Structure:
  ```bash
  ├── README.md
  ├── Gemfile
  ├── Rakefile
  ├── app
  │   ├── controllers
  │   │   └── application_controller.rb
  │   ├── models
  │   └── views
  │       └── layout.erb
  ├── config
  │   └── environment.rb
  ├── config.ru
  ├── db
  │   ├── migrate
  │   └── seeds.rb
  ├── public
  │   └── stylesheets
  └── spec
      ├── controllers
      ├── features
      ├── models
      └── spec_helper.rb
  ```

<a name="js"></a>

### Javascript
  File Structure:
  ```bash
  ├── README.md
  ├── css
  ├── images
  ├── index.html
  ├── js
  │   ├── file.js
  │   └── jquery-1.8.3.min.js
  ├── requires.yml
  └── spec
  ```

<a name="front-end"></a>

### Front-end
  File Structure:
  ```bash
  ├── README.md
  ├── css
  │   └── style.css
  ├── images
  └── index.html
  ```

[flatiron-rails]: https://github.com/flatiron-school/flatiron-rails
