class CreateGuardianships < ActiveRecord::Migration
  def change
    create_table :guardianships do |t|
      t.references :guardian, index: true, foreign_key: true
      t.string :player_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
