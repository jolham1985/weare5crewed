class Client < ApplicationRecord
  require 'yelp'


def clients
client = Yelp::Client.new({ consumer_key: "PXxIFz_uTdbeuPyW07RbCA",
                            consumer_secret:
"Dksu4z3Xe1fsW299I0WUXbShQ3NiY4F3kB6VrXJMPdJJ7ajlVAs46IfWeLZWTX3W",
                          })
end
