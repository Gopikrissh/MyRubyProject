class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :coach_id, index: true, foreign_key: true
      t.references :player_tryout, index: true, foreign_key: true
      t.integer :rating
      t.integer :speed
      t.integer :shooting
      t.integer :passing
      t.text :comment

      t.timestamps null: false
    end
  end
end
