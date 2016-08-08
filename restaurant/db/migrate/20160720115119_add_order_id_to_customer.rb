class AddOrderIdToCustomer < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :order_id, :integer
  end
end
