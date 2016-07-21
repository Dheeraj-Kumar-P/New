class AddOrderToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :order, :string
  end
end
