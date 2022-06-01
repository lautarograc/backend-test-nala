FactoryBot.define do
  factory :employee do
    full_name { "MyString" }
    personal_id { "MyString" }
    email { "MyString" }
    position { "MyString" }
    salary { 1 }
    active { false }
    starting_date { "MyString" }
  end
end
