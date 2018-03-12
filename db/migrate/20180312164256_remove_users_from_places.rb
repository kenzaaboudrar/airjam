class RemoveUsersFromPlaces < ActiveRecord::Migration[5.1]
  def change
    remove_column :places, :users_id
  end
end
