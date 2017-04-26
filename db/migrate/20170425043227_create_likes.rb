class CreateLikes < ActiveRecord::Migration[5.0]
  def change
      create_table :likes do |t|
	  t.integer :post_id, null: false, index: true
	  t.integer :user_id, null: false, index: true

	  t.timestamps
      end
  end
end
