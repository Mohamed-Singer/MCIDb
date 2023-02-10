class CreateAwardWins < ActiveRecord::Migration[6.0]
  def change
    create_table :award_wins do |t|
      t.string :year_won, null: false
      t.references :winner, polymorphic: true
      t.references :award, foreign_key: true

      t.timestamps
    end
  end
end
