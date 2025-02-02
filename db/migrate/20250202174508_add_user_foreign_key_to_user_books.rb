class AddUserForeignKeyToUserBooks < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :user_books, :users, column: :user_id, on_delete: :nullify
  end
end
