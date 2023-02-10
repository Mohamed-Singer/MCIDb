class Award < ApplicationRecord
  # Associations
  has_many :award_wins, dependent: :destroy

  # validations
  validates :name, presence: true, uniqueness: { case_sensitive: true }, length: { maximum: 250 }
end
