# Curriculum Development Tools

Philosophy:

* Tools _leverage_ your time - they act as a _force multiplier_
* Anything you find yourself checking manually, try to automate
* Do things a few times manually before you try to automate, so you know it's worth doing (and some of the variety you'll have to account for)
* If there's something you need, and it's worth it to build it, then build it!

## In this directory

* Canonical list of supported curriculum (names-and-ids.txt)
* Daily Monitoring scripts (issues.sh, summary.sh, org_events.sh)
* Scripts for downloading tracks (update_lesson_lists.sh, track_output.py, clone_all_tracks.sh)
* Tools for creating, editing, and managing curriculum

## Getting Started

### 0. Basic Machine Setup

First, check that your machine has the basic set up and tools installed that we recommend for students.

* [Automated scripts](https://github.com/learn-co-curriculum/flatiron-manual-setup-validator)
* [Step-by-step instructions](https://github.com/learn-co-curriculum/environment-mac-os-catalina-setup)

### 1. Clone This Repo

```sh
git clone git@github.com:learn-co-curriculum/curriculum-team.git
```

Put it somewhere nice, like `~/dev/curriculum-team`.

### 2. Install dependencies

```sh
brew install go
brew install python
pip3 install pyyaml
```

### 3. Install our fork of the `hub` tool

Clone the repo somewhere safe, like `~/hub`. Then build the tool from source, since there's no compiled binary for our updated version.

```sh
git clone git@github.com:flatiron-school/hub.git
cd hub
git checkout fis
make
# add your version of hub to your $PATH, wherever you put your hub repo
echo 'export PATH="$HOME/hub/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
hub --version # should should something like
# git version 2.24.0
# hub version 2.11.2-252-gee3ff9d3 # note the `-gee3ff9d3` stuff after the version
```

Then follow hub's prompts to configure a token

```sh
hub browse
# will prompt you for github credentials
```

### 4. Update the `lesson_lists` with what is currently on learn

```sh
# check that tools/names-and-ids.txt is updated (ping someone in slack, probably)
cd ~/dev/curriculum-team  # or wherever you put this
./tools/update_lesson_lists.sh
```


### 5. Optional - add additional command line tools

There are lots of helpful tools for working on the command line - you can install any or all of these. Check out the docs on each one to learn more.

```sh
# get the latest versions of git and zsh
brew install git
brew install zsh
# install useful command line tools
brew install jq
brew install ripgrep
brew install bat
brew install htop
brew install fzf
# install fzf completions (follow the prompts)
/usr/local/opt/fzf/install
# Source the track health tools on shell startup
echo "source $HOME/dev/curriculum-team/tools/track-health-tools.sh" >> ~/.zshrc
```

### 6. Optional - set up helpful aliases

Add the following to your `~/.zshrc`. It's a function to add an alias.

```sh
# Aliases
# add an alias
# usage: `$ add_alias gb git branch`
add_alias() {
  local cmd=$1
  shift
  local rest="$@"
  echo "alias $cmd=\"$rest\"" >> ~/.zsh_aliases
  source ~/.zsh_aliases
}

source ~/.zsh_aliases
```

Try it out:

```sh
add_alias co git checkout
```

That adds the aliases `co` for `git checkout`.

It's pretty common to swap your default `cat` for `bat`, and `git` for `hub`, since they are intended as drop-in replacements.

```sh
add_alias cat bat
add_alias git hub
```

Since the folders in `issues_output` are named for each day, it's handy to have

```sh
add_alias today date "+%Y-%m-%d"
add_alias yesterday date -v -1d "+%Y-%m-%d"
```

Then, from the root of this repo, you can use `cd issues_output/\`today\`` to navigate to today's issues.

### 5. Clone all tracks in `lesson_lists` to local

Potentially skip this step, unless you want to have all the tracks downloaded locally.

```sh
# (use sparingly - clones lots of repos!)
./tools/clone_all_tracks.sh
```

## Manually running the issues scripts

Normally, the issues scripts run automatically. If you need to run them yourself, you can:

```sh
# Get all the issues from the day
./tools/issues.sh
# Summarize the day's issues
./tools/summary.sh
# Get the day's events
./tools/org_events.sh
```

## Git

We use a lot of Git. Common behaviors:

* branching
* rebasing interactively
* melding commits
* cleaning up commit histories

It's worth making sure that you feel on solid footing with respect to working with commits, braches, and remotes. If you need practice, check out http://gitimmersion.com/ and the [Git book](https://git-scm.com/book/en/v2). Or ask for help!
