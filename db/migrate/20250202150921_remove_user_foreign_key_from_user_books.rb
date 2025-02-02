class RemoveUserForeignKeyFromUserBooks < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key :user_books, column: :user_id
  end
end
