Hunter Horsley

--
The Heroku page: http://frozen-fjord-4579.herokuapp.com/


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
