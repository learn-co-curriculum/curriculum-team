Hi there,

[Raising issues on GitHub](http://help.learn.co/improving-learn/contributing-to-lessons/raising-an-issue-with-a-lab-or-lesson) should be reserved for problems with the curriculum — not difficulties solving a lab.

The issue here appears to be with your own code. If the error messages in the test suite are not providing enough information for you to diagnose the problem, try the following three things:
1. Run your code as it is intended to be run. That is, don't simply rely on the test suite to check the functionality of your code — check it yourself! For Ruby code, add some lines to the bottom of the file that call your methods and output verifiable information to the terminal. For Sinatra or Rails applications, fire up your local server and try executing the same actions that the test suite is failing to complete. For JavaScript code, open up your browser's JS console, paste in your code, and play around with your functions and variables.
2. Use [Pry](https://www.sitepoint.com/rubyists-time-pry-irb/) to poke around your [Ruby](https://github.com/pry/pry) (or Sinatra), [Rails](https://github.com/rweng/pry-rails), or [JavaScript](https://github.com/blainesch/pry.js) code step-by-step. Check that the values of particular variables are what you expect them to be at various points throughout the program's execution.
3. Use the [Ask a Question](http://help.learn.co/ask-a-question/where-can-i-ask-a-question-about-a-lesson) (AAQ) feature, where the [Technical Coaches](http://help.learn.co/instructional-support/receiving-course-support/who-are-the-technical-coaches) (on [supported tracks](http://help.learn.co/instructional-support/receiving-course-support/does-my-program-or-course-have-technical-coach-support)) and fellow community members can help you figure it out. For some tips on how to take full advantage of AAQ, check out [this helpful article](http://help.learn.co/ask-a-question/how-to-optimize-time-in-ask-a-question) in the [Learn Help Center](http://help.learn.co/).

If, after reviewing your code and consulting AAQ, you still feel that this is an issue with the curriculum itself, please reopen the issue and provide more detail about why it's a curriculum issue, the steps needed to reproduce the issue, and any additional relevant information about your development environment (local or IDE).

Thanks! 💙
