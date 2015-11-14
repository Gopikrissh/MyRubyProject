class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :player_id
      t.integer :coach_id
      t.integer :guardian_id
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.integer :phone
      t.integer :gender
      t.datetime :dob
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :email
      t.string :phone
      t.text :experience

      t.timestamps null: false
    end
  end
end
