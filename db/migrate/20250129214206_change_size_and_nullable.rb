class ChangeSizeAndNullable < ActiveRecord::Migration[8.0]
  def change
    change_column :authors, :surname, :string, limit: 40, null: false
    change_column :authors, :firstname, :string, limit: 40, null: false 
    change_column :authors, :lastname, :string, limit: 100
  end
end
