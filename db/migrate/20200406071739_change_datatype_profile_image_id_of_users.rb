class ChangeDatatypeProfileImageIdOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :profile_image_id, :string
  end
end
