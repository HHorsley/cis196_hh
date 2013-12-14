Hunter Horsley

--
DESCRIPTION FOR FINAL PROJECT

DESCRIPTION: DueCourse is an app for submitting ideas for new courses and voting on them. The purpose is to create a channel of communication to allow students to be involved in the process by which the school decides on what new courses to offer. In terms of functionality, the main things it includes things it includes: create an account, submit a course idea, browse course ideas, sort course ideas, vote on course ideas.

OVERVIEW:
- url: http://duecourse.org
- heroku: http://duecourse.herokuapp.com
- Use a fake @wharton.upenn.edu email to sign up (there's a validator that requires that email type, but it doesn't confirm that it's a real email)
- CSS: You'll see in the headers of the view layouts that I'm pulling in Bootstrap from a CDN. I then modify the CSS on most pages in the header (in the future I'd use a seperate CSS file which is better form but didn't make sense here). There's a ton of custom styling. There's also occasionally styling in the body of the html, but I tried to keep that to a minimum (again, I know it's undesirable; I'd like there to be less).
- JavaScript: I used JS on the new course creation view (to highlight helper text on hover for the form). I also used JS on the show page for looking at an individual course so if you have already voted for a course, it doesn't accept a click (even though the database is smart enough to reject a second vote and the styling makes the button look grayed out if you've voted already using erb, it was necessary to have the JS because if you clicked, it would refresh the page).
-Gems: I used several Gems. 
	- Devise (to handle account creation): https://github.com/plataformatec/devise
	- Cancan (to handle permissions): https://github.com/ryanb/cancan
	- ThumbsUp (to handle voting): https://github.com/bouchard/thumbs_up
	- LetterOpener (to handle mailers on local host): https://github.com/ryanb/letter_opener
	- jQuery (to handle JavaScript): http://rubygems.org/gems/jquery-rails
	- Makes Votable & Acts As Votable (two others I explored for voting): https://github.com/ryanto/acts_as_votable, https://github.com/ryanto/acts_as_votable
-Heroku Addons: I used Sengrid mailer (it sends you an email when you create a new course idea): http://sendgrid.com/docs/Integrate/Frameworks/rubyonrails.html
-Other Addons/Libraries/Gems: I also added Google Anayltics, FB Like (on course show view)
-Resources: I have many resources. In the database the main three tables are users, courses, and votes. Votes has scopes, belongs to two things, and a validator. User has 5 validators and acts as voter. Course acts as votable, belongs to user, has a TON of scopes, and two validators. There are a lot of routes, most resources are CRUD, but there are some custom one off routes too (landing page, admin, etc).
-Validators: there are at least 6 across users, course, and votes.
-Scopes: there are at least 8 across courses and votes.
-I really appreciate all the help this semester.



--
PREVIOUS SUBMISSION NOTES FROM HW
-- 
(11/18)
ISSUES: had to figure out mouseout/over. Wish there was a way to disable a button if someone has voted. Would love help w that. Initial searches weren't sufficient.

WHAT I DID: I implemented a change to color of helper text on a form when the user mouses over a div. I know, mindblowing!

--
(11/12)
ISSUES: Implementing a scope was pretty straight forward for me. I'm still having trouble with logout which is unrelated to this assignment but I'd love any troubleshooting tips!

WHAT I DID: I put a scope called rank on my courses index view. It orders the courses and limits the number pulled from the database to 10.

--
(11/5)
ISSUES: Because I used the Heroku interface to add Sendgrid, isntead of the command line, I had some issues getting credentials and had to remove it, and then re-add it via command line. Also, I'm trying to implement a voting system which is giving me a big of a headache.

WHAT I DID: Added Sendgrid Heroku addon so that you get an email when you create a course that says the name of the course you created. Also, some basic house keeping. 

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
