# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User1 = User.create(fname: "Keika", lname: "Jones", email: "keika.jones@gmail.com", password: "keika")
User2 = User.create(fname: "Darlene", lname: "Portades", email: "darlene.portades@gmail.com", password: "darlene")
User3 = User.create(fname: "Jamie", lname: "Christian", email: "jamie.christian@gmail.com", password: "jamie")
User4 = User.create(fname: "Brian", lname: "Fountain", email: "brian.fountain@gmail.com", password: "brian")
User5 = User.create(fname: "Zach", lname: "Feldman", email: "zach.feldman@gmail.com", password: "zach")

Post1 = Post.create(body: "Hello world", user_id: 1)
Post2 = Post.create(body: "Awesome!", user_id: 2)
Post3 = Post.create(body: "Today's a great day!", user_id: 3)
Post4 = Post.create(body: "I love rails!", user_id: 4)
Post5 = Post.create(body: "Let's all learn something new today.", user_id: 5)

Comment1 = Comment.create(body: "Hi world!", post_id: 1, user_id: 2)
Comment2 = Comment.create(body: "Wow!", post_id: 1, user_id: 4)
Comment3 = Comment.create(body: "You're awesome!", post_id: 2, user_id: 1)
Comment4 = Comment.create(body: "Everyone's awesome!", post_id: 2, user_id: 3)
Comment5 = Comment.create(body: "I agree!", post_id: 3, user_id: 5)
Comment6 = Comment.create(body: "Me too!", post_id: 4, user_id: 2)
Comment7 = Comment.create(body: "Ok!", post_id: 5, user_id: 4)

Relationship1 = Relationship.create(follower_id: 1, followed_id: 2)
Relationship2 = Relationship.create(follower_id: 1, followed_id: 3)
Relationship3 = Relationship.create(follower_id: 2, followed_id: 3)
Relationship4 = Relationship.create(follower_id: 2, followed_id: 1)
Relationship5 = Relationship.create(follower_id: 3, followed_id: 4)
Relationship6 = Relationship.create(follower_id: 3, followed_id: 2)
Relationship7 = Relationship.create(follower_id: 4, followed_id: 5)
Relationship8 = Relationship.create(follower_id: 4, followed_id: 1)
Relationship9 = Relationship.create(follower_id: 5, followed_id: 2)
Relationship10 = Relationship.create(follower_id: 5, followed_id: 4)