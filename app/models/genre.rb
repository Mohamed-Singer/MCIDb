class Genre < ApplicationRecord
  # Associations
  has_many :movies

  # validations
  validates :name, presence: true, uniqueness: { case_sensitive: true }, length: { maximum: 250 }
end
