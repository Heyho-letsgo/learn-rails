if Rails.env.test?
  Gibbon::Export.api_key = "fake"
  Gibbon::Export.throws_exceptions = false
end
Gibbon::API.api_key = "440798c8b9bb96676411ae5279b0637e-us3"
Gibbon::API.timeout = 15
Gibbon::API.throws_exceptions = false
Rails.configuration.mailchimp = Gibbon::API.new 