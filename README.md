# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


1. What is the need (i.e. challenge) that you will be addressing in your project?

The need we are addressing is the sense of community lost from the days of community post boards. A town postboard full of events that help promote local charity organisations and projects has in many communities been removed. We aim to replace and emulate this long gone tradition and bring communities closer in doing so.

4. Describe the network infrastructure the App may be based on.

For ease of deployment our application is hosted with the could application platform Heroku. Heroku is integrated with git so the command line interface is simple to understand and enables a very quick deployment phase with next to no hassle (provided development was executed well).

7. Identify and describe the production database setup (i.e. postgres instance).

Tear Off uses PostgreSQL to handle database storage. PostgreSQL is an object-relational database that uses a postgres server to store data with the SQL language. 
In production with Heroku the steps to set up the database are simple. The Heroku infrastructure sets itself at the build stage of the application with a postgreSQL server for the full application to communicate with. This is done automatically after the developer uses git to push the app to Heroku. At this stage the database is ready to setup with migrations and populate with data. 

10. Detail any third party services that your App will use.

- Amazon S3: Online cloud based storage used to store our database images using Active Storage.
- Dropbox: Online cloud based storage used to store static sitewide images.
- Stripe: Online payment software to handle transactions between our users. 

13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

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

16. Provide Wireframes for your App.

!['https://dl.dropboxusercontent.com/s/mx84s00e3bsvrvb/home-page.png?dl=0'](https://dl.dropboxusercontent.com/s/mx84s00e3bsvrvb/home-page.png?dl=0)

!['https://dl.dropboxusercontent.com/s/drc4pjc0lkcszeq/about-us-flyer-show.png?dl=0'](https://dl.dropboxusercontent.com/s/drc4pjc0lkcszeq/about-us-flyer-show.png?dl=0)

!['https://dl.dropboxusercontent.com/s/5r322hck5spre3d/flyer-show-category-show.png?dl=0'](https://dl.dropboxusercontent.com/s/5r322hck5spre3d/flyer-show-category-show.png?dl=0)

!['https://dl.dropboxusercontent.com/s/2481eu755b0hthl/profiles.png?dl=0'](https://dl.dropboxusercontent.com/s/2481eu755b0hthl/profiles.png?dl=0)

19. Provide an overview and description of your Source control process.

Our source control process used git and GitHub to develop the application. One developer created an initial GitHub repo for all our working branches to be commited to. Working locally on the development machine all changes were created in a seperate git branch which once that particular feature had been completed was pushed to GitHub. From there a pull request is made and the other developers viewed the changes if necessary and together settled the conflicts we reached. Then the branch was merged with master and deleted. 

22. Discuss methods you will use to protect information and data.

By using third party software for payments we shift the responsibility of user payment information to the trusted Stripe service. A number of checks are used throughout the rails application that helps to prevent attacks directly to the postgreSQL database. These are inbuilt methods that are shipped with the rails gem. 