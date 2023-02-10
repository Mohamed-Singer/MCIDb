class AddRatingIdToMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :rating, :string
    add_reference :movies, :rating
  end
end
