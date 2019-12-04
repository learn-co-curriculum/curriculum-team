# "What The Heck Is This Data-visibility Thing At The Bottom Of READMES?"

When reading READMES you might see the following:

```
<p data-visibility='hidden'>View <a href='https://learn.co/lessons/intro-to-the-shell' title='Intro to the Shell'>Intro to the Shell</a> on Learn.co and start learning to code for free.</p>
```

Don't try to delete this, it'll just come back.

Our infrastructure injects these at the end of READMEs to create back-links,
**only** when the content is viewed in GitHub, to Learn.  When the content is
deployed in Learn, it is not seen.

We do this to influence organic search and drive Google searchers into Learn.
