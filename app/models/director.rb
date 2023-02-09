class Director < ApplicationRecord
  # validations
  validates :name, presence: true, length: { maximum: 250 }
end
