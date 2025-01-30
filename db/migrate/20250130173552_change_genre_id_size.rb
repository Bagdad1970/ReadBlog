class ChangeGenreIdSize < ActiveRecord::Migration[8.0]
  def change
    change_column :genres, :id, :integer, limit: 1
  end
end
