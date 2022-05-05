class Tweet < ApplicationRecord
  belongs_to :user
  has_many :hashtags_to_tweets
  has_many :hashtags, through: :hashtags_to_tweets

  validates :nody, length: { in: 1..280 }
end
