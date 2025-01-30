class ChangeAuthorIdSize < ActiveRecord::Migration[8.0]
  def change
    change_column :authors, :id, :integer, limit: 4
  end
end
