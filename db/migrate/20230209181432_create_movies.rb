class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string  :title, null: false
      t.integer :genre, null: false
      t.date    :release_date, null: false
      t.integer :rating, null: false
      t.boolean :featured, default: false, null: false

      t.timestamps
    end
  end
end
