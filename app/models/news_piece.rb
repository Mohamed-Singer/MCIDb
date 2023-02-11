class NewsPiece < ApplicationRecord
  # Associations
  belongs_to :admin_user

  # Validations
  validates :title, presence: true, length: { maximum: 250 }
  validates :content, presence: true

  def self.search(search)
    return all unless search.present?

    where('lower(title) LIKE :search OR lower(content) LIKE :search', search: "%#{search}%")
  end
end
