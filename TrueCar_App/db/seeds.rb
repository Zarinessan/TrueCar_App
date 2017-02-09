# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users have id and name
# Posts have id, photo_url, owner_id, and caption
# Followings have follower_id and leader_id
# Likes have user_id and post_id


User.create(
	name: "PatrickHulligan",
	password: "hello" )

User.create(
	name: "ErinHulligan",
	password: "world" )

Post.create(
	url: "https://aos.iacpublishinglabs.com/question/ed3d656e3a8c9b5fe63845922ed5d64d/aq/700px-394px/can-corgi-puppies_f3dd708afd5cb9c9_9t7k5pAYTCGhM0AWBjDP4A.jpg?domain=cx.aos.ask.com", 
	user_id: 1,
	caption: "I LOVE CORGIS! We are going to get a puppy someday!" )

Following.create(
	user_id: 1,
	leader_id: 2 )

Like.create(
	user_id: 2,
	post_id: 1 )