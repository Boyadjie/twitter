require 'rails_helper'

RSpec.describe "hashtags_to_tweets/index", type: :view do
  before(:each) do
    assign(:hashtags_to_tweets, [
      HashtagsToTweet.create!(),
      HashtagsToTweet.create!()
    ])
  end

  it "renders a list of hashtags_to_tweets" do
    render
  end
end
