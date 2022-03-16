class Tree < ApplicationRecord
  belongs_to :user

  validates :price, presence: true
  validates :quantity_per_year, presence: true
  validates :address, presence: true
  validates :fruit, presence: true
  validates :description, presence: true
  validates :short_description, presence: true
  validates :name, presence: true
end
