# README
# Tear Off WebApp #


[Link to Tear Off Home Page](https://tear-off.herokuapp.com "Tear Off Homepage")
___________
[Link to Tear Off GitHub Repository](https://github.com/PushBtnsDev/tear-off-app "Tear Off Repository")
_________

## Description 

### *Purpose*

The purpose of this web app was to build a platform that ensures maximum benefit for all possible parties. Incorporating a fundraising element to the platform was done so with the intention of encouraging a collaborative effort from all users on the platform. The aspect of "Tear-Off" that we believe separates us from other learning based web apps is that we use learning as a driving force for fundraising which should encourage users to sign up. 

### *Functionality*

This product of "Tear Off" enables users to sign up, create a profile and act as either a host or an attendee. As a host the user will create a "Flyer" where they advertise a skill, class or experience that attendees can "Tear-Off" a ticket to. When the Flyer is created the host includes all necessary information including cost, location and a description. They also set which of the three projects they want their flyer to contribute to. Once an attendee has paid for and "Torn Off" their ticket, they are able to view the profiles of other users who are attending. 

*Key Features*: 

* Authentication and Login with Devise integration
* Authorisation methods to control user experience
* Payment System uses Stripe integration
* Profile displays previously attended events and hosted events
* Profile display picture uses AWS Bucket storage
* Search feature to filter results for Flyers
* Total contributions for projects are updated live on the home page
* Simple and concise user interface and site navigation  
* Ability to view profiles of others attending the same event once paid


### *Screenshots*

![](https://dl.dropboxusercontent.com/s/vl1yzfpck5sv3n9/home.png?dl=0)
![](https://dl.dropboxusercontent.com/s/eth0uhmfcvt3tq0/about-us.png?dl=0)
![](https://dl.dropboxusercontent.com/s/iml4fl9q8ufli2o/projects.png?dl=0)
![](https://dl.dropboxusercontent.com/s/fk8j8p7u2tfcnib/all-flyers.png?dl=0)
![](https://dl.dropboxusercontent.com/s/vr26itogf3uyc3l/flyer-show.png?dl=0)
![](https://dl.dropbox.com/s/1g9eq45sj0lup85/profile.png?dl=0)

### *Tech Stack*

* Front-end: HTML, Sass, ERB, Javascript
* Back-end: Ruby, Ruby on Rails
* Database: PostgreSQL Database with ActiveRecord
* Deployment: Heroku

### *Instructions*

To run this package: 

1. In the directory you wish to install, in terminal run 'git clone https://github.com/PushBtnsDev/tear-off-app.git'
2. 'bundle install'
3. 'rails db:reset'
4. 'rails server' to run the local server
5. Navigate to http://localhost:3000/
6. Sign up to create a profile


### *User Journey*

![](https://dl.dropboxusercontent.com/s/0afopzq8povegjf/Tear-Off%20User%27s%20Journey.png?dl=0)

_________

## Design

### *Process*

Once the idea for our platform was areed upon we worked on the basic user journey which is as follows:
![alt text](https://dl.dropboxusercontent.com/s/cmh7wryvwuzoo7g/User-journey.jpg?dl=0)

Following this we focused on the design board, including the logo which was an original by a graphic designer, the color palette and fonts to be used. Shown below: 
![](https://dl.dropboxusercontent.com/s/xt8zggm9mdr369s/design-board.png?dl=0) 

Once the theme of the website was decided upon we worked on the wireframes that we based the structure of the pages on. 

### *Wireframes*
 

[Link to downloadable pdf of the wireframes](https://dl.dropbox.com/s/ajnvadd8yc62ufb/Tear-Off.pdf?dl=0 "Wireframes")


### *User Stories*

As a Host I want to be able to:
- Create events
- Set the cost of my event
- See who is going to my event 
- Choose which project I want my event to support

As an attendee I want to be able to:
- Find/Join events to attend
- See who is going to mutual events
- See which project the event is contributing towards


As a general user I want to be able to:
- Track the fundraising efforts
- Learn more about the projects
- Customise my profile page


### *ERD*

![](https://dl.dropboxusercontent.com/s/ainksmzyp43wnbu/ERD.png?dl=0)


_________

## Details

### *Project Plan/Timeline*

The first week of the project was used to talk about the concept for the web app, create a design and wireframes to give an outline and also to design the database for the required models.

The second week was primarily used to code the backend of the app with the controllers and views starting to take shape. 

The final week was used to continue backend and to begin styling using Sass. 

### *Team Communication and Task Management*

The team communicated daily via a channel created in Slack

Tasks were managed via Trello

![](https://dl.dropboxusercontent.com/s/4hxmx44y1mkt354/trello1.png?dl=0)
![](https://dl.dropboxusercontent.com/s/hpihvg6tel00pt0/trello2.png?dl=0)
![](https://dl.dropboxusercontent.com/s/75kycymb3xq6mr2/trello3.png?dl=0)
_______

## Questions

1. **What is the need (i.e. challenge) that you will be addressing in your project?**

The need we are addressing is the sense of community lost from the days of community post boards. A town postboard full of events that help promote local charity organisations and projects has in many communities been removed. We aim to replace and emulate this long gone tradition and bring communities closer in doing so.


2. **Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?** 

There are a number of event organising platforms out there such as MeetUp, and there are learning based platforms like Udemy but we believed that there is a better way to blend these types of web apps. This came in the form of “Tear-Off”, where we decided to bring a more casual style of organisation and incorporating a space for users to learn various skills. It is an app idea we didn’t believe existed at a well explored level. We believe that the problem is that this type of platform isnt being fully utilised at this point in time. The people benefiting in most of these platforms are people with knowledge and people willing to pay to learn, yet this connection could include a fundraising type of entity that would encourage more people to use the service through adopting the mantra of a “community”. If the transaction is happening regardless why not allow some extra good of it. The community aspect of the app is built upon the theme of the website having “Tear-Off Flyers” which advertise a certain class/skill/experience, hosted by users and attended by users. The funds are distributed to the host and their selection of the projects on the site that month. This system was built with emphasis on a community working toward a common goal using our learning platform to drive that movement. Showing that we don’t have to invent ways to do good things, more that we can evolve existing platforms to get the same outcome.

3. **Describe the project will you be conducting and how. your App will address the needs.**

In our Project we will be conducting an online tear-off system which is similar to a learning based platform for people who can provide certain services and skills that people can learn. Our goal is that people can actually help and make a contribution to the projects we are fundraising for. Our app will help people who potentially want to host or share a skill connect with those who want to learn that skill, a by product of this will be fundraising.

4. **Describe the network infrastructure the App may be based on.**

For ease of deployment our application is hosted with the could application platform Heroku. Heroku is integrated with git so the command line interface is simple to understand and enables a very quick deployment phase with next to no hassle (provided development was executed well).

5. **Identify and describe the software to be used in your App.**
    * Ruby: A Object-Oriented-Language which is most commonly used to write back-end logic within web apps
    * HTML: HyperText Markup Language. A language used to give structure and basic styling to web pages. 
    * ERB: Embedded Ruby. Used to write ruby logic within a HTML page that is read as HTML by the browser.
    * Sass: Syntactically Awesome Style Sheets. Can perform additional features to CSS while accepting standard CSS. The additional features include, variables and nested elements (cleaner code and grouping).
    * JavaScript: An Object-Oriented-Language. The most popular language for writing front-end code in web development. It allows for dynamic animation of elements and transforming the data on a web-page without interacting with the database. 

6. **Identify the database to be used in your App and provide a justification for your choice.**

We are using PostgreSQL for our app, it is being used as a main data warehousing system. The relative data used in our app is all stored in Postgres. We run the analytic workflows, because we are operating in the cloud and are required to use an open-source solutions.

7. **Identify and describe the production database setup (i.e. postgres instance).**
Tear Off uses PostgreSQL to handle database storage. PostgreSQL is an object-relational database that uses a postgres server to store data with the SQL language. 
In production with Heroku the steps to set up the database are simple. The Heroku infrastructure sets itself at the build stage of the application with a postgreSQL server for the full application to communicate with. This is done automatically after the developer uses git to push the app to Heroku. At this stage the database is ready to setup with migrations and populate with data. 

8. **Describe the architecture of your App.**
![](https://dl.dropboxusercontent.com/s/910vl03h52h90el/architecture.png?dl=0)

*User Web Browser*

- Displays the webpage
- Sends and receives HTTP requests to/from the web server

*Web Server*

- Deals with HTTP requests and serves the requested route

*Routes*

- Gives the directions for the app and determines which methods are run in the controller based on the server requests

*Controller*

- Contains the methods that are run when it is triggered by a route that the web page has navigated to
- Selects which parts of the database to send back to the views

*Views*

- Display the content in a user friendly way, for our app it is in ERB and HTML

*Database*

- A PostgreSQL relational database was used to store the information displayed throughout the web app. 



9. **Explain the different high-level components (abstractions) in your App.**

Models define the structure of the data we store in our database, including attributes of objects, helper methods to use on those objects, relations to other models that may have dependencies and define relationships between objects.

Views use HTML and ERB to dictate how the page of the application will appear on the browser. These are styled with Sass files. 

Controllers connect the Models and Views. Controller methods are called via routes, which are in turn triggered by HTTP requests from the user.

Active Record

 Active record interprets SQL so that we can communicate with the database using Ruby meaning the data in the database can be treated as a Ruby object.

Active Storage

Allows us to upload images through forms, allows us to communicate with the Amazon S3 Bucket which hosts our images. 


10. **Detail any third party services that your App will use.**

- Amazon S3: Online cloud based storage used to store our database images using Active Storage.
- Dropbox: Online cloud based storage used to store static sitewide images.
- Stripe: Online payment software to handle transactions between our users. 

11. **Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).**

Meetup is the most similar app to ours in terms of their datastructure. Their events are like our "Flyers" where they have a host and other information regarding the event, yet also have a comment section for people to discuss the event. They have also used a map to display where the event is which would have required a location gem. They don't have a payment system or any projects which is a disimilar structure between the two. 

12. **Discuss the database relations to be implemented.**

The following relations were used throughout our database and are discussed in more detail in the next question:

- has_many
- belongs_to
- has_many, through:
- has_one_attached
- has_one

13. **Describe your project’s models in terms of the relationships (active record associations) they have with each other.**

!['ERD'](https://dl.dropboxusercontent.com/s/ainksmzyp43wnbu/ERD.png?dl=0)



## Profile 
belongs_to :user
has_attached :image

## User
has_many :flyers_attended_by_users
has_many :flyers, through: :flyers_attended_by_users
has_one :profile

## Flyer
belongs_to :user
belongs_to :project
belongs_to :category
has_many :flyers_attended_by_users
has_many :users, through: :flyers_attended_by_users
  
## Flyers_attended_by_users
In order to relate users and flyers a join table called Flyers_Attended_By_Users for users to join many Flyers and for Flyers to have many Users attending them. 

belongs_to :user
belongs_to :flyer

## Category
has_many :flyers

## Project
has_many :flyers

14. **Provide your database schema design.**

```ruby
 create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_link"
    t.string "main_image_link"
  end

  create_table "flyer_attended_by_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "flyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flyer_id"], name: "index_flyer_attended_by_users_on_flyer_id"
    t.index ["user_id"], name: "index_flyer_attended_by_users_on_user_id"
  end

  create_table "flyers", force: :cascade do |t|
    t.string "title"
    t.float "cost"
    t.text "info"
    t.time "time"
    t.date "date_of_event"
    t.bigint "user_id"
    t.bigint "project_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "max_attendees"
    t.text "address"
    t.index ["category_id"], name: "index_flyers_on_category_id"
    t.index ["project_id"], name: "index_flyers_on_project_id"
    t.index ["user_id"], name: "index_flyers_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "city"
    t.text "bio"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.text "name"
    t.float "balance_raised"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active"
    t.string "image_link"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
```


15. **Provide User stories for your App.**

Refer to the user stories provided above in the Design section of the README.

16. **Provide Wireframes for your App.**

!['https://dl.dropboxusercontent.com/s/mx84s00e3bsvrvb/home-page.png?dl=0'](https://dl.dropboxusercontent.com/s/mx84s00e3bsvrvb/home-page.png?dl=0)

!['https://dl.dropboxusercontent.com/s/drc4pjc0lkcszeq/about-us-flyer-show.png?dl=0'](https://dl.dropboxusercontent.com/s/drc4pjc0lkcszeq/about-us-flyer-show.png?dl=0)

!['https://dl.dropboxusercontent.com/s/5r322hck5spre3d/flyer-show-category-show.png?dl=0'](https://dl.dropboxusercontent.com/s/5r322hck5spre3d/flyer-show-category-show.png?dl=0)

!['https://dl.dropboxusercontent.com/s/2481eu755b0hthl/profiles.png?dl=0'](https://dl.dropboxusercontent.com/s/2481eu755b0hthl/profiles.png?dl=0)

17. **Describe the way tasks are allocated and tracked in your project.**

The tasks were allocated to suit the groups strengths and were tracked through the use of Trello. The screenshots showing this are above in the Details section of the README

18. **Discuss how Agile methodology is being implemented in your project.**
The first principle we are using in this project is we clarify our goal at the first place when we start the project. Because we view our team as an entity. Also effective communication is another of our value in this project. We make sure all the information is share in the team lively. We use slack, Trello and GitHub to track the workload of all team members, which enable us to effectively manage our project. Additionally, each of the team member has the contribution to this project and each of them are accountable for getting their part of the job done. We celebrate even small success and when problem happen in our project, we never point finger or blame to each other.
19. **Provide an overview and description of your Source control process.**

Our source control process used git and GitHub to develop the application. One developer created an initial GitHub repo for all our working branches to be commited to. Working locally on the development machine all changes were created in a seperate git branch which once that particular feature had been completed was pushed to GitHub. From there a pull request is made and the other developers viewed the changes if necessary and together settled the conflicts we reached. Then the branch was merged with master and deleted. 

20. **Provide an overview and description of your Testing process.**

The testing that we carried out was done via manual testing. We ran through our user journey to determine where the errors and bugs were arising. An instance of how we used this manual testing is when found that if a user has not created a profile they are unable to pay to attend flyers, in order to combat this particular issue we redirect the user to the profile page to create one before they can purchase tears. 

21. **Discuss and analyse requirements related to information system security.**

Our requirements for the information security is to make sure the personal information of our user is safely protected from being viewed, changed or removed by Any unauthorised users. And also, we would never use the information of our users for any use or give to another party for any purpose, we value the privacy of our users.

22. **Discuss methods you will use to protect information and data.**

- Encrypt sensitive data such as passwords and credit card information with keys only available to that user
- Reguarly update anti-virus software
- Be transparent with users surrounding the storage of their data

By using third party software for payments we shift the responsibility of user payment information to the trusted Stripe service. A number of checks are used throughout the rails application that helps to prevent attacks directly to the postgreSQL database. These are inbuilt methods that are shipped with the rails gem. 

23. **Research what your legal obligations are in relation to handling user data.**

When handling data the Privacy Act requires companies to regulate the collection and storage of data. The safety of our users is key and we must protect their information from potential threats from hackers or any party unlawfully trying to obtain information they shouldnt have access to. In order to be transparent to the users a condition of use and privacy agreement should be prompted to be signed by users upon sign up. This should outline how their information will be stored and used. We can strengthen our systems by increasing the levels of authentication and ensuring we have a backup system of data in case one is compromised. 



