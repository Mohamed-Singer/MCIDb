class Genre < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: { case_sensitive: true }, length: { maximum: 250 }
end
