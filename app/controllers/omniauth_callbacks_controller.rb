class OmniauthCallbacksController < ApplicationController
  def twitter
    twitter_account = Current.user.twitter_accounts.where(username: auth.info.nickname).first_or_initialize
    twitter_account.update(
      name: auth.info.name,
      image: auth.info.image,
      token: auth.credentials.token,
      secret: auth.credentials.secret,
    )
    if twitter_account.errors
      twitter_account.errors.full_messages.each do |message|
        flash[:alert] = message
        redirect_to twitter_accounts_path
      end
    else
      redirect_to twitter_accounts_path, notice: "Twitter account #{twitter_account.username} connected"
    end
  end

  def auth
    request.env['omniauth.auth']
  end
end