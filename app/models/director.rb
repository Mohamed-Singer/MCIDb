class Director < ApplicationRecord
  # Associations
  has_many :movies

  # validations
  validates :name, presence: true, length: { maximum: 250 }
end
