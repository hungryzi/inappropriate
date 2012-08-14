FactoryGirl.define do
  factory :joke do
    content { Faker::Lorem.sentences 4 }
    credit  { Faker::Lorem.sentence 10 }
    status  0
  end
end
