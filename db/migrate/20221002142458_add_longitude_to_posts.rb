class AddLongitudeToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :longitude, :float
  end
end
