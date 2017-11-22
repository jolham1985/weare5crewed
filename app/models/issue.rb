class Issue < ApplicationRecord
  belongs_to :apartment
  belongs_to :category

  #belongs_to :user

  has_attachment :photo
end
