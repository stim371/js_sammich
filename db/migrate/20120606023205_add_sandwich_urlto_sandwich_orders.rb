class AddSandwichUrltoSandwichOrders < ActiveRecord::Migration
  def change
    add_column :sandwich_orders, :sandwich_url, :string
  end
end
