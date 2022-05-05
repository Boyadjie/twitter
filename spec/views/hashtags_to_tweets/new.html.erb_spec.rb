require 'rails_helper'

RSpec.describe "hashtags_to_tweets/new", type: :view do
  before(:each) do
    assign(:hashtags_to_tweet, HashtagsToTweet.new())
  end

  it "renders new hashtags_to_tweet form" do
    render

    assert_select "form[action=?][method=?]", hashtags_to_tweets_path, "post" do
    end
  end
end
