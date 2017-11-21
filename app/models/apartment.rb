class Apartment < ApplicationRecord
  belongs_to :tenant, class_name: "User", optional: true
  belongs_to :landlord, class_name: "User"
end
