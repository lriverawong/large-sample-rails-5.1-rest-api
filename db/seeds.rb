# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do
#   Todo.create!({
#     title: Faker::Beer.name,
#     created_by: Faker::Number.number
#   })
# end
# todo_lists = Todo.order(:created_at).take(5)
# 3.times do
#   todo_lists.each { |todo_list| todo_list.items.create!(name: Faker::Pokemon.name) }
# end

# Another seeding technique
Todo.destroy_all
puts "Destroyed old records."
# seed 50 records
50.times do
  todo = Todo.create!(title: Faker::Pokemon.name, created_by: Faker::Number.number)
  todo.items.create!(name: Faker::Beer.name, done: false)
end
puts "Finished created 50 new records."