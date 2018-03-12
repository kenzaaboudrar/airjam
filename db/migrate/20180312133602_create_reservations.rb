class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.references :places, foreign_key: true
      t.references :users, foreign_key: true
      t.date :date
      t.integer :duration
      t.string :status, default: "pending"
      t.integer :price

      t.timestamps
    end
  end
end
