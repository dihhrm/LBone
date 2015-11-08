# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(name: 'Admin', username: 'admin', email: 'admin@admin.com', level: 1, status: true, password: 'admin', password_confirmation: 'admin')
User.create(name: 'Diego', username: 'diego', email: 'diego@diego.com', level: 2, status: true, password: 'diego', password_confirmation: 'diego')
