# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'factory_girl_rails'

FactoryGirl.create_list :user, 10
FactoryGirl.create_list :ride, 10, user: User.first # make this pull a random user
FactoryGirl.create_list :booking, 10, user: User.first, ride: Ride.first
FactoryGirl.create_list :review, 10, user: User.first, ride: Ride.first 
