class TweetsController < ApplicationController
  before_action :require_user_logged_in
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @tweets = Current.user.tweets
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Current.user.tweets.create(tweet_params)

    if @tweet.save
      redirect_to tweets_path, notice: "Your tweet was scheduled"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to tweets_path, notice: "Your tweet was updated"\
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_path, notice: "Tweet was not scheduled anymore"
  end

  private 

  def tweet_params
    params.required(:tweet).permit(:twitter_account_id, :body, :publish_at)
  end

  def set_tweet
    @tweet = Current.user.tweets.find(params[:id])
  end
end