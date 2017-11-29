# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Habit.destroy_all
Occurrence.destroy_all

health = Category.create(
  name: "Health",
  img_url: "abc"
)

fitness = Category.create(
  name: "Fitness",
  img_url: "dec"
)

home = Category.create(
  name: "Home",
  img_url: "fjg"
)

smoking = Habit.create(
  name: "Somking",
  goal: "not do it"
)

happened = smoking.occurrences.create(
  note: "happened only one time today"
)
