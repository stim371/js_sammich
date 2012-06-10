class SwitchSandwichUrlColumnName < ActiveRecord::Migration
  def change
    rename_column :sandwich_orders, :sandwich_url, :other_sandwich
  end
end
