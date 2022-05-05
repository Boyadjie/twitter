class Hashtag < ApplicationRecord
  has_many :hashtags_to_tweets
  has_many :tweets, through: :hashtags_to_tweets
end
