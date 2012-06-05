class CreateSandwichOrders < ActiveRecord::Migration
  def change
    create_table :sandwich_orders do |t|
      t.string :ordering_person
      t.string :sandwich_type

      t.timestamps
    end
  end
end
