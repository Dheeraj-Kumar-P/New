class AddBookQtyToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :book_qty, :integer
  end
end
