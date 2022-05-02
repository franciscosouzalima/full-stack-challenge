class AddUserIdToLends < ActiveRecord::Migration[6.1]
  def change
    add_column :lends, :user_id, :integer
    add_index :lends, :user_id
  end
end
