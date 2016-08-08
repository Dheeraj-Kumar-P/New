class AddPhoneToAccount < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :phone, :string
  end
end
