class AddUserIdToSandwichOrders < ActiveRecord::Migration
  def change
    add_column :sandwich_orders, :user_id, :integer
  end
end
