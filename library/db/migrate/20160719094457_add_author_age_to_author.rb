class AddAuthorAgeToAuthor < ActiveRecord::Migration[5.0]
  def change
    add_column :authors, :author_age, :int
  end
end
