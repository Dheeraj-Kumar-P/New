class AddTimeToCustomer < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :time, :time
  end
end
