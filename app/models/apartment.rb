class Apartment < ApplicationRecord
  belongs_to :tenants
  belongs_to :landlords
end
