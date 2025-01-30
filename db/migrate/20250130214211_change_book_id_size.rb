class ChangeBookIdSize < ActiveRecord::Migration[8.0]
  def change
    change_column :books, :id, :integer, limit: 4
  end
end
