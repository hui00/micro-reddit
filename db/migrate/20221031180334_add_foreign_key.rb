# add_reference and belongs_to the same  -> create e.g. user_id
# foreign_key is optional
class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :posts, :users
  end
end
