class CreatePlayerTryouts < ActiveRecord::Migration
  def change
    create_table :player_tryouts do |t|
      t.string :player_id, index: true, foreign_key: true
      t.references :tryout, index: true, foreign_key: true
      t.integer :payment

      t.timestamps null: false
    end
  end
end
