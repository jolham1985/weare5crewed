class Issue < ApplicationRecord
  belongs_to :apartments
  belongs_to :categories
end
