FactoryBot.define do
  factory :employee do
    full_name { "MyString" }
    sequence(:personal_id) { |n| "MyString#{n}" }
    sequence(:email) { |n| "MyString#{n}" }
    position { "MyString" }
    salary { 1 }
    city { "MyString" }
    country { "MyString" }
    active { false }
    starting_date { "MyString" }
    status { "probationary" }
  end
end
