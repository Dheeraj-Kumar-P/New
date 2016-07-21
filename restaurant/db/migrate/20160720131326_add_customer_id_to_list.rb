class AddCustomerIdToList < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :customer_id, :integer
  end
end
