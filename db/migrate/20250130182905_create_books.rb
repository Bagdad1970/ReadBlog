class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.text :title
      t.integer :author_id, null: false
      t.integer :genre_id, null: true, limit: 1
      t.integer :literary_form_id, null: true, limit: 1

      t.timestamps
    end

    add_foreign_key :books, :authors, column: :author_id
    add_foreign_key :books, :genres, column: :genre_id
    add_foreign_key :books, :literary_forms, column: :literary_form_id
  end
end
