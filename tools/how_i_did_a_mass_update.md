# How to do a Mass Update to Many Repos

(sgharms)

Here's a view on some tooling and shell-fu that might help think about how to
expand / improve scripting and tooling. It also shows (I think) the Unix
philosophy and how (I beleive) we should model this for students. It's Scrappy,
the way unix and Flatiron School, both are but blends programming, scripting,
shell, etc. in a way that FSWD developers do to "get things done." Maybe this
ought be a track? Dunno. It also means that you don't have to write throwaway
code. The throwaway stuff is in pure CLI Unix.

It's not a straight PROCESS, but more of an approach. It will need to be
amended and edited by intelligences before execution.

----

Scenario:

In the Kode with Klossy materials some of the imported lessons featured
references to the "Bastard's Book of Ruby." We didn't think this was entirely
appropriate for an audience of teens.

1. Get me a list of all the lessons in the track
2. Find the track `id` in learn.co: `32357`
3. Get the [curriculum_tools][] repo which provides `track_output.py`
4. Use `./track_output.py -c 32357 > jen` to store the CSV to a file called
   `jen`
5. The following prints out a CSV version of every lesson and its url stripped down
```csv
kwk-part-1,Day 1,Getting Set Up,Submitting Readmes,http://github.com/learn-co-curriculum/submitting-readmes-kwkp1-summer-2018
kwk-part-1,Day 1,Getting Set Up,Submitting Labs,http://github.com/learn-co-curriculum/submitting-labs-kwkp1-summer-2018
```
6. Use sed to get the urls: `sed  's/.*\(http.*\)/\1/; s/http:\/\//git@/;
   s/\//:/' -i''  jen > clone_urls`
7. Great. Clone all these: `for i in $(cat gh-urls); do git clone  $i; done`
8. Use `ack` to recursively search for instances of `bastard`, take that
   output, turn it into directories, and move those directories into a
   subdirectory called `fix`:
    ```
       for i in \`ack -il bastard |sed 's/\/.*$//'`; do mv $i fix; done
    ```

8. cd `fix`
9. Open up all the READMEs in vim: `vim -o $(find . -name README.md |xargs)`
10. Edit, write, save, exit vim
11. Change into every directory present, create a new branch, commit, push that branch
11. `for i in `ls`; do cd $i; gco -b remove-bastard-book-reference; gca -m 'Remove Bastard language' ; git push origin remove-bastard-book-reference; cd ..; done`
12. Visit github.com/learn-co-curriculum see the recently updated repos; open
    them in tabs
13. Submit PRs for them.
14. Done!





[curriculum_tools]: https://github.com/learn-co-curriculum/curriculum_tools
