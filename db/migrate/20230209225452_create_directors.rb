class CreateDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :directors do |t|
      t.string :name, null: false
      t.string :country_of_origin
      t.date :date_of_birth

      t.timestamps
    end
  end
end
