class RemoveOrderIdFromCustomer < ActiveRecord::Migration[5.0]
  def change
    remove_column :customers, :order_id, :integer
  end
end
