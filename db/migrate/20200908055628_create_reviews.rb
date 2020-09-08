class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :evaluation_id, null: false
      t.string :title,          null: false
      t.text :content,          null: false
      t.integer :dog_breed_id,  null: false
      t.integer :user_id
      t.integer :item_id

      t.timestamps
    end
  end
end
