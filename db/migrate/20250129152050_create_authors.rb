class CreateAuthors < ActiveRecord::Migration[8.0]
  def change
    create_table :authors do |t|
      t.string :surname
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
