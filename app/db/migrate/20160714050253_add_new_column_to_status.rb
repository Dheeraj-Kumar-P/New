class AddNewColumnToStatus < ActiveRecord::Migration[5.0]
  def change
    add_column :statuses, :phone, :string
    add_column :statuses, :, :integer
  end
end
