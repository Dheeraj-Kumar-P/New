class AddOrderIdToList < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :order_id, :integer
  end
end
