OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '514329408608772', '419b4ce9093a47d38c463a4b5d1f9bae'
end
