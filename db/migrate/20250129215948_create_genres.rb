class CreateGenres < ActiveRecord::Migration[8.0]
  def change
    create_table :genres do |t|
      t.string :genre, limit: 40, null: false

    end
    add_index :genres, :genre, unique: true
  end
end
