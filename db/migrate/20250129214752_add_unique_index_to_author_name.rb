class AddUniqueIndexToAuthorName < ActiveRecord::Migration[8.0]
  def change
    add_index :authors, [:surname, :firstname, :lastname], unique: true
  end
end
