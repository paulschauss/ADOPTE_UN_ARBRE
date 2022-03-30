class Tree < ApplicationRecord
  belongs_to :user
  has_many :adoptions, dependent: :destroy
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :fruit, inclusion: { in: ["Apple",
                                      "Apricot",
                                      "Cherry",
                                      "Chestnut",
                                      "Coconut",
                                      "Fig",
                                      "Grapefruit",
                                      "Hazel",
                                      "Mandarin",
                                      "Mango",
                                      "Mirabellier",
                                      "Mulberry",
                                      "Olivier",
                                      "Orange",
                                      "Pear",
                                      "Plum"]
}
end
