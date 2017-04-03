OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do 
  provider :google_oauth2, '371687925787-5sa3tadie15jhadd3v7i1hjm2hgam0ct.apps.googleusercontent.com', '-qUEpR7wG-kwoORqVPQ6ZKsH', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end