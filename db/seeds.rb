# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

initial_user = User.create(name: "Jason", email: "test@test.com", password: "123456")

Card.create(front:           "This is the front",
            back:            "This is the Back",
            correct_answers: 0,
            wrong_answers:   0,
            user: initial_user)
