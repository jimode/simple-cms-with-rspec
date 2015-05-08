# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :section do
    name "MyString"
    position 1
    visible false
    content_type "MyString"
    content "MyText"
  end
end
