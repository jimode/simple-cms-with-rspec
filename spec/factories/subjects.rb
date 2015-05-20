# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subject do
    name { Faker::Lorem.word }
    position { Faker::Number.digit }
    visible "true"
    
    factory :subject_with_pages do
      after(:create) do |subject|
        create(:page, subject: subject)
      end
    end
    
    factory :invalid_subject do
      name nil
      position { Faker::Number.digit }
      visible "false"
    end
  end
end
