# spec/factories/items.rb
FactoryBoy.define do
  factory :item do
    name { Faker::Pokemon.name }
    done false
    todo_id nil
  end
end