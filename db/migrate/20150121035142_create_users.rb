class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.integer :level

      t.timestamps null: false
    end
    add_index :users, :username, unique: true
  end
end