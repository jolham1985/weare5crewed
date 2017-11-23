class Issue < ApplicationRecord
  belongs_to :apartment
  belongs_to :category
  has_many :questions
  has_many :answers, through: :questions

  #belongs_to :user

  has_attachment :photo
end
