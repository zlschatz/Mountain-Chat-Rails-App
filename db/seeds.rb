# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jackson_hole = Mountain.create(name: "Jackson Hole Mountain Resort", city: "Jackson", state: "Wyoming")

park_city = Mountain.create(name: "Park City Mountain Resort", city: "Park City", state: "Utah")

trail_1 = Trail.create(name: "Trail 1", mountain_id: 1)

trail_2 = Trail.create(name: "Trail 2", mountain_id: 1)