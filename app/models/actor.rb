class Actor < ApplicationRecord
  # Associations
  has_and_belongs_to_many :movies

  # validations
  validates :name, presence: true, length: { maximum: 250 }
end
