class AddSandwichMakertoSandwichOrder < ActiveRecord::Migration
  def change
    add_column :sandwich_orders, :sandwich_maker, :string
  end
end
