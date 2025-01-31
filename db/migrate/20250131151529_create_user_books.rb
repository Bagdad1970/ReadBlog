class CreateUserBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :user_books do |t|
      t.integer :mark, limit: 1, null: false
      t.text :review, null: true
      t.integer :book_id, null: true
      t.bigint :user_id, null: true

      t.timestamps
    end

    add_foreign_key :user_books, :books, column: :book_id, on_delete: :cascade
    add_foreign_key :user_books, :users, column: :user_id, on_delete: :nullify
  end
end
