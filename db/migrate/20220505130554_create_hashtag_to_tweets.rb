class CreateHashtagToTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :hashtag_to_tweets do |t|

      t.timestamps
    end
  end
end
