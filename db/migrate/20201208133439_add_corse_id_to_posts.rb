class AddCorseIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :corse_id, :integer
  end
end
