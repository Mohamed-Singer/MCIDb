class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :user
      t.references :movie, null: false, foreign_key: true
      t.integer :rating, null: false
      t.text :content

      t.timestamps
    end
  end
end
