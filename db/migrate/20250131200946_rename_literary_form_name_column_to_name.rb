class RenameLiteraryFormNameColumnToName < ActiveRecord::Migration[8.0]
  def change
    rename_column :literary_forms, :form_name, :name
  end
end
