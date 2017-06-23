class AddPlayToUsers < ActiveRecord::Migration
  def change
    add_column :users, :play, :boolean
  end
end
