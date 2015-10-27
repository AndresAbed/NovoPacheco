
Devise.setup do |config|
  config.secret_key = '13aa7cf7a665ace2cda717c0cc9b106d471c3cc7f828134d2ecd27ce9b2af274790a146bd84bb8d980e91a1442ac8ed95fe0f968424fa918743fa91d27937761'
  config.mailer_sender = 'info@novopacheco.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 5..25
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
end
