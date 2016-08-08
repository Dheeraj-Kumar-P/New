class AddAuthorNameToAuthor < ActiveRecord::Migration[5.0]
  def change
    add_column :authors, :author_name, :string
  end
end
