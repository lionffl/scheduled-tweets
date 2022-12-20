Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Rails.application.credentials.dig(:twitter, :consumer_key), Rails.application.credentials.dig(:twitter, :consumer_secret)
end