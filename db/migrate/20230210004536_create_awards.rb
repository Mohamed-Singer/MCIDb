class CreateAwards < ActiveRecord::Migration[6.0]
  def change
    create_table :awards do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
