class AddEraToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :era, :text
  end
end
