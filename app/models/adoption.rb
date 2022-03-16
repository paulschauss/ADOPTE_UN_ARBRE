class Adoption < ApplicationRecord
  belongs_to :tree
  belongs_to :user

  has_one :review
end
