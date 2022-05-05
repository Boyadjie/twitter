json.extract! tweet, :id, :body, :user, :created_at, :likes, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
