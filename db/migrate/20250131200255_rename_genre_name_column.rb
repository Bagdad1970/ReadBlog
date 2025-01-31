class RenameGenreNameColumn < ActiveRecord::Migration[8.0]
  def change
    rename_column :genres, :genre_name, :name
  end
end
