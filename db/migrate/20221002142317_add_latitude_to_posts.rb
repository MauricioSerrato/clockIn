class AddLatitudeToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :latitude, :float
  end
end
