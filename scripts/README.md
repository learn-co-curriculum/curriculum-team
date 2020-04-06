# Curriculum scripts

## Introduction

This set of scripts is designed to help in capturing info on and cloning Learn
track repositories.

The Python and Shell scripts in this folder rely on each other.

## Getting ready
In order for these scripts to run follow these steps:
1. Clone [curriculum team repo](https://github.com/learn-co-curriculum/curriculum-team)
2. Navigate to the curriculum folder `cd curriculum-team` and then to the scripts folder `cd scripts`
3. If you don't have it yet, install [python3](https://programwithus.com/learn-to-code/install-python3-mac/) 
4. Ask any member of the curriculum team for the track codes for the modules you want to clone.
5. Run `bash trackToCSV.sh trackCode trackName`, e.g. `bash trackToCSV.sh 25054 mod1`
6. Run `bash cloneCSVtrack.sh mod1`


## Uses

### Creating CSVs from Tracks

Use `trackToCSV.sh` to capture track information from `learn.co/curriculum`
into a CSV file. So, if you wanted the immersive Module 2 track contents,
you would write:

```bash
bash trackToCSV.sh 25054 mod1
```

The `25054` is Module 1's track number. You can find this number in the URL of
the track. Once run, a `mod1.csv` file will be generated. This contains all
the track lessons in order, their names, topics and repository URLs.

**Note:** In the event that this script doesn't work, you can also scrape URLs
from learn.co/curriculum using the following JS code on the track in question:

```
let arrows = document.querySelectorAll('a.arrow-icon')
for(let i = 0; i < arrows.length; i++) {
	arrows[i].click()
}

let githubLinks = document.querySelectorAll('a.github-icon.icon-padded-right')
let trackArray = []
for(let i = 0; i < githubLinks.length; i++) {
console.log(githubLinks[i].href)
}
```

This logs each repository URL in order on a track. To save the output, clear the
console, run the code above, right click and choos 'Save.' Then you can
modify the text so that each repo is on a line in the following structure:

```
"","","","","repository name"
```

This will allow the other scripts to continue to function.

### Cloning Entire Tracks Locally

Once you have a CSV file of an entire track, use the `cloneCSVtrack.sh` create
a folder and clone down all the repositories listed in a CSV. If you wanted to
clone the Module 2 track CSV, you would write:

```bash
bash cloneCSVtrack.sh mod1
```

### Linters

To run linters on a track, use `runLinters.sh` followed by the name of the folder
of repos you want to lint:

```bash
bash trackToCSV.sh mod1
```

The script will loop through each repo and each linter in the linter folder, producing
warnings about specific lessons.
