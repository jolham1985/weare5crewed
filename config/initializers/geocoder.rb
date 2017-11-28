Geocoder.configure(
  # [...]
  :units => :km,
  # [...]
)

Geocoder.configure(
  :lookup    => :google,
  :api_key   => ENV['GOOGLE_API_SERVER_KEY'],
  :use_https => true,
  # [...]
)
