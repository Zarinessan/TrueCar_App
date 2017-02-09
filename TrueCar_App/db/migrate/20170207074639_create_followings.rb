class CreateFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :Followings do |t|
      t.belongs_to :user, null: false
      t.integer :leader_id, null: false

      t.timestamps
    end
  end
end
