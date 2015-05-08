FactoryGirl.define do
  sequence(:email){ |n| "test_#{n}@test.com" }

  factory :duck do
    paypal_email { generate(:email) }
    name Faker::Company.name
    price Random.rand(0..10000.0)
  end
end