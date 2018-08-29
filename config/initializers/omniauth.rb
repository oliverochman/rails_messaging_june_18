Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '160543367998835', '9918ab7bfae9649e0a3b713979deecb4'
  end