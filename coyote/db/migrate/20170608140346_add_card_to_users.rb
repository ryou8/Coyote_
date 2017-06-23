class AddCardToUsers < ActiveRecord::Migration
  def change
    add_column :users, :card, :integer
  end
end
