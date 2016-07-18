class AddBookpriceToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :bookprice, :integer
  end
end
