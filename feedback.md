# Project Feedback + Evaluation

Your feedback is based on the [Evaluation Rubric](https://git.generalassemb.ly/ga-wdi-exercises/project2/blob/master/evaluation.md) provided for this project.

## Technical Requirements:

> Did you deliver a project that met all the technical requirements? Given what the class has covered so far, did you build something that was reasonably complex?

Your Score: 2

**Notes:**
You've met all the technical requirements and your app functions great!

If you wanted to push this project a little further, you could consider adding a 3rd party api or some other integration - like you could integrate with [Twilio](https://www.twilio.com/) and have users text their habit occurrences.

## Creativity/Interface:

> Is your user interface easy to use and understand? Does it make sense for the problem you're solving? Does your interface demonstrate creative design?

Your Score: 2

**Notes:**
I love the incorporated animations and transitions! They bring a really great personal spin to the app.

My only piece of feedback here is to style your forms so that they're not using the default rules applied by the browser. This can make your app look more polished. For instance, the font in the input fields and buttons could be the same as the font you're using elsewhere, the input fields could be styled with a background color and border and the buttons could have some padding and the outline removed.

## Code Quality:

> Did you follow code style guidance and best practices covered in class, such as spacing, modularity, and semantic naming? Did you comment your code?

Your Score: 2

**Notes:**
The overall code quality of your app is good, with a few minor issues. Here's some general feedback for you to consider:
* You have some issues with your HTML, for instance [here](https://github.com/antebozic/habit_tracker/blob/master/app/views/habits/show.html.erb#L14-L21) you open a `<div>` and close it with a `<section>` tag. A `<ul>` would be a more semantic choice here. You also have an empty closing tag on line 18.
* Your HTML is generally pretty semantic, though I notice you are using a lot of `<div>`s
* Your class names are generally pretty semantic, but consider looking in to BEM for your class naming. [This](https://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax/) is a really good intro article to BEM.
* Everything in your models and controllers looks good

## Functionality:

> Does the scope of functionality you've built meet the minimum requirements? Do the core components of your application work without errors?

Your Score: 2

**Notes:**
Your app has a really good scope to it for Project 2 and everything seems to be running without errors.

If you want, there's room to build out the features you have, like recording occurrences every day and when users' don't record an occurrence. You could add graphs to visualize that data in an interesting way. You could also have it so that users can follow each other's goals.

## Planning / Process / Submission:

> Is there clear evidence of planning? Is there adequate documentation?

Your Score: 0

**Notes:**
You're missing a readme or any evidence of planning or what your process was. Additionally, it looks like you only made 6 commits throughout the whole project.

This should be easy to resolve. To bring yourself up to a 2, create a `planning/` directory with your ERD and write a `readme.md` based on what we cover [here](https://git.generalassemb.ly/ga-wdi-lessons/documentation-markdown)









