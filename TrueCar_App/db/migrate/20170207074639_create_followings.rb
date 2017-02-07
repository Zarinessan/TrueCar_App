class CreateFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :Followings do |t|
      t.string :follower_id, null: false
      t.string :leader_id, null: false

      t.timestamps
    end
  end
end
