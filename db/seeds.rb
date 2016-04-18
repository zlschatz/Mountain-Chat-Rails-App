# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

zach = User.create(name: "Mountain_Zach" , email: "zach@example.com", password: "password")

greg = User.create(name: "Mountain_Greg" , email: "greg@example.com", password: "password")

joe = User.create(name: "Mountain_Joe" , email: "joe@example.com", password: "password")

chad = User.create(name: "Mountain_Chad" , email: "chad@example.com", password: "password")

jackson_hole = Mountain.create(name: "Jackson Hole Mountain Resort", city: "Jackson", state: "Wyoming")

park_city = Mountain.create(name: "Park City Mountain Resort", city: "Park City", state: "Utah")

vail = Mountain.create(name: "Vail Mountain Resort", city: "Vail", state: "Colorado")

snowbird = Mountain.create(name: "Snowbird Ski Resort", city: "Snowbird", state: "Utah")

trail_1 = Trail.create(name: "Bivouac", mountain_id: 1)

trail_2 = Trail.create(name: "Thunder", mountain_id: 1)

trail_3 = Trail.create(name: "Corbet's Couloir", mountain_id: 1)

trail_4 = Trail.create(name: "Kemmerer", mountain_id: 1)

trail_5 = Trail.create(name: "Double Jack", mountain_id: 2)

trail_6 = Trail.create(name: "New Moon", mountain_id: 2)

trail_7 = Trail.create(name: "Shadow Ridge", mountain_id: 2)

trail_8 = Trail.create(name: "Fortune Teller", mountain_id: 2)

trail_9 = Trail.create(name: "Chopstix", mountain_id: 3)

trail_10 = Trail.create(name: "The Slot", mountain_id: 3)

trail_11 = Trail.create(name: "Sweet N Sour", mountain_id: 3)

trail_12 = Trail.create(name: "Headwall", mountain_id: 3)

trail_13 = Trail.create(name: "Gadzooks", mountain_id: 4)

trail_14 = Trail.create(name: "Bananas", mountain_id: 4)

trail_15 = Trail.create(name: "Lone Star", mountain_id: 4)

trail_16 = Trail.create(name: "Regulator Johnson", mountain_id: 4)

Comment.create(content: "Sunny on the right side. Bumped on the left.", trail_id: 1, user_id: 1)
Comment.create(content: "Dust over crust. Beware!", trail_id: 1, user_id: 2)
Comment.create(content: "Stay close to the chair on skier's left. Fresh powder around the trees.", trail_id: 1, user_id: 3 )
Comment.create(content: "Lost my glove on the slope if anyone grabs it, let me know!", trail_id: 1, user_id: 4)