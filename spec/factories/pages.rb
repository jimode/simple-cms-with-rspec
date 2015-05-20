# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
    association :subject
    name "An associated Page"
    permalink { Faker::Number.digit }
    position 1
    visible false
  end
end
