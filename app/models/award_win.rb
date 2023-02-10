class AwardWin < ApplicationRecord
  # Associations
  belongs_to :winner, polymorphic: true
  belongs_to :award

  # validations
  validates :year_won, presence: true, length: { maximum: 4 }, uniqueness: { scope: %i(winner_id award_id) }
end
