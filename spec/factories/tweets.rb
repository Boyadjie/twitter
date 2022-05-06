FactoryBot.define do
  factory :tweet do
    body { Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false) }
    user { FactoryBot.create(:user) }
    likes { rand(42) }
  end
end