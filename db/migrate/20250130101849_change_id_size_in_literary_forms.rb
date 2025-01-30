class ChangeIdSizeInLiteraryForms < ActiveRecord::Migration[8.0]
  def change
    change_column :literary_forms, :id, :integer, limit: 1
  end
end
