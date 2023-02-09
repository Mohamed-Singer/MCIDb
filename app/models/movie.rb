class Movie < ApplicationRecord
  enum genre: { action: 0, drama: 1, comedy: 2, horror: 3, thriller: 4, romance: 5 }
  enum rating: { 'G': 0, 'PG': 1, 'PG-13': 2, 'R': 3, 'NC-17': 4 }

  # Associations
  has_and_belongs_to_many :actors

  # validations
  validates :title, presence: true, length: { maximum: 250 }
  validates :genre, inclusion: { in: genres.keys }
  validates :rating, inclusion: { in: ratings.keys }
  validates :release_date, :featured, presence: true
end
