class HashtagsToTweet < ApplicationRecord
  belongs_to :hashtag
  belongs_to :tweet

  validates :hashtag, presence: true
  validates :tweet, presence: true

  # Find the tweet to get its hashtags
  def find_hashtags_of_tweet(tweet_id)
    htts = HashtagsToTweet.where(tweet_id: tweet_id)
  end
end
