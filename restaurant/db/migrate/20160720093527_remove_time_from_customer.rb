class RemoveTimeFromCustomer < ActiveRecord::Migration[5.0]
  def change
    remove_column :customers, :time, :time
  end
end
