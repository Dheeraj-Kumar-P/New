class AddAuthorDescriptionToAuthor < ActiveRecord::Migration[5.0]
  def change
    add_column :authors, :author_description, :string
  end
end
