# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Company.create( { :name=>"クソブラック株式会社", :email=>"korosuke@allfesta.com", :hashed_password=>Authentication.crypt("korosuke@allfesta.com:all123123"), :disable=>0 } )