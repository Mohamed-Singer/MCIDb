class Movie < ApplicationRecord
  # Associations
  has_and_belongs_to_many :actors
  belongs_to :director
  belongs_to :genre
  belongs_to :rating
  has_many :award_wins, as: :winner, dependent: :destroy
  has_many :reviews, dependent: :destroy

  # validations
  validates :title, presence: true, length: { maximum: 250 }
  validates :release_date, presence: true

  def self.search(args)
    return all unless args.present?

    genre = Genre.find_by(name: args[:genre])

    return where('lower(title) LIKE ?', "%#{args[:title]}%") unless genre.present?
    return where('genre_id = ?', genre&.id)                  unless args[:title].present?

    where('lower(title) like ? AND genre_id = ?', "%#{args[:title]}%", genre&.id)
  end
end
