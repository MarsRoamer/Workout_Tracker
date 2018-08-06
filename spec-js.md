# Specifications for the Rails with jQuery Assessment

Specs:
- [x] Use jQuery for implementing new requirements -- Used $("") throughout program
- [x] Include a show resource rendered using jQuery and an Active Model Serialization JSON backend. -- *On the user landing/show page, clicking through archived workouts renders a single workout*

- [x] Include an index resource rendered using jQuery and an Active Model Serialization JSON backend. -- *On the gym show page, clicking see previous workouts renders all of the gym workouts*

- [x] Include at least one has_many relationship in information rendered via JSON and appended to the DOM. --*The gym show page has the index of all workouts, which is derived from a gym table and a workouts table*

- [x] Use your Rails API and a form to create a resource and render the response without a page refresh. -- *On the gym show page, comments are able to be added dynamically*

- [x] Translate JSON responses into js model objects. -- *Comments are converted into JS objects*

- [x] At least one of the js model objects must have at least one method added by your code to the prototype. -- *There is a getComments() method on the the prototype*

Confirm
- [x] You have a large number of small Git commits 
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message