module.exports.extractObjectivesFromReadme = (r) => {
  if (!r) return [];

  const startIdx = r.indexOf('## Objectives');
  const endIdx = r.indexOf('##', startIdx + 1);
  const objSection = r.slice(startIdx, endIdx);

  return objSection
    .split('\n')
    .filter(l => l.match(/^(\d+\.|\*)/)) // Markdown "1. Item" or "* Item"
    .map(l => l.replace(/.*?\s+/, '')); // Trim off the list offset
};

module.exports.repoUrlToReadmeUrl = url => url.split('/').slice(4, 6).join('/');
