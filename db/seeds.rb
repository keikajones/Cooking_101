# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User1 = User.create(fname: "Keika", lname: "Jones", email: "keika.jones@gmail.com", password: "keika", level: "Sous Chef", photo: "https://scontent-b-lga.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/1385715_10203194664532601_2714359376791136339_n.jpg?oh=cda81c9ce2b5363d18e31fd5b9bb568a&oe=54F4F648")
User2 = User.create(fname: "Darlene", lname: "Portades", email: "darlene.portades@gmail.com", password: "darlene", level: "Line Cook", photo: "http://www.frenchiefever.com/wordpress/wp-content/uploads/2011/08/french_bulldog-breed.jpg")
User3 = User.create(fname: "Jamie", lname: "Christian", email: "jamie.christian@gmail.com", password: "jamie", level: "Line Cook", photo: "https://scontent-b-lga.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/10624892_10203194655172367_8955374368142086491_n.jpg?oh=f0c277ec9a66431d3f1a68eba7abb97c&oe=54BBDB64")
User4 = User.create(fname: "Brian", lname: "Fountain", email: "brian.fountain@gmail.com", password: "brian", level: "Executive Chef", photo: "http://nycda.com/wp-content/uploads/2014/01/brianfountain.png")
User5 = User.create(fname: "Zach", lname: "Feldman", email: "zach.feldman@gmail.com", password: "zach", level: "Sous Chef", photo: "http://nycda.com/wp-content/uploads/2014/06/Photo-Jun-19-2-17-36-PM.png")

Post1 = Post.create(title: "Nuts for Salads", body: "Hey, so I'm making a simple beet and spinach salad and thought it would be a great idea to add some sort of nuts to the mix. What kind of nut would you guys recommend?", tag: 1, user_id: 1)
Post2 = Post.create(title: "Pureeing Soup", body: "What's the easiest way to create a really smooth vegetable puree soup, without a fancy pureeing machine?", tag: 2, user_id: 2)
Post3 = Post.create(title: "Mackerel", body: "I love mackerel, but I'm never sure how to tell if it's fresh or not. Any tips?", tag: 3, user_id: 3)
Post4 = Post.create(title: "Cut of Pork", body: "What part of the pork is the easiest to make and is the most tender?", tag: 4, user_id: 4)
Post5 = Post.create(title: "Souffle", body: "Everytime I try to make a souffle, it falls on me. Any suggestions as to how to prevent that from happening?", tag: 5, user_id: 5)

Comment1 = Comment.create(body: "Try walnuts! Toast them with a bit of honey to add another layer of flavor too!", post_id: 1, user_id: 2)
Comment2 = Comment.create(body: "After pureeing the vegetable with a vegetable broth in a regular blender, strain it through a cheesecloth to get all the lumps out.", post_id: 2, user_id: 4)
Comment3 = Comment.create(body: "I agree with Brian's comment, but also you can save the lumps and mix it with a spicy paste like the korean red pepper paste for example, and create a great sauce that can be used many different ways!", post_id: 2, user_id: 1)
Comment4 = Comment.create(body: "If the mackerel is really fresh it shouldn't have as strong of a smell.", post_id: 3, user_id: 1)
Comment5 = Comment.create(body: "Ask the fish monger when the batch came in. Only buy if they say it came in that morning!", post_id: 3, user_id: 5)
Comment6 = Comment.create(body: "The pork shoulder and pork butt are the most tender parts.", post_id: 4, user_id: 2)
Comment7 = Comment.create(body: "Make sure not to over mix your batter! That's a huge mistake many people make. Also, bake it on the bottom rack of the oven to get the most lift!", post_id: 5, user_id: 4)

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