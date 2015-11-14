class CreateTryouts < ActiveRecord::Migration
  def change
    create_table :tryouts do |t|
      t.datetime :date
      t.money :fee
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps null: false
    end
  end
end
