class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.datetime :comment_time
      t.text :content
      t.integer :post_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
