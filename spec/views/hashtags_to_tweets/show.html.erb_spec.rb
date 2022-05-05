require 'rails_helper'

RSpec.describe "hashtags_to_tweets/show", type: :view do
  before(:each) do
    @hashtags_to_tweet = assign(:hashtags_to_tweet, HashtagsToTweet.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
