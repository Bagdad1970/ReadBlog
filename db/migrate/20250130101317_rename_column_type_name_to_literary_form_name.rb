class RenameColumnTypeNameToLiteraryFormName < ActiveRecord::Migration[8.0]
  def change
    rename_column :literary_forms, :type_name, :form_name 
  end
end
