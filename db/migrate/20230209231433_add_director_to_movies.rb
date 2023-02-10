class AddDirectorToMovies < ActiveRecord::Migration[6.0]
  def change
    add_reference :movies, :director
  end
end
