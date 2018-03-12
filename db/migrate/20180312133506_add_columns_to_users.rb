class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :avatar, :text
    add_column :users, :band_manager, :boolean
    add_column :users, :band_name, :string, default: false
    add_column :users, :number_of_musicians, :integer
    add_column :users, :music_type, :string
    add_column :users, :band_photo, :text
    add_column :users, :band_description, :text
  end
end
