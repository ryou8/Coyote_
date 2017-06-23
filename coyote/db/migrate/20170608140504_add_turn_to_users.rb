class AddTurnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :turn, :boolean, default: false, null: false
  end
end
