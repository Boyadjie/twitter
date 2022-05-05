require 'rails_helper'

RSpec.describe "hashtags_to_tweets/edit", type: :view do
  before(:each) do
    @hashtags_to_tweet = assign(:hashtags_to_tweet, HashtagsToTweet.create!())
  end

  it "renders the edit hashtags_to_tweet form" do
    render

    assert_select "form[action=?][method=?]", hashtags_to_tweet_path(@hashtags_to_tweet), "post" do
    end
  end
end
