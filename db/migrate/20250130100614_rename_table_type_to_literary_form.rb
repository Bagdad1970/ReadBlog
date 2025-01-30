class RenameTableTypeToLiteraryForm < ActiveRecord::Migration[8.0]
  def change
    rename_table :types, :literary_forms
  end
end
