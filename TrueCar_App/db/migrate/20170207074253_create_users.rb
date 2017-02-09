class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :Users do |t|
      t.string :name, null: false # this is an account name
      t.string :password, null: false
      t.timestamps
    end
  end
end
