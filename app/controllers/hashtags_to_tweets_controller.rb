class HashtagsToTweetsController < ApplicationController
  before_action :set_hashtags_to_tweet, only: %i[ show edit update destroy ]

  # GET /hashtags_to_tweets or /hashtags_to_tweets.json
  def index
    @hashtags_to_tweets = HashtagsToTweet.all
  end

  # GET /hashtags_to_tweets/1 or /hashtags_to_tweets/1.json
  def show
  end

  # GET /hashtags_to_tweets/new
  def new
    @hashtags_to_tweet = HashtagsToTweet.new
  end

  # GET /hashtags_to_tweets/1/edit
  def edit
  end

  # POST /hashtags_to_tweets or /hashtags_to_tweets.json
  def create
    @hashtags_to_tweet = HashtagsToTweet.new(hashtags_to_tweet_params)

    respond_to do |format|
      if @hashtags_to_tweet.save
        format.html { redirect_to hashtags_to_tweet_url(@hashtags_to_tweet), notice: "Hashtags to tweet was successfully created." }
        format.json { render :show, status: :created, location: @hashtags_to_tweet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hashtags_to_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hashtags_to_tweets/1 or /hashtags_to_tweets/1.json
  def update
    respond_to do |format|
      if @hashtags_to_tweet.update(hashtags_to_tweet_params)
        format.html { redirect_to hashtags_to_tweet_url(@hashtags_to_tweet), notice: "Hashtags to tweet was successfully updated." }
        format.json { render :show, status: :ok, location: @hashtags_to_tweet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hashtags_to_tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hashtags_to_tweets/1 or /hashtags_to_tweets/1.json
  def destroy
    @hashtags_to_tweet.destroy

    respond_to do |format|
      format.html { redirect_to hashtags_to_tweets_url, notice: "Hashtags to tweet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hashtags_to_tweet
      @hashtags_to_tweet = HashtagsToTweet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hashtags_to_tweet_params
      params.fetch(:hashtags_to_tweet, {})
    end
end
