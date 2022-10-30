class ChangeUserNameColumnName < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :users, :user_name, :username
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
