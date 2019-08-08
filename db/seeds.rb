# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


categories = [
  {
    name: "Music",
    image_link: "https://dl.dropbox.com/s/il3tctb1t9hb73f/music.png?dl=0"
  },
  {
    name: "Tech",
    image_link: "https://dl.dropbox.com/s/skr8i19h1fo27rw/tech.jpg?dl=0"
  },
  {
    name: "Cooking",
    image_link: "https://dl.dropbox.com/s/irdnria945za3lv/cooking.png?dl=0"
  },
  {
    name: "Life Skills",
    image_link: "https://dl.dropbox.com/s/pd36k7ph0ude3w5/life-skill.png?dl=0"
  },
  {
    name: "Tutoring",
    image_link: "https://dl.dropbox.com/s/4zac0w22l2gncu5/tutoring.png?dl=0"
  },
  {
    name: "Business",
    image_link: "https://dl.dropbox.com/s/0z1zs5utvwd53cz/business.png?dl=0"
  },
  {
    name: "Office Skills",
    image_link: "https://dl.dropbox.com/s/qi6nj2rz3e164cn/office-skills.png?dl=0"
  },
  {
    name: "Languages",
    image_link: "https://dl.dropbox.com/s/tkle8bligulmzb0/language.png?dl=0"
  },
  {
    name: "Personal Development",
    image_link: "https://dl.dropbox.com/s/i54shg81xwxdj3s/personal-dev.png?dl=0"
  },
  {
    name: "Arts",
    image_link: "https://dl.dropbox.com/s/qt68382j4mt99in/arts.png?dl=0"
  },
  {
    name: "Photography",
    image_link: "https://dl.dropbox.com/s/thzra6s13x4nhx8/photography.png?dl=0"
  },
  {
    name: "Fitness",
    image_link: "https://dl.dropbox.com/s/ba535wbra2l6h92/fitness.jpg?dl=0"
  },
  {
    name: "Academics",
    image_link: "https://dl.dropbox.com/s/hgvqb5nytv4tlf7/academics.png?dl=0"
  },
  {
    name: "Other",
    image_link: "https://dl.dropbox.com/s/b3xqctdjerc77t8/other.png?dl=0"
  },
]


#### ONLY USE IF HELD PREVIOUS DATABASE OF ONLY CATEGORY NAMES
count_id = 1
categories.each do |category|
  database_category = Category.find(count_id)
  database_category.image_link = category[:image_link]
  database_category.save!
  count_id += 1
end
#### 

#### INITIALISE CATEGORIES
# categories.each do |category|
#   Category.create!(category)
# end

# projects = [
#   {
#     name: "Red Cross",
#     balance_raised: 0,
#   },
#   {
#     name: "Vinnies",
#     balance_raised: 0,
#   },
#   {
#     name: "Cancer Council",
#     balance_raised: 0,
#   },
# ]

# projects.each do |project|
#   Project.create!(project)
# end
