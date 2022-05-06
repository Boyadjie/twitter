class Hashtag < ApplicationRecord
  has_many :hashtags_to_tweets
  has_many :tweets, through: :hashtags_to_tweets

  validates :hashtag, uniqueness: true
  validates :hashtag, length: { in: 1..20 }
  validates :hashtag, format: { with: %r{\A(\w|[0-9])+\z}, message: "only allows alphanumeric hashtag" }
end
