class SetNullableForeignKeyToBook < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key :books, :genres
    remove_foreign_key :books, :literary_forms
    add_foreign_key :books, :genres, column: :genre_id, on_delete: :nullify
    add_foreign_key :books, :literary_forms, column: :literary_form_id, on_delete: :nullify
  end
end
