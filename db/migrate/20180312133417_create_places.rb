class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.references :users, foreign_key: true
      t.string :address
      t.string :name
      t.integer :stage_capacity
      t.boolean :equipped
      t.text :photo
      t.text :description
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
