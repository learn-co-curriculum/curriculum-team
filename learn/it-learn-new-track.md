# How Do I Create / Populate a New Track?

1. Visit http://learn.co/curriculum
1. Log a Jira ticket on the [Labs Board][] with the name of the track and the description. 
1. (+) Create track
1. Enter Title
  * Pro-tip from Jason Decker: copy and paste from the old version
   so that you don't make an error. Typically the entry would be of the form
   $PRODUCT-v1 to $PRODUCT-v2
  * Suggested length is not to exceed 230 characters
1. Add it to the [spreadsheet][] so we can keep track of the descriptions outside of Learn.  
1. Select the newly created track
1. Under the track name, hit the "circle." As you hover it will become a plus.
   Click the plus. ![Select the Plus](./img/topic_find_plus.png)
1. You can now choose to create a topic or find a topic. In the event that
   you're basically copying from one pre-existing topic to populate this
   current track, you might navigate to the pre-existing track and slurp-in
   the pre-existing topic. You could then delete away the imported lessons
   that you don't need. <br/> ![Add a Topic](./img/topic_add_create_find.png) <br/>
   **Alternatively** you could choose to *create* a Topic. After you create a topic
   you can click the "circle" under the topic and Find or Create Lesson to populate
   the topic. There are two approaches here:
   1. Create a repo in the `learn-co-curriculum` org using the "New Repository"
      process in GitHub. You can then "Find Lesson" in Learn and include it in
      the `Topic`. **This is the recommended path.**
   2. Choose "Create Lesson" which will launch an editor and create a repo for you.
      This interface is more buggy and is not actively encouraged by the Product
      team. For this reason **we discourage this approach**.

[Labs Board]: https://flatiron.atlassian.net/secure/RapidBoard.jspa?projectKey=LABSBOARD&rapidView=12&view=planning
[spreadsheet]: https://docs.google.com/spreadsheets/d/1YX_mV4_Y8lHGB3f7hmCnKJQg00REgzRW_XaItaUmAYY/edit?usp=sharing
