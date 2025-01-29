class RemoveTimestampsFromAuthors < ActiveRecord::Migration[8.0]
  def change
    remove_column :authors, :created_at, :datetime
    remove_column :authors, :updated_at, :datetime
  end
end
