OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '888203600682-lefs8r9re85qmjmamv2hql2tb0obssef.apps.googleusercontent.com', 'abSlA6I4KBpqlB8-HtNiEWAA', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end