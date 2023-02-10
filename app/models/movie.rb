class Movie < ApplicationRecord
  # Associations
  has_and_belongs_to_many :actors
  belongs_to :director
  belongs_to :genre
  belongs_to :rating

  # validations
  validates :title, presence: true, length: { maximum: 250 }
  validates :release_date, :featured, presence: true
end
