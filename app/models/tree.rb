class Tree < ApplicationRecord
  belongs_to :user

  #validates :price, presence: true
  validates :quantity_per_year, inclusion: { in: [1, 2, 3, 4, 5] }
  #validates :name, presence: true
end
