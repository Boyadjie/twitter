FactoryBot.define do
  factory :user do
    full_name { Faker::Kpop.girl_groups }
    nickname { Faker::Kpop.boy_bands }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end
end