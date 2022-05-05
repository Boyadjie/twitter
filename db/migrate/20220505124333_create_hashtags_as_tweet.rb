class CreateHashtagsAsTweet < ActiveRecord::Migration[7.0]
  def change
    create_table :hashtags_to_tweets do |t|
      t.integer :tweet_id
      t.integer :hashtag_id
      t.timestamps
    end
  end
end
