class RemoveIndexes < ActiveRecord::Migration
  def change
	remove_index :player_tryouts, [:player_id]
	remove_index :player_tryouts, [:tryout_id]

	remove_index :evaluations, [:player_tryout_id]
	remove_index :evaluations, [:coach_id]

	remove_index :guardianships, [:guardian_id]
	remove_index :guardianships, [:player_id]
  end
end
