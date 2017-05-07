FactoryGirl.define do
  factory :user do
    username { Faker::Name.name }
    email { Faker::Internet.email }
    password "password123"
    # auth_token: "authtoken"
  end
end
