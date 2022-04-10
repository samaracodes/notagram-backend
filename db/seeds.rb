# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(name: "Samara", username: "samaralovescode", password_digest: "sam", bio: "Coding is life!!!", profile_picture: "https://s3.amazonaws.com/shecodesio-production/students/avatars/000/033/250/medium/etetre.jpg?1622483607")

post1 = Post.create(image: "https://cdn.sanity.io/images/o3sbc3dq/production/3e84c7f8a28df9b06fb9076fbd52517b92fb6c60-3848x2628.png?w=800&h=546&fit=crop", caption: "My new work setup")

userpost1 = UserPost.create(user_id: 1, post_id: 1)

post2 = Post.create(image: "https://www.under30ceo.com/wp-content/uploads/2013/12/working-on-the-beach.png", caption: "GOALS.")

userpost2 = UserPost.create(user_id: 1, post_id: 2)