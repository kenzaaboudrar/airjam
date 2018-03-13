class ChangeColumnsInUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :avatar, :string
    change_column :users, :band_photo, :string
  end
end
