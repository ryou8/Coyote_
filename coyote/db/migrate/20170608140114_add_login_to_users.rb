class AddLoginToUsers < ActiveRecord::Migration
  
  def change
    add_column :users, :login, :boolean, default: false, null: false
  end
  
end
