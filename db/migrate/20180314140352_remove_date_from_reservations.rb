class RemoveDateFromReservations < ActiveRecord::Migration[5.1]
  def change
    remove_column :reservations, :date
  end
end
