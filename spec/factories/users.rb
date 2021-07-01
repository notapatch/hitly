FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password { "password" }

    trait :tested do
      sequence(:email) { |n| "test_user#{n}@example.com" }
    end
  end
end
