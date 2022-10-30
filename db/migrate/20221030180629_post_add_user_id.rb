# Post has one user

class PostAddUserId < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :user_id, :integer, null: false
  end
end
