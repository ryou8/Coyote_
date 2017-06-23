class AddWaitToUsers < ActiveRecord::Migration
  def change
    add_column :users, :wait, :boolean, default: false, null: false
  end
end
