class Engineer < ApplicationRecord
   geocoded_by :address :name
  after_validation :geocode, if: :address_changed?
end
