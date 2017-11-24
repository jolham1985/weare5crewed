class Question < ApplicationRecord
  has_many :answers
  has_closure_tree
end
