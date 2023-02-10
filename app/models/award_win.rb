class AwardWin < ApplicationRecord
  # Associations
  belongs_to :winner, polymorphic: true
  belongs_to :award

  # validations
  validates :year_won, presence: true, length: { is: 4 }, numericality: { only_integer: true },
                       uniqueness: { scope: %i(winner_id award_id) }
end
