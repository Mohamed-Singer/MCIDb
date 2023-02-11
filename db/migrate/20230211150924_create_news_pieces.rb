class CreateNewsPieces < ActiveRecord::Migration[6.0]
  def change
    create_table :news_pieces do |t|
      t.references :admin_user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
