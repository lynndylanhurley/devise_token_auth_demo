Devise.setup do |config|
  config.secret_key = 'bcc80ea13e0d73c9cdfb423b93f703123287a3a60ebeb9721cdbc402d28cea1fa66288ac1cc2bc5033e544208f053e95e896b7500cfe9f24906e9ef5f8780e20'
  config.authentication_keys = [:email, :nickname]
end
