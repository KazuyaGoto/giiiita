class AddImageeeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :imageee, :string
  end
end
