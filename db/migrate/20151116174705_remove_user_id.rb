class RemoveUserId < ActiveRecord::Migration
  def change
	remove_column :users, :user_id, :string
	add_index :users, [:id,:type]
  end
end
