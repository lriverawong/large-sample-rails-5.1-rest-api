# spec/factories/items.rb
FactoryBot.define do
  factory :item do
    name { Faker::Pokemon.name }
    done false
    todo_id nil
  end
end