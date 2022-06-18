class RenameIsValidColumnToIsDeleted < ActiveRecord::Migration[6.1]
  def change
    rename_column :customers, :is_valid, :is_deleted
  end
end
