class MainController < ApplicationController
  def index
    if Current.user
      redirect_to tweets_path
    end
  end
end