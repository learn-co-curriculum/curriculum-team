const titlesSelector = "a.bb-link h3.no-margin";

const titleNodes = () => Array.from(document.querySelectorAll(titlesSelector));

const titlesMatchingRE = (re=RegExp(".")) => titleNodes().filter( title => title.innerText.match(re) )

const trackIdFromTitleNode = (tn) => tn.parentNode.href.split('/')[5];

const trackIdsForTitlesInRegex = (re) => {
  return titlesMatchingRE(re) // Get the titles parent <a> has href with id
    .map( e => parseInt(trackIdsForTitlesInRegex(e)) ) }

const tracksAsObjects = () => {
  return titleNodes()
  .map(n => Object.assign({}, { "title": n.innerText, "id": trackIdFromTitleNode(n) }) )
}

const trackNamesToIdMapping = () => {
  tracksAsObjects().reduce((memo, el) => {
    memo[el.title] = el.id;
    return memo;
  }, new Object())
}

const trackIdsToNameMapping = () => {
  tracksAsObjects().reduce((memo, el) => {
    memo[el.id] = el.title;
    return memo;
  }, new Object())
}

const  = () => tracksAsObjects().reduce( (memo, n) => memo[n.id] = n.title, {});

/* To be run on the learn.co/curriculum page */

/* Get ids for the tracks of a certain title */
// trackIdsForTitlesInRegex(/^Module \d.* \d.\d$/)

/* Get a mapping of  title => id or id => title */
// trackNamesToIdMapping()
// trackIdsToNameMapping()
