# Rainbow Six Siege Custom Operators - Matt Gahrns

## My Flatiron School Mod 2 Project

I took insparation for this project from the video game Rainbow Six Siege. During a match of this game players switch sides between attack and defence and get to choose from a selection of specific operators on each side. Each operator comes standard with an unique gadget and a choice between one and three primary and secondary weapons. Attackers and Defenders can also choose between two options for utility such as frag gernades or barbed wire respectivley. 

The goal of the project was to give fans and players of the game the ability to create custom operators. Gadgets and uitility are still attack and defence specific, but as in the game weapons can be shared between sides. However, as mentioned weapons are limited to an operator who is given a choice between one and three. When creating an operator with this application the user may choose from any weapons available in the game.

## User Stories
1. As a user, I want to be able to create custom defenders and attackers.
2. As a user, I want to be able to see all of the operators I have made.
3. As a user, I want be able to see all the operators that have been created by all users.
4. As a user, I want to be able to delete my custom operators.
5. As a user, I want to be able to edit my username and password.

## Functinality
The index page of the website displays all of the operators that have been created by all of the users. If a user wants to create a new custom operator they must be logged in. The application has a handy dynamic nav bar at the top where a user can go to the home page, log in, or sign up. If they are logged in it shows options for the home page, to make a new operator, to view your own operators, to view your account settings, and to log out. On the index page users can click on any operator's name to visit the operator show page. They can also click on that user's username to view their user page and see all the operators that that user has created.

## Install Instructions

1. Fork and clone this repository.
2. Open the repository in your IDE of choice.
3. Run ```bundle install``` in console to ensure you have all the required gems.
4. Run ```rails db:migrate``` in console to create the schema.
5. Run ```rails db:seed``` to seed the database.
5. Run ```rails s``` in the console to start the web application.

## Contributors Guide

If you wish to conribute to the project you may do so by following the proceeding steps:
1. Follow steps one and two of the *Install Instructions* section.
2. Create your own branch to work on.
3. Follow standard Ruby convention in your code.
4. Submit any changes you've made to your branch as a pull request on the master to be reviewed.

## License

[MIT License](https://opensource.org/licenses/MIT)

### Copyright 2019 Matt Gahrns

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.