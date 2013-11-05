Hunter Horsley

--
The Heroku page: http://frozen-fjord-4579.herokuapp.com/


--
(11/5)
ISSUES: Because I used the Heroku interface to add Sendgrid, isntead of the command line, I had some issues getting credentials and had to remove it, and then re-add it via command line. Also, I'm trying to implement a voting system which is giving me a big of a headache.

WHAT I DID: Added Sendgrid Heroku addon so that you get an email when you create a course that says the name of the course you created.

--
(10/29)
ISSUES: I'm having a bit of trouble blocking some pages from logged out users and not others. Also still have to meet up with Jennifer to fix the issue causing the page to crash (deleting data in one table that gets called by another)

WHAT I DID: I implemented Devise and setup login/logout/sign up pages as well as permissions to other pages based on login status.

--
(10/15)
ISSUES: Couldn't get the views to link to the bootstrap file in my asset directory so I had to use a cdn. Would like to figure out what was happening there though. Also, I don't think the password confirmation password is working so I'd like to sort that out (though it didn't seem it was required to be working for this homework if I had enough others)

WHAT I DID: I added both application styling and homepage styling. Also added over 5 validators between the user and course models. 


--
(10/8)
ISSUES: Had significant issues with making my "course" model belong to the "user" model. This was ultimately resolved with some db/migration stuff but took a while. I also had a lot of typos to sort out.

WHAT I DID: I added show, edit, destroy views to the courses and penn_reference_info models. I also made the courses model belong to the user model.


--
(10/1)
ISSUES: Ran into a few bugs that I was able to find: forgot to run heroku run db:migrate. Also, forgot an "end" in the controller. Survived though.

WHAT I DID: I added controllers, models, and views for three tables: "users", "courses", and "penn_reference_info". I actually discovered you can use the scaffold command to do this all in one go. Anyways, I also had to modify the routes file and did some very barebones html stuff. The idea for the app is to crowdsource ideas and demand for courses. 


--
(9/17)
ISSUES: The formatting of the input/form items is a little wonky. For example, there's a line break between the fullname and email entry boxes. Also, the labels are undesirably close to the entry boxes. I'm sure this could all be remedied with a bit of time/tweaking.

WHAT I DID: I used bootstrap to add data input boxes. I also added an image and a link to my twitter. At this point it's basically looking like a professional page :)


--
(9/10) 
ISSUES: I initially installed Rails 4.0 which caused all sorts of issues. Heroku didn't like it. So I went back and changed my version of Rails to 3.2.3 and did it all over again.

WHAT I DID: I downloaded RVM to install ruby & rails. Then I made a rails app. Then I edited the index file. Then I pushed it to GitHub and Heroku (I had to create an SSH key too). Then I created this README and pushed that too.
