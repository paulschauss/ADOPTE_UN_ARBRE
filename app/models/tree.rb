class Tree < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  #validates :price, presence: true
  #validates :quantity_per_year, inclusion: { in: [1, 2, 3, 4, 5] }
  #validates :name, presence: true
end
