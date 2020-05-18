# This script must be run in pieces

# Setup:
# This procedure requires saving an array from the Chrome dev tools console. 
# To do this, grab the script provided here: http://bgrins.github.io/devtools-snippets/#console-save
# In chrome dev tools, open Sources > Snippets. Create a new Snippet called consoleSave.js
# Paste in the code from the above link
# Right click and choose Run to load the Snippet. 
# console.save() will now be a working function and will download passed values as a JSON file

# Get Batches

# 1. On learn.co/curriculum, navigate to the track in question
# 2. Run the following code in Chrome dev tools:

let batches = document.querySelector('.batches').children
let batchArray = []
for (let batch of batches) {
    batchArray.push(batch.textContent);
}
console.save(batchArray)

# The code above will grab all batches from the drop down in learn.co/curriculum and save it to JSON
