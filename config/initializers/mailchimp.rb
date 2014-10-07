if Rails.env.test?
  Gibbon::Export.api_key = "fake"
  Gibbon::Export.throws_exceptions = false
end
Gibbon::API.api_key = "YOUR_API_KEY"
Gibbon::API.timeout = 15
Gibbon::API.throws_exceptions = false
Rails.configuration.mailchimp = Gibbon::API.new 