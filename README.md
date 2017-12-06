# README

Habit Tracker is application based on Ruby on Rails technology. 
When creating this application, I wanted to create straight forward user experience, where after log in, it would be very simple to make input and see tracking records.
This resulted in creating one to many relations between user and the habits, and one to many relations between habit and occurrences.
Data is stored in MySQL data base. The core of application logic is found in Habit controller..
I first developed Habit, Occurrence, and Category models and controllers. Once I had that set-up, I installed Devise gem and created User.
For the styling, I used Animate.css package and flexbox for responsive design.
As part of unsolved problems, I would like to develop better way of data presentation for tracked habits, installing gem kick chart. I’m planning to implement gem for mail verification and possible email reminders. 
