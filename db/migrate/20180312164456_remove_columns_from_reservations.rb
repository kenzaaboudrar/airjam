class RemoveColumnsFromReservations < ActiveRecord::Migration[5.1]
  def change
    remove_column :reservations, :users_id
    remove_column :reservations, :places_id
  end
end
