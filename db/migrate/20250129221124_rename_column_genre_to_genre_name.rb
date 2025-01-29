class RenameColumnGenreToGenreName < ActiveRecord::Migration[8.0]
  def change
    rename_column :genres, :genre, :genre_name
  end
end
