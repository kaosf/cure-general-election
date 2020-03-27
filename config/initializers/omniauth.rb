Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_CONSUMER_KEY'], ENV['TWITTER_CONSUMER_SECRET']
end
# ref. https://github.com/arunagw/omniauth-twitter/blob/e3e61e0e7878aa97a11f3178b982591f8a14ad33/README.md
