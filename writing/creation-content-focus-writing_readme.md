# Structuring Your Readme

	"It is not a recitation of facts, but the building of an argument."
							-Molly Worthen

## It’s All About the Story

Now that you have all your objectives, you’re ready to start presenting new
material right? Well not quite yet. Readmes aren’t just a compilation of facts,
but instead depend on **the overarching narrative within which your facts are
contained**.

Think of your Readme as a story that follows a narrative arc of beginning,
middle, and end. In other words, set the stage, show how the conflict emerges,
work through the conflict, and end with presenting the new reality and tying up
any loose ends.

![Image](http://farm3.static.flickr.com/2388/2387371826_509e4d0f06_o.png)

We'll take a closer look at each of these sections. For now in this Readme,
we'll start with the beginning and setting the stage. 

When you’re setting the stage, begin with something that the student already
knows. This can be a concept you can assume they know from previous lessons or
from their day-to-day lives. The ultimate goal is to hook your audience and the
best way to do that is with a known idea.  Below are two examples:

1) *How does Twitter have different pages for each of its 300 million users? How can AirBnB support over 40 million guests with over 1.5 million listings worldwide? All of this is possible because of web applications.*

2) *Imagine needing to build a method that greets a person. We could code something like this:*

```ruby
def greeting
    puts "Hi, Ruby programmer!"
end
```

*This method, when called, will print out to the terminal the string `"Hi, Ruby programmer!"`.*

*As amazing as this method is, it's still pretty literal. It "hard codes," or directly specifies, the name of the person we are greeting as `"Ruby programmer"`. If we wanted to build a method that can greet anyone, even Python programmers, we'd have to re-implement the majority of the original logic from `#greeting`:*

```ruby
def greeting_python
  puts "Hello, Python programmer!"
end
```

*Notice the only things that changed are the method name and the language name `"Python"` in the body of the method. It's as though that information should be specifiable or configurable when you call the method, otherwise we'd have to build every permutation of the method. In other words, we'd have to re-write the method for every single person we want to greet. We want our method to be more dynamic, more abstract, more re-usable. It should maintain the elements that will always be the same, no matter who we greet, and allow us to change, or swap out, the name of the person we are greeting. This is dynamic, as opposed to "hard-coded".*

*Good news, that's exactly what "method arguments" (also called "parameters") are for.*

By presenting a known idea, you can move to presenting the conflict. This
tension builds interest and will motivate the student to continue reading.
You’re also presenting the "Why" of the lesson. The "Why" is the reason we’re
about to cover the following concepts in the lessons and this too will motivate
students to continue reading. 

This can be done in a couple of ways, as shown in the above examples. 

If you started off with a concept that a student already has learned, then
attempt or explain how you can solve a given problem using those concepts.
What will usually happen is that the solution will either be impossible or too
unwieldy as you can tell in the second example above. After that, introduce the
new information that’ll help resolve this conflict. 

If you started with a general idea that a student might know outside of the
content presented in earlier lessons, then present the problem as a question.
After that, introduce the new information that’ll help resolve this problem.
This is how the first example above handled it. 

In general, this kind of rhythm and tension lets students feel more emotionally
invested in the story and will help them remember and recall information
better. 

Once the conflict is presented, move on to presenting new information that will
help resolve it.  Remember your storyline and incorporate storytelling that’ll
continue to develop your narrative. By continuing to ask questions and answer
them, you can keep on presenting that new information.

While your lesson should follow the overall arc discussed above, that doesn’t
mean you can’t have smaller sub-arcs within that main arc. Try to be as
creative as you can as you incorporate the learning objectives in your lesson
but remember that if you’re including new scenarios or characters into your
narrative, they should always be in service to those learning objectives. 

For example, metaphors that introduce new scenarios or characters are a great
way to connect new concepts to things a student might know. 

Here’s an example of metaphors that were used when explaining methods to
students:

**Metaphor** Methods are like Vending Machines. You put some sort of input in,
and some magic happens, then output happens.

**Metaphor** Methods can do a bit more because they don't always need input.
When your mom says to get dressed, you then break that down into underwear,
pants, shirt, socks, shoes. Now she doesn't need to repeat herself

*Tip*: To show that moments of tension are happening in your lesson, use
shorter words and sentences, especially as it rises to the climax where the
solution(s) is/are presented. 

And once all the new information is presented to solve the initial problem you
presented, make sure that you have indeed solved the problem with that
information. Your students are now aware of this new reality, and you can
continue to build on this new reality by mentioning very briefly other aspects
of this new reality or further questions it raises.

## How Do I Break Up All of That Narrative So That I Don’t End Up with One Long Essay? 

Short answer; trust your instincts. At a minimum, your beginning, middle, and
end should be its own sections. Don’t title it "Beginning," "Middle," and "End"
because that’s pretty boring. Instead use short, descriptive titles that’ll
motivate students to read. 

As a rule of thumb, each of your learning objectives should have its own
paragraph (or sometimes multiple) devoted to it. 

Another great way to break up the monotony of text is through code block and
other visual elements. (Keep reading on for more on that). 

## Are There Other Things I Should Include in My Lesson? 

Always use code examples wherever possible and weave them in with your larger
narrative. When including code snippets, a student should be able to copy and
paste it as is in a repl or a file and execute it with the intended result
stated in the Readme. 

Explain all the parts of the code a student isn’t already familiar with and if
you can, build on and manipulate your code blocks and snippets as you continue
through the lesson. Let’s continue with our vending metaphor and methods
examples. 

In addition to code snippets, make your content visual. Add diagrams and charts
to help organize material and make concepts more clear. 

## What About Voice and Tone? Is there a Flatiron School or Learn Style I Need to Follow?

Refer to the [style guide](./style_guide.md).

## Anything Else? 

Found any interesting articles, tutorials, or websites as you were putting your
lesson together? Or further reading that might be beneficial to your students
but doesn’t really need to be in the lesson itself? Add those at the bottom in
a section titled Resources. 

And as a resource for this article check out [this great
piece][programming-curr] on writing specifically for programming curriculum.

[programming-curr]: http://worrydream.com/LearnableProgramming
