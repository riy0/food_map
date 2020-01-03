class AddPhotoToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :photo, :string
    remove_column :users, :image_name, :string
  end
end
