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

trail_1 = Trail.create(name: "Trail 1", mountain_id: 1)

trail_2 = Trail.create(name: "Trail 2", mountain_id: 1)

trail_3 = Trail.create(name: "Trail 3", mountain_id: 1)

trail_4 = Trail.create(name: "Trail 4", mountain_id: 1)

Comment.create(content: "Sunny on the right side. Bumped on the left.", trail_id: 1, user_id: 1)
Comment.create(content: "Dust over crust. Beware!", trail_id: trail_1, user_id: 2)
Comment.create(content: "Stay close to the chair on skier's left. Fresh powder around the trees.", trail_id: 1, user_id: 3 )
Comment.create(content: "Lost my glove on the slope if anyone grabs it, let me know!", trail_id: 1, user_id: 4)