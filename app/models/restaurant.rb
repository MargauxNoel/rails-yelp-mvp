class Restaurant < ApplicationRecord
  has_many :reviews dependant: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["chinese", "japanese", "italian", "french", "belgian"] }
end
