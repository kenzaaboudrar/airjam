class AddNewColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :band_name, :string
    add_column :users, :band_manager, :boolean, default: false
  end
end
