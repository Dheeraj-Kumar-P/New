class AddBookNameToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :book_name, :string
  end
end
