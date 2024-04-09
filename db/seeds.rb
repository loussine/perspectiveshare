# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p "Deleting current database..."

User.destroy_all
Post.destroy_all
Comment.destroy_all

p "Current database deleted!"


p "Creating users..."

User.create!(nickname: "Ulysse", email: "ulysse@yopmail.com", password: "ulysse")
User.create!(nickname: "Uma", email: "uma@yopmail.com", password: "umauma")

p "#{User.all.length} users created!"


p "Creating posts..."

Post.create!(
  title: "First Post",
  content: "This is the content of the first post.",
  url: "https://example.com/first-post",
  user: User.first
)

Post.create!(
  title: "Second Post",
  content: "This is the content of the second post.",
  url: "https://example.com/second-post",
  user: User.second
)

p "#{Post.all.length} posts created!"
