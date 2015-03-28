Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  twitter = Rails.application.secrets.twitter
  provider :twitter, twitter["key"], twitter["secret"]
end
