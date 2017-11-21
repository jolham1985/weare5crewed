class Issue < ApplicationRecord
  belongs_to :apartments
  belongs_to :categories

  has_attachment :photo
end
