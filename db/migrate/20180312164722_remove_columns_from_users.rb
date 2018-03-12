class RemoveColumnsFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :band_name
    remove_column :users, :band_manager
  end
end
