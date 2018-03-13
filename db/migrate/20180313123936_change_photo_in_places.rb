class ChangePhotoInPlaces < ActiveRecord::Migration[5.1]
  def change
    change_column :places, :photo, :string
  end
end
