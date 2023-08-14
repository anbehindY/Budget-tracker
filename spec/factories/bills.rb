FactoryBot.define do
  factory :bill do
    association :author, factory: :user

    name { Faker::Name.name }
    amount { Faker::Number.within(range: 1..1000) }  # Adjust the range as needed
  end
end
