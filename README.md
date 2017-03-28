# README

Last Modified: March 28, 2017

This is my Rails PA for Computer Science 166b class at Brandeis University. In essence, it is a very basic version
of a course catalog site. It has the basic options:

 - It can sign up and sign in users.
 - It has lists for courses, instructors and subjects.
 - It can search for courses based on course name and/or subject.
 - Users can enroll in courses and see which courses they have enrolled in.

 A few fancy features include the use of AJAX so that the search page does not have to reload as you type in search
 parameters.

 A few bugs:
 - For whatever reason, the right side of each table does not appear.
 - For whatever reason, you need to reload the search page every time you access it from an in-site page.
 If you don't, the search page will not submit requests to the database and it will not search.

 You can also find this on Heroku at: https://dashboard.heroku.com/apps/fierce-stream-68088
