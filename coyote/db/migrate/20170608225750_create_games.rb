class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :u1
      t.integer :u2
      t.integer :u3
      t.integer :u4
      t.integer :last_num
      t.integer :now_user

      t.timestamps null: false
    end
  end
end
