FactoryGirl.define do
  sequence(:email){ |n| "test_#{n}@test.com" }

  factory :duck do
    paypal_email email
    name Faker::Company.name
    cost Random.rand(0..10000.0)
  end
end