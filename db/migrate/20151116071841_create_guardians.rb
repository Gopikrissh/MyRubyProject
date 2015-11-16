class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.references :user, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone

      t.timestamps null: false
    end
  end
end
