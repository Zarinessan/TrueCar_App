class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :Posts do |t|
      t.string :url, null: false
      t.integer :owner_id, null: false
      t.string :caption, null: false

      t.timestamps
    end
  end
end
