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
    main_image_link: "https://dl.dropbox.com/s/p8596qbylibmico/music.jpg?dl=0",
    image_link: "https://dl.dropbox.com/s/il3tctb1t9hb73f/music.png?dl=0"
  },
  {
    name: "Tech",
    main_image_link: "https://dl.dropbox.com/s/x3ld6who9etlxaq/tech.jpg?dl=0",
    image_link: "https://dl.dropbox.com/s/skr8i19h1fo27rw/tech.jpg?dl=0"
  },
  {
    name: "Cooking",
    main_image_link: "https://dl.dropbox.com/s/u21h2hyqeoltvu4/cooking.jpg?dl=0",
    image_link: "https://dl.dropbox.com/s/irdnria945za3lv/cooking.png?dl=0"
  },
  {
    name: "Life Skills",
    main_image_link: "https://dl.dropbox.com/s/gpwj8ljmmbzkbju/life-skill.jpg?dl=0",
    image_link: "https://dl.dropbox.com/s/pd36k7ph0ude3w5/life-skill.png?dl=0"
  },
  {
    name: "Tutoring",
    main_image_link: "https://dl.dropbox.com/s/72j0pgsz8kikl2o/tutoring.jpg?dl=0",
    image_link: "https://dl.dropbox.com/s/4zac0w22l2gncu5/tutoring.png?dl=0"
  },
  {
    name: "Business",
    main_image_link: "https://dl.dropbox.com/s/9o216vnv7qz4f5n/business.jpg?dl=0",
    image_link: "https://dl.dropbox.com/s/0z1zs5utvwd53cz/business.png?dl=0"
  },
  {
    name: "Office Skills",
    main_image_link: "https://dl.dropbox.com/s/k3i3itis9kxobdc/office-skills.jpg?dl=0",
    image_link: "https://dl.dropbox.com/s/qi6nj2rz3e164cn/office-skills.png?dl=0"
  },
  {
    name: "Languages",
    main_image_link: "https://dl.dropbox.com/s/8852jomy92plahn/languages.jpg?dl=0",
    image_link: "https://dl.dropbox.com/s/tkle8bligulmzb0/language.png?dl=0"
  },
  {
    name: "Personal Development",
    main_image_link: "https://dl.dropbox.com/s/j4jpctmiktdjugm/personal-development.jpg?dl=0",
    image_link: "https://dl.dropbox.com/s/i54shg81xwxdj3s/personal-dev.png?dl=0"
  },
  {
    name: "Arts",
    main_image_link: "https://dl.dropbox.com/s/4af5uc3rfbxb662/art.jpg?dl=0",
    image_link: "https://dl.dropbox.com/s/qt68382j4mt99in/arts.png?dl=0"
  },
  {
    name: "Photography",
    main_image_link: "https://dl.dropbox.com/s/orog42lro2klwvy/photography.jpg?dl=0",
    image_link: "https://dl.dropbox.com/s/thzra6s13x4nhx8/photography.png?dl=0"
  },
  {
    name: "Fitness",
    main_image_link: "https://dl.dropbox.com/s/fl2n6dhcg6oblqq/fitness.jpg?dl=0",
    image_link: "https://dl.dropbox.com/s/tklzi5qlu5cvl7b/fitness.png?dl=0"
  },
  {
    name: "Academics",
    main_image_link: "https://dl.dropbox.com/s/qvv2ttb6qxjxysh/academics.jpg?dl=0",
    image_link: "https://dl.dropbox.com/s/hgvqb5nytv4tlf7/academics.png?dl=0"
  },
  {
    name: "Other",
    main_image_link: "https://dl.dropbox.com/s/tlne1k1xepuwukb/other.png?dl=0",
    image_link: "https://dl.dropbox.com/s/b3xqctdjerc77t8/other.png?dl=0"
  },
]


#### ONLY USE IF HELD PREVIOUS DATABASE OF ONLY CATEGORY NAMES
# count_id = 1
# categories.each do |category|
#   database_category = Category.find(count_id)
#   database_category.main_image_link = category[:main_image_link]
#   database_category.save!
#   count_id += 1
# end
#### 

#### INITIALISE CATEGORIES
categories.each do |category|
  Category.create!(category)
end

projects = [
  {
    name: "KidsXpress Mount Elbrus Climb",
    balance_raised: 0,
    active: true,
    image_link: "https://static1.squarespace.com/static/5923e02dd482e9dbfe3618b4/5924f3ecc534a5b20608f75b/59c45a2fcf81e0c3bc1e87f3/1537231951802/SydneyFamilyShow_Slide2.jpg?format=1000w"
  },
  {
    name: "MS Readathon 2019",
    balance_raised: 0,
    active: true,
    image_link: "https://www.onlymelbourne.com.au/images3/0818-readathon.jpg"
  },
  {
    name: "Cure Cancer Open Air Cinema",
    balance_raised: 0,
    active: true,
    image_link: "https://i.ytimg.com/vi/ieFxoUbR4BA/maxresdefault.jpg"
  },
]

projects.each do |project|
  Project.create!(project)
end
