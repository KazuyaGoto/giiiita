class AddImageeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :imagee, :string
  end
end
