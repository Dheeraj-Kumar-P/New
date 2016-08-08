class AddPhoneToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :phone, :string
    add_column :accounts, :integer, :string
  end
end
