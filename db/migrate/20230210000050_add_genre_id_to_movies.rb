class AddGenreIdToMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :genre, :string
    add_reference :movies, :genre
  end
end
