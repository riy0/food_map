class AddFoodNamePosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :food_name, :string
  end
end
