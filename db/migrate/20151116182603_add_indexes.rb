class AddIndexes < ActiveRecord::Migration
  def change
     add_index :player_tryouts, [:player_id,:tryout_id]
     add_index :player_tryouts, [:tryout_id,:player_id]

     add_index :evaluations, [:coach_id,:player_tryout_id]
     add_index :evaluations, [:player_tryout_id,:coach_id]

     add_index :guardianships, [:player_id,:guardian_id]
     add_index :guardianships, [:guardian_id,:player_id]
  end
end
