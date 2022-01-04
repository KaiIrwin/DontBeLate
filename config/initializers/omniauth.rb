Rails.application.config.middleware.use OmniAuth::Builder do
    provider :slack,
      Rails.application.credentials[:slack][:consumer_id],
      Rails.application.credentials[:slack][:consumer_secret],
      scope: 'channels:read,chat:write:bot'
  end