class Actor < ApplicationRecord
  # Associations
  has_and_belongs_to_many :movies
  has_many :award_wins, as: :winner, dependent: :destroy

  # validations
  validates :name, presence: true, length: { maximum: 250 }
end
