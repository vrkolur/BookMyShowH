FactoryBot.define do
  factory :movie do
    name { "MyString" }
    about { "MyText" }
    genre { "MyString" }
    runtime { 1 }
  end
end
