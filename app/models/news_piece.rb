class NewsPiece < ApplicationRecord
  # Associations
  belongs_to :admin_user

  # Validations
  validates :title, presence: true, length: { maximum: 250 }
  validates :content, presence: true
end
