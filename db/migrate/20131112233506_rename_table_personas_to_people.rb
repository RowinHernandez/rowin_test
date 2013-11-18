class RenameTablePersonasToPeople < ActiveRecord::Migration
  def change
    rename_table :personas, :people
  end
end
