class HashtagsToTweet < ApplicationRecord
  belongs_to :hashtag
  belongs_to :tweet

  validates :hashtag, presence: true
  validates :tweet, presence: true
end
